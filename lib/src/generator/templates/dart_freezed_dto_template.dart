import 'package:collection/collection.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/exception/generator_exception.dart';
import 'package:openapi_retrofit_generator/src/generator/generator/union_family_resolver.dart';
import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';
import 'package:openapi_retrofit_generator/src/utils/type_utils.dart';

/// Provides template for generating dart DTO using freezed
String dartFreezedDtoTemplate(
  UniversalComponentClass dataClass, {
  required bool includeIfNull,
  required String? customMetadataImportPath,
  bool generateValidator = false,
  String? fallbackUnion,
  CustomMetadataConfig customMetadata = const CustomMetadataConfig(),
  bool generateMergeMethod = true,
  Map<String, String>? classFileOverrides,
}) {
  final className = dataClass.name.toPascal;
  final discriminator = dataClass.discriminator;
  final isUndiscriminatedUnion =
      dataClass.undiscriminatedUnionVariants?.isNotEmpty ?? false;
  final isUnion = discriminator != null || isUndiscriminatedUnion;
  final base64Types = _getBase64FieldTypes(
    dataClass.parameters,
    discriminator: dataClass.discriminator,
  );
  final needsBase64Converter =
      base64Types.hasScalar ||
      base64Types.hasNullable ||
      base64Types.hasList ||
      base64Types.hasListNullable;
  final base64ConverterClass = needsBase64Converter
      ? '\n${_base64ConverterClass(hasScalar: base64Types.hasScalar, hasNullable: base64Types.hasNullable, hasList: base64Types.hasList, hasListNullable: base64Types.hasListNullable)}'
      : '';
  final dartCoreImports = _getDartCoreImports(
    dataClass.parameters,
    discriminator: dataClass.discriminator,
  );

  // For undiscriminated unions, use simple JSON wrapper pattern (no Freezed)
  if (isUndiscriminatedUnion) {
    final variantClasses = _generateUndiscriminatedVariantClasses(
      className,
      dataClass.undiscriminatedUnionVariants!,
      includeIfNull,
    );

    return '''
import 'package:json_annotation/json_annotation.dart';
$dartCoreImports${dartImports(imports: _filterUnionImportsForFreezed(dataClass), fileOverrides: classFileOverrides)}
part '${dataClass.name.toSnake}.g.dart';

${descriptionComment(dataClass.description)}class $className {
${_undiscriminatedUnionBody(className, dataClass.undiscriminatedUnionVariants!)}
}
$variantClasses$base64ConverterClass''';
  }

  // Check if we need to import custom metadata annotations
  // For discriminated unions, also check variant parameters
  // Every parameter whose annotations land in THIS file — the class's own plus,
  // for a discriminated union, each variant's. The `show` list is computed from
  // exactly this set, so it can never name a symbol the file does not use.
  final annotatedParameters = <UniversalType>{
    ...dataClass.parameters,
    if (discriminator != null)
      for (final variantParams in discriminator.refProperties.values)
        ...variantParams,
  };

  final customMetadataImport =
      customMetadata.isActive &&
          annotatedParameters.any((p) => p.customMetadata.isNotEmpty)
      ? _customMetadataImportDirective(
          customMetadata,
          customMetadataImportPath,
          annotatedParameters,
        )
      : '';

  // Generate merge method as an extension for regular classes (not unions) when enabled.
  // Must be an extension (not a class method) because Freezed 3.x generates the
  // concrete implementation class (_ClassName) using "implements" rather than "extends",
  // so any method added to the abstract class body would need to be re-implemented
  // in the generated class, which we cannot modify.
  // Partial-update request types (`update_*_request`, excluding full-replace
  // `*_full` bodies) get presence-tracking Optional<T> on their value fields —
  // the client mass-assignment boundary. See
  // docs/plans/client-write-path-enforcement.md G1.1.
  final wrapOptional = !isUnion && _isPartialUpdateRequest(dataClass);
  final optionalImport = wrapOptional
      ? _optionalImportDirective(customMetadataImportPath)
      : '';

  final mergeExtension = (generateMergeMethod && !isUnion)
      ? _generateMergeExtension(
          className,
          dataClass.parameters,
          wrapOptional: wrapOptional,
        )
      : '';
  final patchExtension = wrapOptional
      ? _generateToPatchExtension(className, dataClass.parameters)
      : '';

  return '''
import 'package:freezed_annotation/freezed_annotation.dart';
$dartCoreImports$customMetadataImport$optionalImport${dartImports(imports: _filterUnionImportsForFreezed(dataClass), fileOverrides: classFileOverrides)}
part '${dataClass.name.toSnake}.freezed.dart';
part '${dataClass.name.toSnake}.g.dart';

${descriptionComment(dataClass.description)}@Freezed(${[if (discriminator != null) "unionKey: '${discriminator.propertyName}'", if (discriminator != null && fallbackUnion != null && fallbackUnion.isNotEmpty) "fallbackUnion: '$fallbackUnion'"].join(', ')})
${_classModifier(isUnion: isUnion)}class $className with _\$$className {
${_factories(dataClass, className, includeIfNull, fallbackUnion, customMetadata, isUnion: isUnion, wrapOptional: wrapOptional)}
${_unionDefaultConstants(dataClass, className)}
${_jsonFactories(className, dataClass.undiscriminatedUnionVariants, isUnion: isUnion, presenceFields: wrapOptional ? dataClass.parameters : null)}
${generateValidator ? dataClass.parameters.map(_validationString).nonNulls.join() : ''}${_fieldMetadataConsts(dataClass)}}
${generateValidator ? _validateMethod(className, dataClass.parameters) : ''}$mergeExtension$patchExtension$base64ConverterClass''';
}

String _classModifier({required bool isUnion}) {
  return isUnion ? 'sealed ' : 'abstract ';
}

/// One `static const Set<String> [name]` of JSON wire keys, documented by [doc].
///
/// Keys come from [_wireKey] — `jsonKey` when the field was renamed on the wire,
/// else the field name — so they are what the stored document and the patch
/// actually use, escaped for the single-quoted literal emitted here (a raw `$`
/// would otherwise interpolate). Sorted, so output never depends on parameter
/// iteration order.
String _wireKeySetConst(
  Iterable<UniversalType> fields, {
  required String name,
  required String doc,
}) {
  final keys = fields.map(_wireKey).toList()..sort();
  final quoted = keys.map((key) => "'$key'").join(', ');
  return '\n  /// $doc\n'
      '  static const Set<String> $name = {$quoted};\n';
}

/// A `static const Set<String> immutableFields` naming the JSON keys of this
/// model's write-once (`@dbImmutable`) fields. Immutability is a property of the
/// model (it sits with the `@dbImmutable` annotations), and Dart has no runtime
/// annotation reflection, so the persistence layer reads this constant to build
/// its write guard without hand-listing anything.
///
/// Emitted only for a model that passes the completeness check in
/// [_fieldMetadataConsts], and then INCLUDING when empty — "this model has no
/// write-once field" is itself a fact, and an absent const would force consumers
/// to distinguish it from "this generator predates the feature".
String _immutableFieldsConst(UniversalComponentClass dataClass) =>
    _wireKeySetConst(
      dataClass.parameters.where((p) => p.customMetadata['immutable'] == true),
      name: 'immutableFields',
      doc: "JSON keys of this model's write-once (`@dbImmutable`) fields.",
    );

/// The custom-metadata key the field-provenance taxonomy arrives under.
///
/// Must match the `name:` of the consumer's `value_source` custom_metadata
/// field: the parser keys its map by CONFIG name, not by schema key, so a
/// rename on either side silently empties these consts rather than failing.
const _valueSourceKey = 'value_source';

/// The "no information" member of the taxonomy. The backend never emits it (its
/// codegen hard-errors on an omitted value_source), but it is a legal enum
/// value, so it is recognized-but-uncategorized: the consts still emit and the
/// field simply belongs to no category. Contrast an UNRECOGNIZED string, which
/// throws.
const _valueSourceUnspecified = 'VALUE_SOURCE_UNSPECIFIED';

/// The `value_source` wire values, mapped to the const each one collects into.
///
/// Four DISJOINT categories, in the order the proto declares them — which is
/// also the emission order, so output never depends on parameter iteration.
/// The orthogonal `immutable` flag cross-cuts all four and is NOT a fifth
/// category; it has its own const. Adding a category appends here.
const _valueSourceConstNames = <String, String>{
  'VALUE_SOURCE_CLIENT_PROVIDED': 'clientProvidedFields',
  'VALUE_SOURCE_SYSTEM_GENERATED': 'systemGeneratedFields',
  'VALUE_SOURCE_AUTH': 'authFields',
  'VALUE_SOURCE_APPLICATION_MANAGED': 'applicationManagedFields',
};

/// The categories whose union is `writableFields` — everything a trusted or
/// admin writer may set. Excludes SYSTEM_GENERATED and AUTH, which no writer
/// supplies. Mirrors the backend's `get_writable_fields`.
const _writableValueSources = <String>[
  'VALUE_SOURCE_CLIENT_PROVIDED',
  'VALUE_SOURCE_APPLICATION_MANAGED',
];

