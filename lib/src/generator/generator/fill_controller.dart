import 'dart:io';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/config/generator_config.dart';
import 'package:openapi_retrofit_generator/src/generator/generator/union_family_resolver.dart';
import 'package:openapi_retrofit_generator/src/generator/model/generated_file.dart';
import 'package:openapi_retrofit_generator/src/generator/model/json_serializer.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_dart_mappable_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_enum_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_export_file_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_json_serializable_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_retrofit_client_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_root_client_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_typedef_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_converter_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_defaults_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/hydrated_model_parser.dart';
import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';

/// Handles generating files
final class FillController {
  /// Constructor that accepts configuration parameters with default values to create files
  FillController({
    required this.config,
    this.info = const OpenApiInfo(schemaVersion: OAS.v3_1),
    List<UniversalDataClass> dataClasses = const [],
    UnionFamilyResolution unionFamilies = UnionFamilyResolution.none,
  })  : _unionFamilies = unionFamilies,
        _unionVariantMap = _buildUnionVariantMap(dataClasses, unionFamilies),
        _dataClassMap = {
          for (final dc in dataClasses)
            if (dc is UniversalComponentClass) dc.name.toLowerCase(): dc,
        },
        _enumWireTypes = {
          for (final dc in dataClasses)
            if (dc is UniversalEnumClass) dc.name.toPascal: dc.type.toDartType(),
        };

  /// Api info
  final OpenApiInfo info;

  /// Config
  final GeneratorConfig config;

  /// Sealed-ref-union family resolution ([UnionFamilyResolution.none] when
  /// the feature is disabled).
  final UnionFamilyResolution _unionFamilies;

  /// Maps standalone schema ref names to their parent union info
  /// e.g., 'Agent' → UnionVariantInfo(parentClassName: 'Ai', factoryName: 'agent')
  final Map<String, UnionVariantInfo> _unionVariantMap;

  /// Case-insensitive lookup map from class name → UniversalComponentClass
  final Map<String, UniversalComponentClass> _dataClassMap;

  /// Maps generated enum class names (Pascal) to their Dart wire type
  /// (e.g. 'PetStatus' → 'String'), so union family Unknown classes can
  /// decode `$ref`-to-enum fields via `Enum.fromJson(raw as String)`.
  final Map<String, String> _enumWireTypes;

  /// File-base-name overrides for family members, or null when the feature is
  /// off so legacy code paths stay byte-identical.
  Map<String, String>? get _fileOverridesOrNull =>
      _unionFamilies.familyMemberNames.isEmpty
          ? null
          : _unionFamilies.classFileOverrides;

  /// Resolves the on-disk file base name for a generated model class,
  /// following family overrides when the class was merged into a family file.
  String _resolveModelFileBaseName(String fileBaseName) =>
      _unionFamilies.classFileOverrides[fileBaseName] ?? fileBaseName;

  /// Build a mapping from standalone variant ref names to their parent union class.
  ///
  /// Iterates over all data classes with discriminators (sealed/union types) and
  /// extracts the variant-to-parent relationship from the discriminator mapping.
  static Map<String, UnionVariantInfo> _buildUnionVariantMap(
    List<UniversalDataClass> dataClasses,
    UnionFamilyResolution unionFamilies,
  ) {
    final map = <String, UnionVariantInfo>{};
    for (final dc in dataClasses) {
      if (dc is! UniversalComponentClass) continue;
      final discriminator = dc.discriminator;
      if (discriminator == null) continue;

      final parentClassName = dc.name.toPascal;
      // Family unions dispatch on the leaf classes themselves; legacy unions
      // dispatch on the Freezed clone classes (`<Union><Factory>`).
      final isFamilyUnion = unionFamilies.familyMemberNames.contains(dc.name);
      for (final entry in discriminator.discriminatorValueToRefMapping.entries) {
        final discriminatorValue = entry.key; // e.g., 'agent'
        final refName = entry.value.toPascal; // e.g., 'Agent'
        final factoryName = discriminatorValue.toCamel; // e.g., 'agent'
        // Use lowercase key for case-insensitive lookup
        // (e.g., DbaiChannelMember → strip "Db" → "aiChannelMember"
        //  needs to match ref "AiChannelMember")
        map[refName.toLowerCase()] = UnionVariantInfo(
          parentClassName: parentClassName,
          factoryName: factoryName,
          discriminatorPropertyName: discriminator.propertyName,
          variantClassName: isFamilyUnion
              ? refName
              : '$parentClassName${factoryName.toPascal}',
        );
      }
    }
    return map;
  }