/// Buckets this model's parameters by `value_source`, or null when the model
/// does not carry a COMPLETE partition — no parameters at all (e.g. a
/// sealed-union parent, which partitions nothing), or any parameter missing a
/// `value_source`.
///
/// Null is the signal that no field-metadata const may be emitted at all. See
/// [_fieldMetadataConsts] for why that gates `immutableFields` too.
Map<String, List<UniversalType>>? _valueSourcePartition(
  UniversalComponentClass dataClass,
) {
  if (dataClass.parameters.isEmpty) return null;

  final byCategory = <String, List<UniversalType>>{
    for (final category in _valueSourceConstNames.keys) category: [],
  };

  for (final parameter in dataClass.parameters) {
    final value = parameter.customMetadata[_valueSourceKey];
    // One unannotated field makes the whole partition untrustworthy.
    if (value == null) return null;
    if (value == _valueSourceUnspecified) continue;
    final bucket = byCategory[value];
    if (bucket == null) {
      throw GeneratorException(
        "Unrecognized $_valueSourceKey '$value' on "
        "'${dataClass.name}.${parameter.name}'. Add it to "
        '_valueSourceConstNames: dropping it would leave the emitted '
        'value_source consts claiming a partition that no longer covers '
        'every annotated field of this model.',
      );
    }
    bucket.add(parameter);
  }

  return byCategory;
}

/// One `static const Set<String>` per category of the backend's field-provenance
/// taxonomy, plus the derived `writableFields`.
///
/// Empty categories ARE emitted, so consumers get a complete partition and never
/// need a null check.
String _valueSourceFieldConsts(Map<String, List<UniversalType>> byCategory) {
  final consts = _valueSourceConstNames.entries
      .map(
        (entry) => _wireKeySetConst(
          byCategory[entry.key]!,
          name: entry.value,
          doc: "JSON keys of this model's `${entry.key}` fields.",
        ),
      )
      .join();

  final writable = _wireKeySetConst(
    [for (final source in _writableValueSources) ...byCategory[source]!],
    name: 'writableFields',
    doc:
        'JSON keys a trusted or admin writer may set: `clientProvidedFields` ∪ '
        '`applicationManagedFields`. Derived, so NOT a value_source category '
        'and NOT disjoint from them; a plain client may still set only '
        '`clientProvidedFields`.',
  );

  return '$consts$writable';
}

/// The field-metadata consts a model class carries at the end of its body: the
/// write-once flag set, then the value_source partition.
///
/// ONE rule gates both: emit nothing unless EVERY parameter declares a
/// `value_source`. The partition obviously needs that. `immutableFields` needs
/// it too, which is less obvious and was originally got wrong: `immutable` and
/// `value_source` travel together in the same `json_schema_extra`, so whatever
/// drops one drops the other. A hydrated model that redeclares an inherited
/// field to widen its type loses BOTH, and its `immutableFields` then
/// under-reports — silently, while looking authoritative. That is strictly worse
/// than no const: a caller reaching for it gets a write guard missing real
/// fields. Completeness of the value_source annotation is therefore the proxy
/// for "this model's field metadata survived intact", and it gates everything.
///
/// The rule is self-maintaining: complete a model's annotations and every const
/// appears, with no change here.
///
/// A single seam because there are TWO emission sites — the standalone class
/// body and the family-file leaf — which must stay identical. They are identical
/// today only by hand, which is how `immutableFields` reached both while nothing
/// else did.
String _fieldMetadataConsts(UniversalComponentClass dataClass) {
  final byCategory = _valueSourcePartition(dataClass);
  if (byCategory == null) return '';
  return '${_immutableFieldsConst(dataClass)}'
      '${_valueSourceFieldConsts(byCategory)}';
}

/// Provides template for generating one sealed-ref-union family file.
///
/// Emits, into a single library (Dart requires all direct subtypes of a
/// `sealed` class in the same library):
/// - a plain (non-Freezed) `sealed class` per union with redirecting factory
///   constructors to the leaf classes, `static const` variant constants, a
///   hand-rolled `fromJson` switch on the discriminator, abstract getters for
///   the fields shared by every variant, and an abstract `toJson`
/// - a `final class <Union>Unknown` fallback per union carrying the raw JSON
///   (returned by `fromJson` for unrecognized discriminator values)
/// - every leaf class of the family — regular Freezed emission plus an
///   `implements` clause for the union(s) that reference it
/// - `copyWith` / `map`-style compatibility extensions per union
String dartFreezedUnionFamilyTemplate(
  UnionFamily family, {
  required bool includeIfNull,
  required String? customMetadataImportPath,
  required Map<String, String> classFileOverrides,
  required bool unknownEnumValue,
  Map<String, String> enumWireTypes = const {},
  bool generateValidator = false,
  CustomMetadataConfig customMetadata = const CustomMetadataConfig(),
  bool generateMergeMethod = true,
}) {
  final allMemberParameters = <UniversalType>{
    for (final union in family.unions) ...union.parameters,
    for (final leaf in family.leaves) ...leaf.parameters,
  };

  final base64Types = _getBase64FieldTypes(allMemberParameters);
  final needsBase64Converter =
      base64Types.hasScalar ||
      base64Types.hasNullable ||
      base64Types.hasList ||
      base64Types.hasListNullable;
  final base64ConverterClass = needsBase64Converter
      ? '\n${_base64ConverterClass(hasScalar: base64Types.hasScalar, hasNullable: base64Types.hasNullable, hasList: base64Types.hasList, hasListNullable: base64Types.hasListNullable)}'
      : '';
  final dartCoreImports = _getDartCoreImports(allMemberParameters);

  final needsCustomMetadataImport =
      customMetadata.isActive &&
      allMemberParameters.any((p) => p.customMetadata.isNotEmpty);
  final customMetadataImport = needsCustomMetadataImport
      ? _customMetadataImportDirective(
          customMetadata,
          customMetadataImportPath,
          allMemberParameters,
        )
      : '';

  // Any request leaf now carries `Optional<T>` fields, so the family file needs the
  // same import the single-class path adds.
  final familyOptionalImport = family.leaves.any(_isPartialUpdateRequest)
      ? _optionalImportDirective(customMetadataImportPath)
      : '';

  final modelImports = _familyModelImports(family, classFileOverrides);

  final commonFieldsByUnion = <String, List<UniversalType>>{
    for (final union in family.unions) union.name: _commonUnionFields(union),
  };

  final sealedClasses = family.unions
      .map(
        (union) => _sealedUnionClass(union, commonFieldsByUnion[union.name]!),
      )
      .join('\n');
  final unknownClasses = family.unions
      .map(
        (union) => _unknownVariantClass(
          union,
          commonFieldsByUnion[union.name]!,
          unknownEnumValue: unknownEnumValue,
          enumWireTypes: enumWireTypes,
        ),
      )
      .join('\n');
  final leafClasses = family.leaves
      .map(
        (leaf) => _leafClassChunk(
          leaf,
          implementsClause: _implementsClause(leaf, family),
          includeIfNull: includeIfNull,
          customMetadata: customMetadata,
          generateMergeMethod: generateMergeMethod,
          generateValidator: generateValidator,
        ),
      )
      .join('\n');
  // A leaf folded into a family file still needs its `toPatch()`: the single-class
  // template emits this extension, and before this the family path did not — so a
  // request type silently lost `toPatch()` merely by joining a discriminated union.
  final leafPatchExtensions = family.leaves
      .where(_isPartialUpdateRequest)
      .map(
        (leaf) =>
            _generateToPatchExtension(leaf.name.toPascal, leaf.parameters),
      )
      .join();

  // And the union itself dispatches to whichever leaf it holds, so a caller can
  // patch through the union without switching on the variant.
  //
  // An EXTENSION, not an abstract member on the sealed class: `toPatch()` is an
  // extension on every leaf, and a Dart extension can never satisfy an abstract
  // interface member — declaring it on the supertype makes every freezed impl class
  // fail with `non_abstract_class_inherits_abstract_member`.
  final unionPatchExtensions = family.unions
      .where(_isPartialUpdateRequest)
      .map((union) => _unionToPatchExtension(union))
      .join();

  // Same reasoning as the factories/getters: `copyWith`/`map` over a patch union
  // assume plain data-model field types, and you would copyWith the LEAF anyway.
  final compatExtensions = family.unions
      .where((union) => !_isPartialUpdateRequest(union))
      .map(
        (union) =>
            _unionCompatExtensions(union, commonFieldsByUnion[union.name]!),
      )
      .join('\n');

  return '''
import 'package:freezed_annotation/freezed_annotation.dart';
$dartCoreImports$customMetadataImport$familyOptionalImport$modelImports
part '${family.fileBaseName}.freezed.dart';
part '${family.fileBaseName}.g.dart';

$sealedClasses
$unknownClasses
$leafClasses
$compatExtensions$leafPatchExtensions$unionPatchExtensions$base64ConverterClass''';
}

/// The `import` directives a family file needs: every member's imports minus
/// the family's own classes, remapped through [classFileOverrides] so imports
/// of other families' members point at their family file.
String _familyModelImports(
  UnionFamily family,
  Map<String, String> classFileOverrides,
) {
  final importNames = <String>{
    for (final union in family.unions) ...union.imports,
    for (final leaf in family.leaves) ...leaf.imports,
  };
  // Anything that resolves into this very file (members of this family, and
  // the primary itself) must not be imported.
  final external = importNames.where((name) {
    final base = name.toSnake;
    return (classFileOverrides[base] ?? base) != family.fileBaseName;
  }).toList()..sort();
  return dartImports(
    imports: external.toSet(),
    fileOverrides: classFileOverrides,
  );
}

/// The fields shared by every variant of [union]: same name, same wire key,
/// same rendered type, and same default — excluding the discriminator itself
/// (consumers may expose a typed discriminator getter as an extension, which
/// an abstract `String` getter would shadow).
List<UniversalType> _commonUnionFields(UniversalComponentClass union) {
  final discriminator = union.discriminator!;
  final refs = discriminator.discriminatorValueToRefMapping.values.toList();
  final firstLeafParameters = discriminator.refProperties[refs.first]!;

  final common = <UniversalType>[];
  for (final param in firstLeafParameters.sorted((a, b) => a.compareTo(b))) {
    final name = param.name;
    if (name == null) continue;
    if ((param.jsonKey ?? name) == discriminator.propertyName) continue;
    final renderedType = _freezedSuitableType(param);
    final isCommon = refs.every((ref) {
      final parameters = discriminator.refProperties[ref]!;
      return parameters.any(
        (p) =>
            p.name == name &&
            (p.jsonKey ?? p.name) == (param.jsonKey ?? name) &&
            p.defaultValue == param.defaultValue &&
            _freezedSuitableType(p) == renderedType,
      );
    });
    if (isCommon) common.add(param);
  }
  return common;
}

/// The `implements` clause for a leaf: every union of the family that lists
/// the leaf in its discriminator mapping.
String _implementsClause(UniversalComponentClass leaf, UnionFamily family) {
  final unionNames = family.unions
      .where(
        (union) => union.discriminator!.discriminatorValueToRefMapping.values
            .contains(leaf.name),
      )
      .map((union) => union.name.toPascal)
      .toList();
  return ' implements ${unionNames.join(', ')}';
}

/// One leaf class emitted inside a family file: today's regular Freezed
/// emission plus [implementsClause] (no per-file header/imports/parts).
String _leafClassChunk(
  UniversalComponentClass dataClass, {
  required String implementsClause,
  required bool includeIfNull,
  required CustomMetadataConfig customMetadata,
  required bool generateMergeMethod,
  required bool generateValidator,
}) {
  final className = dataClass.name.toPascal;
  final mergeExtension = generateMergeMethod
      ? _generateMergeExtension(className, dataClass.parameters)
      : '';
  return '''
${descriptionComment(dataClass.description)}@Freezed()
abstract class $className with _\$$className$implementsClause {
${_factories(dataClass, className, includeIfNull, null, customMetadata, isUnion: false, wrapOptional: _isPartialUpdateRequest(dataClass))}
${_jsonFactories(className, null, isUnion: false, presenceFields: _isPartialUpdateRequest(dataClass) ? dataClass.parameters : null)}
${generateValidator ? dataClass.parameters.map(_validationString).nonNulls.join() : ''}${_fieldMetadataConsts(dataClass)}}
${generateValidator ? _validateMethod(className, dataClass.parameters) : ''}$mergeExtension''';
}

/// The plain `sealed class` for one union: redirecting factories, constants,
/// `fromJson` dispatch, common-field getters and abstract `toJson`.
String _sealedUnionClass(
  UniversalComponentClass union,
  List<UniversalType> commonFields,
) {
  final className = union.name.toPascal;
  final discriminator = union.discriminator!;
  final discriminatorPropertyName = discriminator.propertyName;

  // See the note below _sealedUnionClass's return: a patch-request union is a
  // DISPATCH type, so it emits no factories, constants, or shared getters.
  final isPatchUnion = _isPartialUpdateRequest(union);

  // A union OVER update-request leaves is itself an update request: every leaf
  // already emits `toPatch()`, so declaring it here is what lets a caller hold
  // the union and patch through it without switching on the variant. Without
  // this the union is useless as a DAO seam parameter — which is why consumers
  // were hand-writing sealed wrappers over the generated leaves.

  final factories = <String>[];
  final constants = <String>[];
  final fromJsonArms = <String>[];
  for (final entry in discriminator.discriminatorValueToRefMapping.entries) {
    final discriminatorValue = entry.key;
    final leafClassName = entry.value.toPascal;
    final factoryName = discriminatorValue.toCamel;
    final allParameters = discriminator.refProperties[entry.value]!;
    // The discriminator is omitted from the redirect signature so the leaf's
    // default supplies it — unless the leaf *requires* it, in which case the
    // redirect must keep the parameter to stay valid.
    final factoryParameters = allParameters
        .where(
          (param) =>
              (param.jsonKey ?? param.name) != discriminatorPropertyName ||
              (param.isRequired && param.defaultValue == null),
        )
        .toSet();

    factories.add('''
  /// The `$discriminatorValue` variant; returns a [$leafClassName] instance.
  const factory $className.$factoryName(${factoryParameters.isNotEmpty ? '{' : ''}${_redirectParametersToString(factoryParameters)}${factoryParameters.isNotEmpty ? '\n  }' : ''}) = $leafClassName;
''');

    final hasRequiredParameter = factoryParameters.any(
      (param) => param.isRequired && param.defaultValue == null,
    );
    if (!hasRequiredParameter) {
      constants.add(
        '  static const type${discriminatorValue.toPascal} = $className.$factoryName();',
      );
    }

    fromJsonArms.add(
      "        '${protectJsonKey(discriminatorValue)}' => $leafClassName.fromJson(json),",
    );
  }
  fromJsonArms.add(
    '        _ => ${className}Unknown(Map<String, dynamic>.from(json)),',
  );

  final constantsBlock = (constants.isEmpty || isPatchUnion)
      ? ''
      : '\n${constants.join('\n')}\n';

  final commonGetters = commonFields
      .map((param) {
        final description = _showableDescription(param);
        return '${descriptionComment(description, tab: '  ')}  ${_freezedSuitableType(param)} get ${param.name};';
      })
      .join('\n');
  // A union over update-request leaves is a DISPATCH type: you build a patch by
  // constructing the leaf, and you consume it by calling `toPatch()`. It therefore
  // emits neither redirecting factories nor shared getters —
  //
  //   * a redirecting factory must restate the leaf's constructor signature exactly,
  //     and a request leaf's fields are `Optional<T>?` while a data model's are plain;
  //   * a shared getter would have to declare `Optional<T>? get id`, which is not a
  //     useful thing to read off a patch.
  //
  // Emitting either is what made request unions and `Optional` irreconcilable.
  final factoriesBlock = isPatchUnion ? '' : factories.join('\n');

  final commonGettersBlock = commonFields.isEmpty
      ? ''
      : '''

  // Fields shared by every variant.
$commonGetters
''';

  final gettersBlock = isPatchUnion ? '' : commonGettersBlock;

  return '''
${descriptionComment(union.description)}sealed class $className {
$factoriesBlock$constantsBlock
  /// Deserializes by switching on `$discriminatorPropertyName`; unrecognized values yield a
  /// [${className}Unknown] carrying the raw JSON instead of throwing.
  factory $className.fromJson(Map<String, dynamic> json) =>
      switch (json['${protectJsonKey(discriminatorPropertyName)}']) {
${fromJsonArms.join('\n')}
      };
$gettersBlock
  Map<String, dynamic> toJson();
}
''';
}

/// Redirecting-factory parameters: same names, types and `required`ness as the
/// leaf constructor, but no `@Default`/`@JsonKey` annotations — a redirecting
/// factory cannot declare defaults; the leaf side owns them.
String _redirectParametersToString(Set<UniversalType> parameters) {
  final sortedByRequired = parameters.sorted((a, b) => a.compareTo(b));
  return sortedByRequired.map((e) {
    final description = _showableDescription(e);
    return '\n${descriptionComment(description, tab: '    ')}'
        '${e.deprecated ? "    @Deprecated('This is marked as deprecated')\n" : ''}'
        '    ${_required(e)}${_freezedSuitableType(e)} ${e.name},';
  }).join();
}

/// Filters out auto-generated parser descriptions (normalization messages).
String? _showableDescription(UniversalType e) {
  final shouldShowDescription =
      e.description != null &&
      !e.description!.contains('Normalized from:') &&
      !e.description!.contains('The name has been replaced') &&
      !e.description!.contains('Name not received') &&
      !e.description!.contains('Incorrect name has been replaced');
  return shouldShowDescription ? e.description : null;
}

/// `toPatch()` and `toNestedPatch()` extensions on a union over update-request
/// leaves, dispatching to whichever variant it holds.
///
/// Inside each `switch` arm the static type is the leaf, so the call resolves to
/// that leaf's own extension. `<Union>Unknown` declares both as real instance
/// members, and an instance member wins over an extension, so its arm resolves there.
String _unionToPatchExtension(UniversalComponentClass union) {
  final className = union.name.toPascal;
  String arms(String method) => [
    for (final leafName
        in union.discriminator!.discriminatorValueToRefMapping.values)
      '        ${leafName.toPascal}() => (this as ${leafName.toPascal}).$method(),',
    '        ${className}Unknown() => (this as ${className}Unknown).$method(),',
  ].join('\n');

  return '''

/// Builds the sparse presence patch for whichever variant this union holds.
extension ${className}PatchX on $className {
  Map<String, dynamic> toPatch() => switch (this) {
${arms('toPatch')}
      };

  Map<String, dynamic> toNestedPatch() => switch (this) {
${arms('toNestedPatch')}
      };
}
''';
}