  /// Case-insensitive lookup into the union variant map
  UnionVariantInfo? _lookupUnionVariant(String name) =>
      _unionVariantMap[name.toLowerCase()];

  /// Return [GeneratedFile] generated from given [UniversalDataClass]
  GeneratedFile fillDtoContent(UniversalDataClass dataClass) => GeneratedFile(
    name: 'models/${_resolveDtoFileBaseName(dataClass)}.dart',
    content: _dtoFileContent(
      dataClass,
      jsonSerializer: config.jsonSerializer,
      unknownEnumValue: config.unknownEnumValue,
      markFilesAsGenerated: config.markFilesAsGenerated,
      generateValidator: config.generateValidator,
      includeIfNull: config.includeIfNull,
      fallbackUnion: config.fallbackUnion,
      customMetadata: config.customMetadata,
      generateMergeMethod: config.generateMergeMethod,
    ),
  );

  /// Return [GeneratedFile] holding one whole sealed-ref-union family:
  /// the sealed union classes, their Unknown fallbacks, every leaf class and
  /// the compatibility extensions — a single library named after the primary
  /// union.
  GeneratedFile fillUnionFamilyContent(UnionFamily family) => GeneratedFile(
    name: 'models/${family.fileBaseName}.dart',
    content: dartFreezedUnionFamilyTemplate(
      family,
      includeIfNull: config.includeIfNull,
      unknownEnumValue: config.unknownEnumValue,
      generateValidator: config.generateValidator,
      customMetadata: config.customMetadata,
      generateMergeMethod: config.generateMergeMethod,
      customMetadataImportPath: config.converterHydratedModelPrefix,
      classFileOverrides: _unionFamilies.classFileOverrides,
      enumWireTypes: _enumWireTypes,
    ),
  );