/// The `final class <Union>Unknown` fallback: wraps the raw JSON losslessly
/// and decodes the union's common fields lazily from it.
String _unknownVariantClass(
  UniversalComponentClass union,
  List<UniversalType> commonFields, {
  required bool unknownEnumValue,
  required Map<String, String> enumWireTypes,
}) {
  final className = union.name.toPascal;
  final unknownClassName = '${className}Unknown';

  // Mirrors [toJson]: an unrecognized variant round-trips its raw payload rather
  // than silently patching nothing.
  final patchImpl = _isPartialUpdateRequest(union)
      ? '\n  /// No `@override`: the sealed supertype deliberately does NOT declare\n'
            '  /// `toPatch()` (an extension cannot satisfy an abstract member), so this\n'
            '  /// is a plain instance member the union extension dispatches to.\n'
            "  Map<String, dynamic> toPatch() => {...json}..remove('id');\n"
            '\n'
            '  /// As [toPatch], keeping `id` for a value nested inside another patch.\n'
            '  Map<String, dynamic> toNestedPatch() => json;\n'
      : '';

  // The parent declares no shared getters for a patch union (see _sealedUnionClass),
  // so Unknown must not emit `@override` versions of them either.
  final getters =
      (_isPartialUpdateRequest(union) ? const <UniversalType>[] : commonFields)
          .map(
            (param) =>
                '  @override\n'
                '  ${_freezedSuitableType(param)} get ${param.name} => ${_unknownGetterBody(param, unknownClassName, unknownEnumValue: unknownEnumValue, enumWireTypes: enumWireTypes)};\n',
          )
          .join('\n');
  final gettersBlock = getters.isEmpty ? '' : '\n$getters';

  return '''
/// Fallback [$className] variant for unrecognized `${union.discriminator!.propertyName}` values.
///
/// Preserves the raw wire payload losslessly: [toJson] returns it unchanged,
/// so unknown variants survive persistence and re-serialization. Common
/// fields are decoded lazily from the raw JSON.
final class $unknownClassName implements $className {
  const $unknownClassName(this.json);

  /// The raw wire payload.
  final Map<String, dynamic> json;

  @override
  Map<String, dynamic> toJson() => json;
$patchImpl
$gettersBlock
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is $unknownClassName &&
          const DeepCollectionEquality().equals(json, other.json);

  @override
  int get hashCode => const DeepCollectionEquality().hash(json);

  @override
  String toString() => '$unknownClassName(json: \$json)';
}
''';
}

/// The body of one common-field getter on an Unknown class: decodes the value
/// from the raw JSON by wire key, or throws [StateError] for shapes that have
/// no general raw-JSON decoding (collections, binary).
String _unknownGetterBody(
  UniversalType param,
  String unknownClassName, {
  required bool unknownEnumValue,
  required Map<String, String> enumWireTypes,
}) {
  final wireKey = protectJsonKey(param.jsonKey ?? param.name)!;
  final rawAccess = "json['$wireKey']";
  final renderedType = _freezedSuitableType(param);
  final isNullable = renderedType.endsWith('?');
  final nonNullType = isNullable
      ? renderedType.substring(0, renderedType.length - 1)
      : renderedType;

  String undecodable() =>
      "throw StateError('${param.name} is not decodable on $unknownClassName')";

  const directCastTypes = {
    'String',
    'int',
    'double',
    'num',
    'bool',
    'Map<String, dynamic>',
  };

  // Enum detection: the registry of generated enum classes is authoritative.
  // param.enumType is NOT a reliable wire type — for allOf-wrapped $refs with
  // a schema default the parser stores the referenced CLASS name there (even
  // for non-enum refs), while for inline enums it stores the wire type.
  const scalarWireTypes = {'String', 'int', 'double', 'num', 'bool'};
  final registryWireType = enumWireTypes[nonNullType];
  final inlineEnumWireType = param.enumType?.toDartType();
  final enumCast =
      registryWireType ??
      (scalarWireTypes.contains(inlineEnumWireType)
          ? inlineEnumWireType
          : null);

  final String? decodeNonNull;
  if (nonNullType == 'dynamic') {
    decodeNonNull = rawAccess;
  } else if (nonNullType == 'Object') {
    decodeNonNull = '$rawAccess as Object';
  } else if (directCastTypes.contains(nonNullType)) {
    decodeNonNull = '$rawAccess as $nonNullType';
  } else if (nonNullType == 'DateTime') {
    decodeNonNull = 'DateTime.parse($rawAccess as String)';
  } else if (param.wrappingCollections.isNotEmpty ||
      nonNullType == 'Uint8List') {
    decodeNonNull = null;
  } else if (enumCast != null) {
    // Enums expose fromJson only when unknown_enum_value is enabled; without
    // it there is no safe raw-JSON decoding.
    decodeNonNull = unknownEnumValue
        ? '$nonNullType.fromJson($rawAccess as $enumCast)'
        : null;
  } else {
    // A referenced component class with its own fromJson.
    decodeNonNull = '$nonNullType.fromJson($rawAccess as Map<String, dynamic>)';
  }

  if (decodeNonNull == null) return undecodable();

  if (param.defaultValue != null) {
    return '$rawAccess == null ? ${_defaultValue(param)} : $decodeNonNull';
  }
  if (isNullable) {
    if (directCastTypes.contains(nonNullType)) {
      return '$rawAccess as $renderedType';
    }
    return '$rawAccess == null ? null : $decodeNonNull';
  }
  return decodeNonNull;
}

/// The `copyWith`/`map` compatibility extensions for one union, mirroring the
/// Freezed union API consumers already use on union-typed values.
String _unionCompatExtensions(
  UniversalComponentClass union,
  List<UniversalType> commonFields,
) {
  final className = union.name.toPascal;
  final discriminator = union.discriminator!;
  final variants = discriminator.discriminatorValueToRefMapping.entries
      .map(
        (entry) => (
          factoryName: entry.key.toCamel,
          leafClassName: entry.value.toPascal,
        ),
      )
      .toList();

  if (variants.any((v) => v.factoryName == 'unknown')) {
    throw GeneratorException(
      "Union '${union.name}' has a variant named 'unknown', which collides "
      'with the generated unknown-variant handler in the map extension.',
    );
  }

  final copyWith = commonFields.isEmpty
      ? ''
      : _unionCopyWithExtension(className, variants, commonFields);
  return '$copyWith${_unionMapExtension(className, variants)}';
}

String _unionCopyWithExtension(
  String className,
  List<({String factoryName, String leafClassName})> variants,
  List<UniversalType> commonFields,
) {
  final parameters = commonFields
      .map((field) => '    Object? ${field.name} = freezed,')
      .join('\n');
  final arms = variants
      .map((variant) {
        final args = commonFields
            .map((field) {
              final renderedType = _freezedSuitableType(field);
              final value = renderedType == 'dynamic'
                  ? field.name
                  : '${field.name} as $renderedType';
              return '        ${field.name}: identical(${field.name}, freezed) ? v.${field.name} : $value,';
            })
            .join('\n');
        return '''
      ${variant.leafClassName} v => v.copyWith(
$args
      ),''';
      })
      .join('\n');

  return '''
/// `copyWith` over the fields shared by every [$className] variant.
extension ${className}CopyWithX on $className {
  /// Returns a copy of this variant with the provided common fields replaced.
  ///
  /// Throws [UnsupportedError] for [${className}Unknown]: an unknown payload
  /// cannot be reconstructed field-by-field.
  $className copyWith({
$parameters
  }) => switch (this) {
$arms
      ${className}Unknown _ => throw UnsupportedError(
        'Cannot copyWith an unknown $className variant',
      ),
    };
}
''';
}

String _unionMapExtension(
  String className,
  List<({String factoryName, String leafClassName})> variants,
) {
  final unknownClassName = '${className}Unknown';

  final mapParameters = variants
      .map(
        (v) =>
            '    required TResult Function(${v.leafClassName} value) ${v.factoryName},',
      )
      .join('\n');
  final mapArms = variants
      .map((v) => '      ${v.leafClassName} v => ${v.factoryName}(v),')
      .join('\n');

  final mapOrNullParameters = variants
      .map(
        (v) =>
            '    TResult? Function(${v.leafClassName} value)? ${v.factoryName},',
      )
      .join('\n');
  final mapOrNullArms = variants
      .map((v) => '      ${v.leafClassName} v => ${v.factoryName}?.call(v),')
      .join('\n');

  final maybeMapParameters = variants
      .map(
        (v) =>
            '    TResult Function(${v.leafClassName} value)? ${v.factoryName},',
      )
      .join('\n');
  final maybeMapArms = variants
      .map(
        (v) =>
            '      ${v.leafClassName} v when ${v.factoryName} != null => ${v.factoryName}(v),',
      )
      .join('\n');

  return '''
/// Freezed-style `map` dispatch with leaf-typed callbacks.
extension ${className}MapX on $className {
  /// Dispatches to the callback matching this variant.
  ///
  /// [unknown] handles [$unknownClassName]; when omitted, an unknown variant
  /// throws a [StateError].
  TResult map<TResult extends Object?>({
$mapParameters
    TResult Function($unknownClassName value)? unknown,
  }) => switch (this) {
$mapArms
      $unknownClassName v => unknown != null
          ? unknown(v)
          : throw StateError('Unhandled unknown $className variant: \$v'),
    };

  /// Like [map] but returns null for variants without a callback.
  TResult? mapOrNull<TResult extends Object?>({
$mapOrNullParameters
    TResult? Function($unknownClassName value)? unknown,
  }) => switch (this) {
$mapOrNullArms
      $unknownClassName v => unknown?.call(v),
    };

  /// Like [map] but falls back to [orElse] for variants without a callback.
  TResult maybeMap<TResult extends Object?>({
$maybeMapParameters
    TResult Function($unknownClassName value)? unknown,
    required TResult Function() orElse,
  }) => switch (this) {
$maybeMapArms
      $unknownClassName v when unknown != null => unknown(v),
      _ => orElse(),
    };
}
''';
}