  /// Return [GeneratedFile] for converter if applicable, or null
  GeneratedFile? fillConverterContent(UniversalDataClass dataClass) {
    // Only generate converters for Db* prefixed classes (database models)
    if (!config.generateConverters) return null;
    if (dataClass is! UniversalComponentClass) return null;
    if (!dataClass.name.startsWith('Db')) return null;
    
    // Skip converter generation for union types (discriminated oneOf)
    // Union types should use their specific variant converters instead
    // Check for both the root union and its variants
    if (dataClass.discriminator != null || dataClass.discriminatorValue != null || dataClass.undiscriminatedUnionVariants != null) {
      // This is a union type (root or variant), skip converter generation
      return null;
    }
    
    final dbClassName = dataClass.name.toPascal;
    final hydratedModelName = dbClassName.substring(2); // Remove 'Db'
    // Follow family overrides: a hydrated model merged into a union family
    // file lives under the family's file name, not its own.
    final hydratedModelFileName =
        _resolveModelFileBaseName(hydratedModelName.toSnake);

    // Path to the hydrated model file (relative to output directory)
    final hydratedModelPath = '${config.outputDirectory}/${config.converterHydratedModelsDirectory}/$hydratedModelFileName.dart';

    if (!File(hydratedModelPath).existsSync()) {
      // If hydrated model doesn't exist, we skip converter generation or generate a context-only converter
      // For now, let's skip to avoid analyzer errors
      return null;
    }
    
    // Check if the hydrated model is a sealed/union type by reading the file
    // This catches cases where discriminator info is not yet populated in the dataClass
    try {
      final hydratedModelContent = File(hydratedModelPath).readAsStringSync();
      // Check for sealed class with uppercase first letter (e.g., 'sealed class Ai')
      final capitalizedName = hydratedModelName[0].toUpperCase() + hydratedModelName.substring(1);
      if (hydratedModelContent.contains('sealed class $capitalizedName')) {
        // This is a union/sealed type, skip converter generation
        // Use specific converters for each variant instead
        return null;
      }
    } catch (e) {
      // If we can't read the file, continue with generation
    }
    
    final parser = HydratedModelParser();
    // Anchor to the class name: family files hold many factory constructors,
    // and the unanchored parser would take the first one in the file.
    final hydratedFields = parser.parseFields(
      hydratedModelPath,
      className: hydratedModelName.toPascal,
    );
    
    // Calculate the models base path (e.g., packages/my_models/lib/src)
    // by removing the filename and subdirectory from the hydrated model path
    final modelsBasePath = File(hydratedModelPath).parent.parent.path;
    
    // Look up if the hydrated model is a variant of a union/sealed class
    final unionVariantInfo = _lookupUnionVariant(hydratedModelName);

    // Look up if the DB model is a variant of a DB union/sealed class
    final dbUnionVariantInfo = _lookupUnionVariant(dbClassName);

    return GeneratedFile(
      name: 'converters/${_resolveDtoFileBaseName(dataClass)}_converter.dart',
      content: dartConverterTemplate(
        dataClass,
        hydratedModelImport: config.converterHydratedModelPrefix!,
        hydratedFields: hydratedFields,
        modelsBasePath: modelsBasePath,
        modelSearchDirectories: config.modelSearchDirectories,
        unionVariantInfo: unionVariantInfo,
        dbUnionVariantInfo: dbUnionVariantInfo,
      ),
    );
  }

  /// Return [GeneratedFile] for defaults if applicable, or null
  GeneratedFile? fillDefaultsContent(UniversalDataClass dataClass) {
    if (!config.generateDefaults) return null;
    if (dataClass is! UniversalComponentClass) return null;
    if (!dataClass.name.startsWith('Db')) return null;
    
    // Only generate if there are actually defaults
    if (!dataClass.parameters.any((p) => p.defaultValue != null)) return null;

    return GeneratedFile(
      name: 'defaults/${_resolveDtoFileBaseName(dataClass)}_defaults.dart',
      content: dartDefaultsTemplate(dataClass),
    );
  }

  String _dtoFileContent(
    UniversalDataClass dataClass, {
    required JsonSerializer jsonSerializer,
    required bool unknownEnumValue,
    required bool markFilesAsGenerated,
    required bool generateValidator,
    required bool includeIfNull,
    String? fallbackUnion,
    required CustomMetadataConfig customMetadata,
    required bool generateMergeMethod,
  }) {
    if (dataClass is UniversalEnumClass) {
      return dartEnumDtoTemplate(
        dataClass,
        jsonSerializer: jsonSerializer,
        unknownEnumValue: unknownEnumValue,
        markFileAsGenerated: markFilesAsGenerated,
      );
    } else if (dataClass is UniversalComponentClass) {
      if (dataClass.typeDef) {
        return dartTypeDefTemplate(
          dataClass,
          jsonSerializer: jsonSerializer,
          classFileOverrides: _fileOverridesOrNull,
        );
      }
      return switch (jsonSerializer) {
        JsonSerializer.freezed => dartFreezedDtoTemplate(
          dataClass,
          generateValidator: generateValidator,
          includeIfNull: includeIfNull,
          fallbackUnion: fallbackUnion,
          customMetadata: customMetadata,
          generateMergeMethod: generateMergeMethod,
          customMetadataImportPath: config.converterHydratedModelPrefix,
          classFileOverrides: _fileOverridesOrNull,
        ),
        JsonSerializer.jsonSerializable => dartJsonSerializableDtoTemplate(
          dataClass,
          markFileAsGenerated: markFilesAsGenerated,
          includeIfNull: includeIfNull,
          fallbackUnion: fallbackUnion,
          generateMergeMethod: generateMergeMethod,
        ),
        JsonSerializer.dartMappable => dartDartMappableDtoTemplate(
          dataClass,
          markFileAsGenerated: markFilesAsGenerated,
          fallbackUnion: fallbackUnion,
          generateMergeMethod: generateMergeMethod,
        ),
      };
    }
    throw ArgumentError('Unknown type exception');
  }