/// Builds the `show`-scoped import for custom-metadata annotation symbols.
///
/// The `show` list is derived from the annotations [parameters] actually emit —
/// via the same [_customAnnotationFor] the emitter uses — never from the config
/// alone. Showing a name the file does not use is not merely untidy: an
/// unresolvable one (a templated config's plain symbol, which is never emitted
/// and need not exist) is an `undefined_shown_name` warning in every generated
/// file, and an unused-but-real one is `unused_shown_name`.
///
/// Returns '' when [parameters] carry no custom metadata, so an empty
/// `show ;` clause can never be emitted.
String _customMetadataImportDirective(
  CustomMetadataConfig customMetadata,
  String? customMetadataImportPath,
  Iterable<UniversalType> parameters,
) {
  if (customMetadataImportPath == null ||
      customMetadataImportPath.trim().isEmpty) {
    throw StateError(
      "Config parameter 'converter_hydrated_model_prefix' is required when "
      "'custom_metadata' is enabled.",
    );
  }
  final importPath = customMetadataImportPath.trim();
  final symbols = <String>{};
  for (final parameter in parameters) {
    for (final fieldConfig in customMetadata.fields) {
      final rendered = _customAnnotationFor(parameter, fieldConfig);
      if (rendered != null && rendered.symbol.isNotEmpty) {
        symbols.add(rendered.symbol);
      }
    }
  }
  if (symbols.isEmpty) return '';
  final show = symbols.toList()..sort();
  return "import '$importPath' show ${show.join(', ')};\n";
}

String _validateMethod(String className, Set<UniversalType> types) {
  final bodyBuffer = StringBuffer();

  for (final type in types) {
    final staticName = '$className.${type.name}';
    final nullCheckCondition = type.nullable ? '${type.name} != null &&' : '';
    final typeName = type.nullable ? '${type.name}!' : type.name;

    if (type.min != null) {
      bodyBuffer
        ..write('try {\n')
        ..write('  if ($nullCheckCondition $typeName < ${staticName}Min) {\n')
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.max != null) {
      bodyBuffer
        ..write('try {\n')
        ..write('  if ($nullCheckCondition $typeName > ${staticName}Max) {\n')
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.minItems != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length < ${staticName}MinItems) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.maxItems != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length > ${staticName}MaxItems) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.minLength != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length < ${staticName}MinLength) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.maxLength != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition $typeName.length > ${staticName}MaxLength) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.pattern != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition !RegExp(${staticName}Pattern).hasMatch($typeName)) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }

    if (type.uniqueItems != null) {
      bodyBuffer
        ..write('try {\n')
        ..write(
          '  if ($nullCheckCondition ${staticName}UniqueItems && $typeName.toSet().length != $typeName.length) {\n',
        )
        ..write('    return false;\n')
        ..write('  }\n')
        ..write('} catch (e) {\n')
        ..write('  return false;\n')
        ..write('}\n');
    }
  }

  if (bodyBuffer.isEmpty) {
    return '';
  }

  final funcBuffer = StringBuffer()
    ..write('extension ${className}ValidationX on $className {\n')
    ..write('bool validate() {\n')
    ..write(bodyBuffer)
    ..write('  return true;\n}\n')
    ..write('}\n');

  return funcBuffer.toString();
}

String _factories(
  UniversalComponentClass dataClass,
  String className,
  bool includeIfNull,
  String? fallbackUnion,
  CustomMetadataConfig customMetadata, {
  required bool isUnion,
  bool wrapOptional = false,
}) {
  if (!isUnion) {
    return '''
  const factory $className(${dataClass.parameters.isNotEmpty ? '{' : ''}${_parametersToString(dataClass.parameters, includeIfNull, customMetadata, wrapOptional: wrapOptional)}${dataClass.parameters.isNotEmpty ? '\n  }' : ''}) = _$className;''';
  }

  if (dataClass.undiscriminatedUnionVariants case final variants?
      when variants.isNotEmpty) {
    return _createFactoriesForUndiscriminatedUnion(
      className,
      variants,
      includeIfNull,
    );
  }

  final factories = <String>[];
  final discriminatorPropertyName = dataClass.discriminator!.propertyName;
  for (final discriminatorValue
      in dataClass.discriminator!.discriminatorValueToRefMapping.keys) {
    final factoryName = discriminatorValue.toCamel;
    final discriminatorRef = dataClass
        .discriminator!
        .discriminatorValueToRefMapping[discriminatorValue]!;
    final allParameters =
        dataClass.discriminator!.refProperties[discriminatorRef]!;
    final factoryParameters = allParameters
        .where((param) => param.jsonKey != discriminatorPropertyName)
        .toSet();
    final unionItemClassName = className + discriminatorValue.toPascal;

    factories.add('''
  @FreezedUnionValue('$discriminatorValue')
  const factory $className.$factoryName(${factoryParameters.isNotEmpty ? '{' : ''}${_parametersToString(factoryParameters, includeIfNull, customMetadata)}${factoryParameters.isNotEmpty ? '\n  }' : ''}) = $unionItemClassName;
''');
  }

  if (fallbackUnion != null && fallbackUnion.isNotEmpty) {
    final unionItemClassName = className + fallbackUnion.toPascal;
    factories.add('''
  const factory $className.$fallbackUnion() = $unionItemClassName;
''');
  }

  return factories.join('\n');
}

String _unionDefaultConstants(
  UniversalComponentClass dataClass,
  String className,
) {
  final discriminator = dataClass.discriminator;
  if (discriminator == null) return '';

  final constants = <String>[];
  final discriminatorPropertyName = discriminator.propertyName;

  for (final entry in discriminator.discriminatorValueToRefMapping.entries) {
    final discriminatorValue = entry.key;
    final discriminatorRef = entry.value;
    final allParameters = discriminator.refProperties[discriminatorRef];
    if (allParameters == null) continue;

    final factoryParameters = allParameters
        .where((param) => param.jsonKey != discriminatorPropertyName)
        .toSet();
    final hasRequiredParameter = factoryParameters.any(
      (param) => param.isRequired && param.defaultValue == null,
    );
    if (hasRequiredParameter) continue;

    final constName = 'type${discriminatorValue.toPascal}';
    final factoryName = discriminatorValue.toCamel;
    constants.add('  static const $constName = $className.$factoryName();');
  }

  if (constants.isEmpty) return '';
  return '\n${constants.join('\n')}\n';
}

String _createFactoriesForUndiscriminatedUnion(
  String className,
  Map<String, Set<UniversalType>> variants,
  bool includeIfNull,
) {
  // Undiscriminated unions don't use Freezed factories
  // They use a simple JSON wrapper pattern instead
  return '';
}

String _jsonFactories(
  String className,
  Map<String, Set<UniversalType>>? undiscriminatedUnionVariants, {
  required bool isUnion,
  Set<UniversalType>? presenceFields,
}) {
  if (undiscriminatedUnionVariants case final unionVariants?
      when unionVariants.isNotEmpty) {
    return '${_fromJsonUndiscriminatedUnion(className)}\n'
        '${_toJsonUndiscriminatedUnion(className, unionVariants)}';
  }

  // For discriminated unions, use stub - each variant implements toJson.
  // For regular classes, delegate to json_serializable-generated ToJson.
  final toJsonBody = isUnion
      ? 'Map<String, dynamic> toJson() => throw UnimplementedError();'
      : 'Map<String, dynamic> toJson() => _\$${className}ToJson(this as _$className);';

  final fromJson = presenceFields == null
      ? '  factory $className.fromJson(Map<String, Object?> json) => _\$${className}FromJson(json);'
      : _presenceFromJsonFactory(className, presenceFields);
  return '  \n'
      '  $toJsonBody\n'
      '$fromJson';
}

/// `fromJson` for a presence-tracked request: the inverse of `toNestedPatch()`.
///
/// A key present in [json] becomes `Optional(value)`, an explicit null included
/// (`Optional(null)`, a clear); an absent key stays `null`, so it is left
/// untouched. Keys the request doesn't declare are ignored, so the request
/// TYPE is still the whole boundary — the Dart analogue of the server's
/// `UpdateX.model_validate(data)` with `extra="ignore"`. This is what lets a
/// caller turn a stored document's JSON into the update of exactly the fields
/// the request may write: `UpdateXRequest.fromJson(model.toJson())`.
///
/// json_serializable can't decode `Optional<T>` (the fields are
/// `includeFromJson: false`), so it still decodes the plain operation fields
/// and `copyWith` adds the presence-tracked ones.
String _presenceFromJsonFactory(
  String className,
  Set<UniversalType> parameters,
) {
  final wrapped = parameters.where(_isWrappableOptionalField).toList();
  if (wrapped.isEmpty) {
    return '  factory $className.fromJson(Map<String, Object?> json) => _\$${className}FromJson(json);';
  }
  final arguments = wrapped
      .map((p) {
        final key = _wireKey(p);
        return "        ${p.name}: json.containsKey('$key') "
            "? Optional(${_fromJsonValueExpression(p, "json['$key']")}) "
            ': null,';
      })
      .join('\n');
  return '  factory $className.fromJson(Map<String, Object?> json) =>\n'
      '      _\$${className}FromJson(json).copyWith(\n'
      '$arguments\n'
      '      );';
}

/// Decodes the JSON [value] of field [t] — null stays null, so a clear survives.
/// The inverse of [_patchValueExpression], applied through every collection
/// wrapper.
String _fromJsonValueExpression(UniversalType t, String value) {
  final baseType = t.type.toDartType(format: t.format);

  String decode(String v, int depth) {
    if (depth == t.wrappingCollections.length) {
      return _fromJsonElementExpression(baseType, v);
    }
    final collection = t.wrappingCollections[depth];
    final innerNullable =
        depth == t.wrappingCollections.length - 1 && collection.itemIsNullable;
    final element = 'e$depth';
    final inner = decode(element, depth + 1);
    final item = innerNullable ? '$element == null ? null : $inner' : inner;
    if (collection.isMap) {
      final keyType = t.mapKeyType;
      final key = keyType == null
          ? 'k$depth as String'
          : '$keyType.fromJson(k$depth as dynamic)';
      return '($v as Map).map((k$depth, $element) => MapEntry($key, $item))';
    }
    return '($v as List).map(($element) => $item).toList()';
  }

  return '$value == null ? null : ${decode(value, 0)}';
}

/// Decodes one non-null element of Dart type [dartType]. A generated enum takes
/// its wire `String` and a model or nested request its `Map`, so both are
/// handed over as `dynamic` to the type's own `fromJson`.
String _fromJsonElementExpression(String dartType, String value) =>
    switch (dartType) {
      'int' => '($value as num).toInt()',
      'double' => '($value as num).toDouble()',
      'DateTime' => 'DateTime.parse($value as String)',
      'dynamic' || 'Object' => value,
      _ when isPrimitiveTypeName(dartType) => '$value as $dartType',
      _ => '$dartType.fromJson($value as dynamic)',
    };

String _fromJsonUndiscriminatedUnion(String className) =>
    '''

  factory $className.fromJson(Map<String, Object?> json) =>
      // TODO: Deserialization must be implemented by the user, because the OpenAPI specification did not provide a discriminator.
      // Use _\$\$$className<UnionName>ImplFromJson(json) to deserialize the union <UnionName>.
      throw UnimplementedError();
''';

String _toJsonUndiscriminatedUnion(
  String className,
  Map<String, Set<UniversalType>> undiscriminatedUnionVariants,
) {
  final cases = {
    for (final variant in undiscriminatedUnionVariants.keys)
      '        $className${variant.toPascal}() => _\$$className${variant.toPascal}ToJson(this as $className${variant.toPascal}),',
  };

  return '''
  Map<String, Object?> toJson() => switch (this) {
${cases.join('\n')}
      };''';
}

String _undiscriminatedUnionBody(
  String className,
  Map<String, Set<UniversalType>> variants,
) {
  final conversionMethods = variants.keys
      .map((variantName) {
        return '  $className${variantName.toPascal} to${variantName.toPascal}() => $className${variantName.toPascal}.fromJson(_json);';
      })
      .join('\n');

  return '''
  final Map<String, dynamic> _json;

  const $className(this._json);

  factory $className.fromJson(Map<String, dynamic> json) => $className(json);

  Map<String, dynamic> toJson() => _json;

$conversionMethods''';
}

String _generateUndiscriminatedVariantClasses(
  String className,
  Map<String, Set<UniversalType>> variants,
  bool includeIfNull,
) {
  return variants.entries
      .map((entry) {
        final variantName = entry.key;
        final properties = entry.value;
        final variantClassName = '$className${variantName.toPascal}';

        // Include @JsonKey annotation when jsonKey differs from name
        final fields = properties
            .map((prop) {
              return '${_jsonKeyForWrapper(prop)}  final ${prop.toSuitableType()} ${prop.name};';
            })
            .join('\n');

        final constructorParams = properties.isEmpty
            ? ''
            : '{\n${properties.map((prop) => '    required this.${prop.name},').join('\n')}\n  }';

        return '''

@JsonSerializable()
class $variantClassName {
$fields

  const $variantClassName($constructorParams);

  factory $variantClassName.fromJson(Map<String, Object?> json) =>
      _\$${variantClassName}FromJson(json);

  Map<String, Object?> toJson() => _\$${variantClassName}ToJson(this);
}''';
      })
      .join('\n');
}

String? _validationString(UniversalType type) {
  final sb = StringBuffer();
  if (type.min != null) {
    final numType = type.type == 'integer' ? int : double;
    final min = numType == int ? type.min?.toInt() : type.min;
    sb.write('  static const $numType ${type.name}Min = $min;\n');
  }

  if (type.max != null) {
    final numType = type.type == 'integer' ? int : double;
    final max = numType == int ? type.max?.toInt() : type.max;
    sb.write('  static const $numType ${type.name}Max = $max;\n');
  }

  if (type.minItems != null) {
    sb.write('  static const int ${type.name}MinItems = ${type.minItems};\n');
  }

  if (type.maxItems != null) {
    sb.write('  static const int ${type.name}MaxItems = ${type.maxItems};\n');
  }

  if (type.minLength != null) {
    sb.write('  static const int ${type.name}MinLength = ${type.minLength};\n');
  }

  if (type.maxLength != null) {
    sb.write('  static const int ${type.name}MaxLength = ${type.maxLength};\n');
  }

  if (type.pattern != null) {
    sb.write(
      '  static const String ${type.name}Pattern = r"${type.pattern}";\n',
    );
  }

  if (type.uniqueItems != null) {
    sb.write(
      '  static const bool ${type.name}UniqueItems = ${type.uniqueItems};\n',
    );
  }

  return sb.isEmpty ? null : sb.toString();
}

String _parametersToString(
  Set<UniversalType> parameters,
  bool includeIfNull,
  CustomMetadataConfig customMetadata, {
  bool wrapOptional = false,
}) {
  final sortedByRequired = Set<UniversalType>.from(
    parameters.sorted((a, b) => a.compareTo(b)),
  );
  return sortedByRequired.mapIndexed((i, e) {
    // Filter out auto-generated descriptions (normalization messages, conflict resolutions, etc.)
    final shouldShowDescription =
        e.description != null &&
        !e.description!.contains('Normalized from:') &&
        !e.description!.contains('The name has been replaced') &&
        !e.description!.contains('Name not received') &&
        !e.description!.contains('Incorrect name has been replaced');

    final description = shouldShowDescription ? e.description : null;

    // Presence-tracking wrap for a value field of a partial-update request.
    final wrap = wrapOptional && _isWrappableOptionalField(e);
    final renderedType = wrap ? _optionalFieldType(e) : _freezedSuitableType(e);

    return '\n${descriptionComment(description, tab: '    ')}'
        '${_customAnnotations(e, customMetadata)}'
        '${_jsonKey(e, includeIfNull, wrapOptional: wrap)}    ${_required(e)}'
        '$renderedType ${e.name},';
  }).join();
}

String _freezedSuitableType(UniversalType type) {
  final baseType = type.toSuitableType();

  if (!type.isRequired &&
      type.defaultValue == null &&
      !type.nullable &&
      !type.referencedNullable) {
    if (baseType.endsWith('?')) {
      return baseType;
    }
    if (baseType == 'dynamic') {
      return baseType;
    }
    return '$baseType?';
  }

  return baseType;
}

/// Simplified JsonKey for wrapper classes - only handles name mapping
String _jsonKeyForWrapper(UniversalType t) {
  if (t.jsonKey != null && t.name != t.jsonKey) {
    return "  @JsonKey(name: '${protectJsonKey(t.jsonKey)}')\n";
  }
  return '';
}

String _jsonKey(
  UniversalType t,
  bool includeIfNull, {
  bool wrapOptional = false,
}) {
  final sb = StringBuffer();
  final jsonKeyParams = <String, String?>{};

  // Presence-tracked Optional<T> value field: json_serializable cannot express
  // the absent/clear/set tri-state (null-omission collapses absent and clear)
  // and cannot (de)serialize Optional<T> generically, so the field is fully
  // excluded from it (includeToJson/includeFromJson: false). The generated
  // `toPatch()` is the authoritative serializer for these fields (the client
  // write-path patch); the freezed-generated `toJson()` carries only the
  // operation (@Default) fields and is used solely for retrofit @Body
  // compilation (that HTTP path is not wired). On decode, wrapped fields default
  // to null (absent); request models are never deserialized in practice.
  if (wrapOptional) {
    if (t.jsonKey != null && t.name != t.jsonKey) {
      jsonKeyParams['name'] = "'${protectJsonKey(t.jsonKey)}'";
    }
    jsonKeyParams['includeToJson'] = 'false';
    jsonKeyParams['includeFromJson'] = 'false';
    sb.write(
      "    @JsonKey(${jsonKeyParams.entries.map((e) => '${e.key}: ${e.value}').join(',')})\n",
    );
    return sb.toString();
  }

  if (includeIfNull) {
    if (t.isRequired && (t.nullable || t.referencedNullable)) {
      jsonKeyParams['includeIfNull'] = 'true';
    } else if (!t.isRequired && (t.nullable || t.referencedNullable)) {
      jsonKeyParams['includeIfNull'] = 'false';
    }
  }

  if (t.jsonKey != null && t.name != t.jsonKey) {
    jsonKeyParams['name'] = "'${protectJsonKey(t.jsonKey)}'";
  }

  if ((t.format == 'binary' || t.format == 'byte') || t.type == 'Uint8List') {
    final isNullable = !t.isRequired && t.defaultValue == null;
    final isList =
        t.wrappingCollections.isNotEmpty &&
        t.wrappingCollections.first.collectionPrefix.startsWith('List<');

    if (isList) {
      if (isNullable) {
        jsonKeyParams['fromJson'] =
            '_Base64Converter.staticFromJsonListNullable';
        jsonKeyParams['toJson'] = '_Base64Converter.staticToJsonListNullable';
      } else {
        jsonKeyParams['fromJson'] = '_Base64Converter.staticFromJsonList';
        jsonKeyParams['toJson'] = '_Base64Converter.staticToJsonList';
      }
    } else {
      if (isNullable) {
        jsonKeyParams['fromJson'] = '_Base64Converter.staticFromJsonNullable';
        jsonKeyParams['toJson'] = '_Base64Converter.staticToJsonNullable';
      } else {
        jsonKeyParams['fromJson'] = '_Base64Converter.staticFromJson';
        jsonKeyParams['toJson'] = '_Base64Converter.staticToJson';
      }
    }
  }

  if (jsonKeyParams.isNotEmpty) {
    sb.write(
      "    @JsonKey(${jsonKeyParams.entries.map((e) => '${e.key}: ${e.value}').join(',')})\n",
    );
  }

  if (t.defaultValue != null) {
    sb.write('    @Default(${_defaultValue(t)})\n');
  }

  if (t.deprecated) {
    sb.write("    @Deprecated('This is marked as deprecated')\n");
  }

  return sb.toString();
}