  String _resolveDtoFileBaseName(UniversalDataClass dataClass) {
    return dataClass.name.toSnake;
  }

  /// Return [GeneratedFile] for the union dispatcher converter, or null.
  ///
  /// Generates a class that dispatches `toDb()` / `fromDb()` calls to the
  /// appropriate individual variant converter using exhaustive switch expressions.
  ///
  /// Only generated for `Db*` prefixed classes that are union roots
  /// (i.e., have a non-null `discriminator`) and whose corresponding hydrated
  /// union class is also present in the spec.
  GeneratedFile? fillUnionConverterContent(UniversalDataClass dataClass) {
    if (!config.generateConverters) return null;
    if (dataClass is! UniversalComponentClass) return null;
    if (!dataClass.name.startsWith('Db')) return null;
    if (dataClass.discriminator == null) return null;

    final dbUnionClassName = dataClass.name.toPascal;

    // Derive hydrated class name: 'DbFile' → 'File', 'Dbai' → 'Ai'
    final hydratedUnionClassName = dbUnionClassName.substring(2).toPascal;

    // Ensure the hydrated union class exists and is itself a discriminated union
    final hydratedUnionClass = _dataClassMap[hydratedUnionClassName.toLowerCase()];
    if (hydratedUnionClass == null || hydratedUnionClass.discriminator == null) {
      return null;
    }

    // Family unions dispatch on the leaf classes from each side's own
    // discriminator mapping; legacy unions dispatch on the Freezed clone
    // classes (`<Union><Factory>`).
    final dbIsFamily =
        _unionFamilies.familyMemberNames.contains(dataClass.name);
    final hydratedIsFamily =
        _unionFamilies.familyMemberNames.contains(hydratedUnionClass.name);

    final variants = <UnionVariantConverterInfo>[];

    for (final entry in dataClass.discriminator!.discriminatorValueToRefMapping.entries) {
      final discriminatorValue = entry.key; // e.g., 'audio', 'url_preview'
      final dbRefName = entry.value.toPascal; // e.g., 'DbAudioFile'

      // Factory name is the camelCase discriminator value (matches Freezed factory)
      final factoryName = discriminatorValue.toCamel; // e.g., 'audio', 'urlPreview'

      // Variant class dispatched on the DB side: the leaf itself for family
      // unions ('DbAudioFile'), otherwise the clone ('DbFileAudio').
      final dbVariantFreezedClass = dbIsFamily
          ? dbRefName
          : '$dbUnionClassName${factoryName.toPascal}';
      final hydratedRefName = hydratedUnionClass
          .discriminator!.discriminatorValueToRefMapping[discriminatorValue];
      final hydratedVariantFreezedClass =
          (hydratedIsFamily && hydratedRefName != null)
              ? hydratedRefName.toPascal // e.g., 'AudioFile'
              : '$hydratedUnionClassName${factoryName.toPascal}'; // e.g., 'FileAudio'

      // Converter class name follows the schema name, e.g., 'DbAudioFileConverter'
      final converterClassName = '${dbRefName}Converter';

      // Static field name on the dispatcher, e.g., '_audio', '_urlPreview'
      final staticFieldName = '_$factoryName';

      // Detect any extra hydrated params the variant converter's fromDb() needs.
      // The hydrated model filename mirrors the individual converter pattern:
      // strip the 'Db' prefix from the DB ref name (e.g., 'DbCustomAi' → 'CustomAi' → 'custom_ai').
      // This matches what fillConverterContent uses and avoids looking for Freezed
      // variant class names (e.g., 'AiCustom' → 'ai_custom.dart') which don't exist.
      final hydratedModelNameForLookup = dbRefName.substring(2); // e.g., 'CustomAi'
      final dbVariantClass = _dataClassMap[dbRefName.toLowerCase()];
      final fromDbParams = dbVariantClass != null
          ? _computeVariantHydratedParams(dbVariantClass, hydratedModelNameForLookup)
          : const <HydratedField>[];

      variants.add(UnionVariantConverterInfo(
        factoryName: factoryName,
        staticFieldName: staticFieldName,
        converterClassName: converterClassName,
        dbVariantFreezedClass: dbVariantFreezedClass,
        hydratedVariantFreezedClass: hydratedVariantFreezedClass,
        fromDbParams: fromDbParams,
      ));
    }

    if (variants.isEmpty) return null;

    return GeneratedFile(
      name: 'converters/${dataClass.name.toSnake}_converter.dart',
      content: dartUnionConverterTemplate(
        dbUnionClassName: dbUnionClassName,
        hydratedUnionClassName: hydratedUnionClassName,
        variants: variants,
        hydratedModelImport: config.converterHydratedModelPrefix!,
        // Sealed family unions carry an Unknown fallback; pass both sides so
        // the dispatcher round-trips unknown variants instead of throwing.
        hydratedUnknownClass:
            hydratedIsFamily ? '${hydratedUnionClassName}Unknown' : null,
        dbUnknownClass: dbIsFamily ? '${dbUnionClassName}Unknown' : null,
      ),
    );
  }

  /// Compute the extra hydrated parameters that a variant converter's `fromDb()`
  /// requires, by running the same field-detection used in [fillConverterContent].
  ///
  /// [hydratedModelName] is the plain model name (e.g. `'CustomAi'`) derived by
  /// stripping the `Db` prefix from the DB variant ref name.  This mirrors the
  /// lookup strategy in [fillConverterContent] and avoids looking for Freezed
  /// variant class names (e.g. `AiCustom`) which have no corresponding file.
  List<HydratedField> _computeVariantHydratedParams(
    UniversalComponentClass dbVariantClass,
    String hydratedModelName,
  ) {
    final hydratedModelFileName =
        _resolveModelFileBaseName(hydratedModelName.toSnake);
    final hydratedModelPath =
        '${config.outputDirectory}/${config.converterHydratedModelsDirectory}/$hydratedModelFileName.dart';

    if (!File(hydratedModelPath).existsSync()) return const [];

    final hydratedFields = HydratedModelParser().parseFields(
      hydratedModelPath,
      className: hydratedModelName.toPascal,
    );
    return detectVariantHydratedParams(
      dbVariantClass.parameters.toList(),
      hydratedFields,
    );
  }

  /// Return [GeneratedFile] generated from given [UniversalRestClient]
  GeneratedFile fillRestClientContent(UniversalRestClient restClient) {
    final postfix = config.clientPostfix ?? 'Client';
    final fileName = '${restClient.name}_$postfix'.toSnake;
    final folderName = config.putClientsInFolder
        ? 'clients'
        : restClient.name.toSnake;

    return GeneratedFile(
      name: '$folderName/$fileName.dart',
      content: dartRetrofitClientTemplate(
        restClient: restClient,
        name: restClient.name.toPascal + postfix.toPascal,
        defaultContentType: config.defaultContentType,
        jsonSerializer: config.jsonSerializer,
        mergeClients: config.mergeOutputs,
        extrasParameterByDefault: config.extrasParameterByDefault,
        dioOptionsParameterByDefault: config.dioOptionsParameterByDefault,
        originalHttpResponse: config.originalHttpResponse,
        generatePathConstants: config.generatePathConstants,
        fileName: fileName,
        classFileOverrides: _fileOverridesOrNull,
      ),
    );
  }