/// return required if isRequired
String _required(UniversalType t) =>
    t.isRequired && t.defaultValue == null ? 'required ' : '';

/// return defaultValue if have
String _defaultValue(UniversalType t) {
  if (t.defaultValue == null) {
    return '';
  }

  final defaultValueStr = t.defaultValue.toString();

  if (t.enumType != null) {
    if (defaultValueStr.startsWith('[') && defaultValueStr.endsWith(']')) {
      final values = defaultValueStr
          .substring(1, defaultValueStr.length - 1)
          .split(',')
          .map((v) => v.trim())
          .where((v) => v.isNotEmpty)
          .map((v) => '${t.type}.${protectDefaultEnum(v)?.toCamel}')
          .join(', ');
      return 'const [$values]';
    }
    return '${t.type}.${protectDefaultEnum(t.defaultValue)?.toCamel}';
  }

  final protectedValue = protectDefaultValue(t.defaultValue, type: t.type);

  // Add const prefix for collections (arrays/maps) to make them compile-time constants
  if (t.wrappingCollections.isNotEmpty && protectedValue != null) {
    if (protectedValue.startsWith('[') || protectedValue.startsWith('{')) {
      return 'const $protectedValue';
    }
  }

  return '$protectedValue';
}

/// Filters out union imports for freezed classes to avoid circular dependencies
Set<String> _filterUnionImportsForFreezed(UniversalComponentClass dataClass) {
  final filteredImports = <String>{};

  // If this class has a discriminatorValue, it means it's part of a union and
  // shouldn't import the union file (to avoid circular dependencies)
  final shouldFilterUnionImports = dataClass.discriminatorValue != null;

  for (final import in dataClass.imports) {
    // If this is a model that's part of a union, skip union imports
    // Otherwise, allow all imports (including union imports for classes that use unions)
    final shouldSkip =
        shouldFilterUnionImports && import.toLowerCase().contains('union');

    if (!shouldSkip) {
      filteredImports.add(import);
    }
  }

  return filteredImports;
}

({bool hasScalar, bool hasNullable, bool hasList, bool hasListNullable})
_getBase64FieldTypes(
  Set<UniversalType> parameters, {
  Discriminator? discriminator,
}) {
  bool hasScalar = false;
  bool hasNullable = false;
  bool hasList = false;
  bool hasListNullable = false;

  // Check top-level parameters
  for (final param in parameters) {
    if ((param.format == 'binary' || param.format == 'byte') ||
        param.type == 'Uint8List') {
      final isNullable = !param.isRequired && param.defaultValue == null;
      final isList =
          param.wrappingCollections.isNotEmpty &&
          param.wrappingCollections.first.collectionPrefix.startsWith('List<');

      if (isList) {
        if (isNullable) {
          hasListNullable = true;
        } else {
          hasList = true;
        }
      } else {
        if (isNullable) {
          hasNullable = true;
        } else {
          hasScalar = true;
        }
      }
    }
  }

  // Also check discriminator variant parameters for union types
  if (discriminator != null) {
    for (final variantParams in discriminator.refProperties.values) {
      for (final param in variantParams) {
        if ((param.format == 'binary' || param.format == 'byte') ||
            param.type == 'Uint8List') {
          final isNullable = !param.isRequired && param.defaultValue == null;
          final isList =
              param.wrappingCollections.isNotEmpty &&
              param.wrappingCollections.first.collectionPrefix.startsWith(
                'List<',
              );

          if (isList) {
            if (isNullable) {
              hasListNullable = true;
            } else {
              hasList = true;
            }
          } else {
            if (isNullable) {
              hasNullable = true;
            } else {
              hasScalar = true;
            }
          }
        }
      }
    }
  }

  return (
    hasScalar: hasScalar,
    hasNullable: hasNullable,
    hasList: hasList,
    hasListNullable: hasListNullable,
  );
}

String _getDartCoreImports(
  Set<UniversalType> parameters, {
  Discriminator? discriminator,
}) {
  final imports = <String>[];

  final base64Types = _getBase64FieldTypes(
    parameters,
    discriminator: discriminator,
  );
  final hasAnyBase64 =
      base64Types.hasScalar ||
      base64Types.hasNullable ||
      base64Types.hasList ||
      base64Types.hasListNullable;

  if (hasAnyBase64) {
    imports.add("import 'dart:convert';");
    imports.add("import 'dart:typed_data';");
  }

  return imports.isEmpty ? '' : '${imports.join('\n')}\n';
}

/// The annotation [fieldConfig] contributes to [t], and the symbol that
/// annotation actually references — or null when it contributes nothing.
///
/// The symbol matters as much as the text: it is what the generated file must
/// `show` from the custom-metadata library. Resolving both here is what keeps
/// the emitted annotations and the import's `show` list from drifting — deriving
/// the list from the *config* instead produced two failure modes at once:
/// showing `valueSource` (the plain symbol of a templated config, which is never
/// emitted and does not exist -> `undefined_shown_name`) and showing symbols no
/// field in the file uses (-> `unused_shown_name`).
({String annotation, String symbol})? _customAnnotationFor(
  UniversalType t,
  CustomMetadataField fieldConfig,
) {
  final metadataValue = t.customMetadata[fieldConfig.name];
  if (metadataValue == null) return null;

  // A templated config renders the CLASS form (`@ValueSource('...')`), so the
  // class name is the symbol. Note the `!= true` guard: a templated config whose
  // value is boolean `true` falls through to the plain form below, and then the
  // plain symbol genuinely is the one used.
  if (fieldConfig.annotationTemplate != null && metadataValue != true) {
    final template = fieldConfig.annotationTemplate!;
    final match = RegExp(r'@([A-Z][a-zA-Z0-9]*)').firstMatch(template);
    return (
      annotation: template.replaceAll('{value}', metadataValue.toString()),
      // A template with no `@ClassName` has no symbol to show; '' is filtered out
      // by the caller rather than emitting an unresolvable name.
      symbol: match?.group(1) ?? '',
    );
  }

  return (
    annotation: fieldConfig.annotation,
    symbol: fieldConfig.annotation.replaceFirst('@', ''),
  );
}

/// Generate custom annotations for a field based on custom metadata
String _customAnnotations(
  UniversalType t,
  CustomMetadataConfig customMetadata,
) {
  if (!customMetadata.isActive || t.customMetadata.isEmpty) {
    return '';
  }

  final buffer = StringBuffer();

  for (final fieldConfig in customMetadata.fields) {
    final rendered = _customAnnotationFor(t, fieldConfig);
    if (rendered != null) buffer.write('    ${rendered.annotation}\n');
  }

  return buffer.toString();
}

/// Schema-name rule for the partial-update request types whose value fields
/// carry presence tracking (`Optional<T>`) — the client mass-assignment boundary.
/// Matches `update_*_request` AND its managed twin `managed_update_*_request`
/// (G1.6 — APPLICATION_MANAGED, non-immutable fields), but NOT full-replace bodies
/// (e.g. `update_message_request_full` ends in `_full`, not `_request`) or nested
/// value objects (`update_message_partial_request_content` ends in `_content`).
/// The `managed_` qualifier is a single optional prefix, so "is an update-shaped
/// request" stays the one predicate.
/// See docs/plans/client-write-path-enforcement.md G1.1 / G1.6.
final RegExp _partialUpdateRequestName = RegExp(
  r'^(managed_)?update_.*_request$',
);

bool _isPartialUpdateRequest(UniversalComponentClass dataClass) =>
    _partialUpdateRequestName.hasMatch(dataClass.name.toSnake);

/// A wrappable value field of a partial-update request: optional (not required)
/// with no schema default. Operation fields (`@Default(...)`) and required
/// fields keep their plain type — presence tracking is meaningless for them.
bool _isWrappableOptionalField(UniversalType t) =>
    !t.isRequired && t.defaultValue == null;

/// The non-null inner type Optional wraps (strip one trailing `?`).
String _optionalInnerType(UniversalType t) {
  final base = _freezedSuitableType(t);
  return base.endsWith('?') ? base.substring(0, base.length - 1) : base;
}

/// The rendered field type for a wrapped value field: `Optional<T>?`.
String _optionalFieldType(UniversalType t) =>
    'Optional<${_optionalInnerType(t)}>?';

/// The wire (JSON) key for a field — what the stored document and patch use.
String _wireKey(UniversalType t) {
  final key = t.jsonKey ?? t.name ?? '';
  return protectJsonKey(key) ?? key;
}

/// The `show`-scoped import for the Optional value type + its json helpers,
/// reusing the custom-metadata import path (the consumer's model barrel).
String _optionalImportDirective(String? importPath) {
  if (importPath == null || importPath.trim().isEmpty) {
    throw StateError(
      "Config parameter 'converter_hydrated_model_prefix' is required to "
      'generate Optional<T> update-request fields.',
    );
  }
  return "import '${importPath.trim()}' show Optional;\n";
}