  /// Return [GeneratedFile] root client generated from given clients
  GeneratedFile fillRootClient(Iterable<UniversalRestClient> clients) {
    final rootClientName = config.rootClientName ?? 'RestClient';
    final postfix = config.clientPostfix ?? 'Client';
    final clientsNames = clients.map((c) => c.name.toPascal).toSet();
    // Create a map from Pascal names to snake names
    final clientsNameMap = <String, String>{
      for (final client in clients) client.name.toPascal: client.name.toSnake,
    };

    return GeneratedFile(
      name: '${rootClientName.toSnake}.dart',
      content: dartRootClientTemplate(
        openApiInfo: info,
        name: rootClientName,
        clientsNames: clientsNames,
        postfix: postfix.toPascal,
        putClientsInFolder: config.putClientsInFolder,
        markFileAsGenerated: config.markFilesAsGenerated,
        clientsNameMap: clientsNameMap,
      ),
    );
  }

  /// Return [GeneratedFile] with all exports from all files
  GeneratedFile fillExportFile({
    required List<GeneratedFile> restClients,
    required List<GeneratedFile> dataClasses,
    required GeneratedFile? rootClient,
  }) {
    return GeneratedFile(
      name: 'export.dart',
      content: dartExportFileTemplate(
        restClients: restClients,
        dataClasses: dataClasses,
        rootClient: rootClient,
      ),
    );
  }

  GeneratedFile fillMergedOutputs(List<GeneratedFile> outputs) {
    final dartImports = <String>{};
    final packageImports = <String, List<String>>{};
    final lines = <String>[];
    for (final output in outputs) {
      for (final line in output.content.split('\n')) {
        if (line == '') {
          if (lines.isNotEmpty && lines.last != '') {
            lines.add('');
          }
        } else if (line.startsWith('import')) {
          // Separate Dart and package imports in Dart and ignore local imports
          if (line.startsWith("import 'package:")) {
            final packageKey = _extractPackageKey(line);
            final importLine = line;

            final existing = packageImports[packageKey] ?? [];
            if (!existing.contains(importLine)) {
              packageImports.putIfAbsent(packageKey, () => []).add(importLine);
            }
          } else if (line.startsWith("import 'dart:")) {
            dartImports.add(line);
          }
        } else if (line.startsWith('export')) {
          // ignore export lines in Dart (they reference files that are now merged)
        } else if (line.startsWith('part ')) {
          // ignore part lines in Dart
        } else {
          lines.add(line);
        }
      }
    }
    final buffer = StringBuffer(generatedFileComment());

    if (dartImports.isNotEmpty) {
      for (final import in dartImports.toList()..sort()) {
        buffer.writeln(import);
      }
      buffer.writeln();
    }

    if (packageImports.isNotEmpty) {
      final allImports = packageImports.values.expand((list) => list).toList()
        ..sort();
      for (final import in allImports) {
        buffer.writeln(import);
      }
      buffer.writeln();
    }

    if (config.jsonSerializer == JsonSerializer.freezed) {
      buffer.writeln("part '${config.name}.freezed.dart';");
    } else if (config.jsonSerializer == JsonSerializer.dartMappable) {
      buffer.writeln("part '${config.name}.mapper.dart';");
    }
    buffer
      ..writeln("part '${config.name}.g.dart';")
      ..writeln();

    for (final line in lines) {
      buffer.writeln(line);
    }
    return GeneratedFile(
      name: '${config.name}.dart',
      content: buffer.toString(),
    );
  }

  List<GeneratedFile> addGeneratedFileComments(List<GeneratedFile> files) {
    final comment = generatedFileComment();
    return files
        .map(
          (file) => GeneratedFile(
            name: file.name,
            content: '$comment${file.content}',
          ),
        )
        .toList();
  }

  String _extractPackageKey(String importLine) {
    final match = RegExp(r"import '([^']+)'").firstMatch(importLine);
    return match?.group(1) ?? importLine;
  }
}