/// The expression that turns a present `Optional<T>`'s value into a **storable**
/// JSON value for `toPatch()`.
///
/// A patch is handed straight to the persistence layer, which stores raw JSON. A
/// primitive passes through, but a generated **enum** or **model** must be converted
/// first: Couchbase Lite's `CblConversions.convertToCblObject` accepts only
/// `String | num | bool | null | Map | Iterable | DateTime | Uint8List`
/// and throws `ArgumentError('cannot be stored in a Couchbase Lite Document')` on
/// anything else. Emitting the raw object (the behaviour before 2026-07-25) made every
/// managed/update write carrying a nested typed value or an enum a runtime crash — see
/// `docs/plans/managed-request-superset.md` D5.
///
/// *Which* converter depends on the type — see [_patchSerializer]. A nested
/// partial-update request patches with `toNestedPatch()`; everything else uses `toJson()`.
/// Using `toJson()` for both (the behaviour before 2026-07-26) silently wrote `{}` for
/// the former — `docs/plans/managed-request-superset.md` D5a.
///
/// `DateTime` is deliberately treated as a primitive: CBL converts it itself
/// (`toIso8601String()`), and `DateTime` has no `toJson()`.
String _patchValueExpression(UniversalType t) {
  final value = 'this.${t.name}!.value';
  // `UniversalType.type` is the RAW OpenAPI type ("string", "integer", …), not the
  // Dart one — map it first, or every primitive is mistaken for a model and gets a
  // `.toJson()` that does not compile. For a `$ref` this is the schema/class name,
  // which is what `_patchSerializer` needs.
  final dartType = t.type.toDartType(format: t.format);
  if (isPrimitiveTypeName(dartType)) return value;

  final serializer = _patchSerializer(dartType);

  // Collections wrap the element type; convert element-wise. Only the innermost
  // (last) wrapper matters here — nested collections of models do not occur in the
  // generated request surface, and a Map's values are converted the same way.
  //
  // `Optional<T>.value` is always `T?` (null = clear), so the OUTER access is always
  // null-aware. The ELEMENT access must not be unless the collection actually holds
  // nullable items, or the analyzer flags `invalid_null_aware_operator`.
  final collection = t.wrappingCollections.isEmpty
      ? null
      : t.wrappingCollections.last;
  if (collection == null) return '$value?.$serializer()';
  final item = collection.itemIsNullable ? '?.' : '.';
  if (collection.isMap) {
    return '$value?.map((key, value) => MapEntry(key, value$item$serializer()))';
  }
  return '$value?.map((e) => e$item$serializer()).toList()';
}

/// The serializer that converts a nested value into its patch representation.
///
/// A nested **partial-update request** is presence-tracked exactly like the request
/// enclosing it: every one of its value fields is `Optional<T>` and carries
/// `includeToJson: false`, so json_serializable emits
/// `Map<String, dynamic> _$XToJson(...) => <String, dynamic>{};` — a literal empty map.
/// Calling `toJson()` on it therefore writes `{}` and BLANKS the nested field instead
/// of patching it, silently and with no analyzer complaint. `toPatch()` is its
/// authoritative serializer, for the same reason it is the enclosing request's.
///
/// It uses `toNestedPatch()`, not `toPatch()`: inside a whole-list rewrite an element's
/// `id` is that element's identity, and dropping it would regenerate list identity on
/// every update. See [_generateToPatchExtension].
///
/// Everything else — a generated enum, a plain model — has a real `toJson()`.
///
/// The rule keys off [_partialUpdateRequestName], the same predicate that decides
/// which classes GET a `toPatch()`, so the two can never disagree: a type is
/// serialized as a patch iff the generator gave it one. Nested value objects are
/// correctly excluded — `ManagedUpdateMessageRequestState` ends in `_state`, not
/// `_request`, and keeps its real `toJson()`.
String _patchSerializer(String dartType) =>
    _partialUpdateRequestName.hasMatch(dartType.toSnake)
    ? 'toNestedPatch'
    : 'toJson';

/// Generates a `toPatch()` extension: the sparse presence patch built from the
/// *present* Optionals only (keeping an explicit null as a clear) — the Dart
/// analogue of `model_dump(exclude_unset=True)`, consumed by
/// `BaseDao.applyUpdate`. Operation (`@Default`) fields are intentionally
/// excluded: they are backend commands, not stored document fields. See
/// docs/plans/client-write-path-enforcement.md G1.2.
///
/// `toPatch()` drops a top-level `id`: on a document-level request it is the
/// **correlation key** naming the document to update, never a value to write. It is
/// the client analogue of the server's `build_update_patch`, which strips it too.
/// `toNestedPatch()` keeps it, because a nested request's `id` is the identity of a
/// list element. A parent therefore serializes its children with `toNestedPatch()`.
/// See novus docs/plans/client-write-path-enforcement.md G19.5.
String _generateToPatchExtension(
  String className,
  Set<UniversalType> parameters,
) {
  // `this.` qualifies every field access: a bare field name (e.g. `deprecated`)
  // can collide with a dart:core top-level constant and resolve to it instead.
  final lines = parameters
      .where(_isWrappableOptionalField)
      .map(
        (p) =>
            "    if (this.${p.name} != null) { patch['${_wireKey(p)}'] = ${_patchValueExpression(p)}; }",
      )
      .join('\n');
  final hasId = parameters
      .where(_isWrappableOptionalField)
      .any((p) => _wireKey(p) == 'id');
  final dropId = hasId ? "..remove('id')" : '';
  return '''
extension ${className}PatchX on $className {
  /// The sparse update patch: only the fields explicitly set (present
  /// Optionals), keeping an explicit null as a clear. The Dart analogue of
  /// `model_dump(exclude_unset=True)`; consumed by `BaseDao.applyUpdate`.
  Map<String, dynamic> toPatch() => toNestedPatch()$dropId;

  /// As [toPatch], keeping `id` for a value nested inside another patch, where it
  /// is the identity of a list element.
  Map<String, dynamic> toNestedPatch() {
    final patch = <String, dynamic>{};
$lines
    return patch;
  }
}
''';
}

/// Generates a merge() extension method that creates a new instance by copying
/// all fields from another instance using Freezed's copyWith().
///
/// This must be an extension rather than a class method because Freezed 3.x
/// generates the concrete class (_ClassName) with "implements" instead of "extends",
/// meaning any method added to the abstract class body must be re-implemented
/// in the generated concrete class (which we cannot modify).
String _generateMergeExtension(
  String className,
  Set<UniversalType> parameters, {
  bool wrapOptional = false,
}) {
  // Freezed doesn't generate copyWith() for classes with zero fields,
  // so skip the merge extension entirely for empty classes.
  if (parameters.isEmpty) return '';

  final copyWithParams = parameters
      .map((param) {
        final name = param.name;
        // Presence-aware for wrapped fields: `other` wins only where it is
        // present (an absent Optional must not clobber this instance's value).
        // `this.` qualifies the fallback: a bare field name (e.g. `deprecated`)
        // can collide with a dart:core top-level constant.
        if (wrapOptional && _isWrappableOptionalField(param)) {
          return '      $name: other.$name ?? this.$name,';
        }
        return '      $name: other.$name,';
      })
      .join('\n');

  return '''
extension ${className}MergeX on $className {
  /// Returns a new [$className] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  $className merge($className other) {
    return copyWith(
$copyWithParams
    );
  }
}
''';
}

String _base64ConverterClass({
  required bool hasScalar,
  required bool hasNullable,
  required bool hasList,
  required bool hasListNullable,
}) {
  final methods = <String>[];

  methods.add('  const _Base64Converter();');
  methods.add('');
  methods.add('  static const instance = _Base64Converter();');

  if (hasScalar) {
    methods.add('');
    methods.add(
      '  static Uint8List staticFromJson(String json) => instance.fromJson(json);',
    );
    methods.add('');
    methods.add(
      '  static String staticToJson(Uint8List object) => instance.toJson(object);',
    );
  }

  if (hasNullable) {
    methods.add('');
    methods.add(
      '  static Uint8List? staticFromJsonNullable(String? json) => json == null ? null : instance.fromJson(json);',
    );
    methods.add('');
    methods.add(
      '  static String? staticToJsonNullable(Uint8List? object) => object == null ? null : instance.toJson(object);',
    );
  }

  if (hasList) {
    methods.add('');
    methods.add(
      '  static List<Uint8List> staticFromJsonList(List<dynamic> json) => json.map((e) => instance.fromJson(e as String)).toList();',
    );
    methods.add('');
    methods.add(
      '  static List<String> staticToJsonList(List<Uint8List> object) => object.map((e) => instance.toJson(e)).toList();',
    );
  }

  if (hasListNullable) {
    methods.add('');
    methods.add(
      '  static List<Uint8List>? staticFromJsonListNullable(List<dynamic>? json) => json?.map((e) => instance.fromJson(e as String)).toList();',
    );
    methods.add('');
    methods.add(
      '  static List<String>? staticToJsonListNullable(List<Uint8List>? object) => object?.map((e) => instance.toJson(e)).toList();',
    );
  }

  return '''
class _Base64Converter implements JsonConverter<Uint8List, String> {
${methods.join('\n')}

  @override
  Uint8List fromJson(String json) => base64Decode(json);

  @override
  String toJson(Uint8List object) => base64Encode(object);
}''';
}
