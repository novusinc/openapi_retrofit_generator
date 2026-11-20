part of 'universal_data_class.dart';

typedef Discriminator = ({
  /// The name of the property that is used to discriminate the oneOf variants
  String propertyName,

  /// The mapping of the property value to the ref
  Map<String, String> discriminatorValueToRefMapping,

  /// The list of properties stored for each ref
  Map<String, Set<UniversalType>> refProperties,
});

typedef DiscriminatorValue = ({
  /// The name of the property that is used to discriminate the oneOf variants
  String propertyValue,

  /// -
  String parentClass,
});

/// Universal template for containing information about component
@immutable
final class UniversalComponentClass extends UniversalDataClass {
  /// Constructor for [UniversalComponentClass]
  const UniversalComponentClass({
    required super.name,
    required this.imports,
    required this.parameters,
    this.allOf,
    this.typeDef = false,
    this.discriminator,
    this.discriminatorValue,
    this.undiscriminatedUnionVariants,
    this.partialUpdate = false,
    this.compositeIdSegments,
    this.compositeIdDomain,
    super.description,
  });

  /// List of additional references to components
  final Set<String> imports;

  /// The import of this class
  String get import => name.toPascal;

  /// List of class fields
  final Set<UniversalType> parameters;

  /// Temp field for containing info about `allOf` for future processing
  final ({Set<String> refs, Set<UniversalType> properties})? allOf;

  /// When using a discriminated oneOf, this contains the information about the property name, the mapping of the ref to the property name, and the properties of each of the oneOf variants
  final Discriminator? discriminator;

  /// When using a discriminated oneOf, where this class is one of the discriminated values, this field contains the information about the parent
  final DiscriminatorValue? discriminatorValue;

  /// When using an undiscriminated oneOf/anyOf, this contains a mapping of
  /// variant key (usually referenced component name or synthesized inline name)
  /// to the set of properties that the variant exposes. Generators can use
  /// this to create sealed unions with factories and defer deserialization.
  final Map<String, Set<UniversalType>>? undiscriminatedUnionVariants;

  /// Whether or not this schema is a basic type
  /// "Date": {
  ///   "type": "string",
  ///   "format": "date"
  /// }
  ///  must be DateTime instead of its own class
  final bool typeDef;

  /// Whether the schema is marked as a partial-update request
  /// (`"x-partial-update": true`).
  ///
  /// A partial update's value fields are presence-tracked: a field left out is
  /// left alone, and one sent as null is cleared. See
  /// `resolvePartialUpdateClasses`, which also derives the unions over them.
  final bool partialUpdate;

  /// The segments a document's composite id is hashed from, in hash order, as the
  /// schema declares them (`"x-composite-id-fields": ["channel_id", "literal:human",
  /// "user_id"]`), or null when it declares none. A segment is a property name, or
  /// [compositeIdLiteralPrefix] and a text that is hashed as it stands (the
  /// channel-member variants hash `human` / `ai` between their two fields).
  ///
  /// The freezed template emits the property segments as a `compositeIdFields`
  /// constant built from the field key constants, and, with a [compositeIdDomain] and
  /// a configured `composite_id_function`, a typed `makeId`, so a consumer that
  /// derives an id never hand-types the list, its order or a literal.
  final List<String>? compositeIdSegments;

  /// The hash domain of the composite id (`"x-composite-id-domain": "channel_members"`),
  /// or null when the schema declares none. A `makeId` needs it.
  final String? compositeIdDomain;

  /// Marks a [compositeIdSegments] entry that is text to hash, not a property.
  static const compositeIdLiteralPrefix = 'literal:';

  /// The property names among [compositeIdSegments], in hash order: the literal
  /// segments are not properties, so they are not here. Null when there are no
  /// segments.
  List<String>? get compositeIdFields {
    final segments = compositeIdSegments;
    if (segments == null) return null;
    return List<String>.unmodifiable(
      segments.where((s) => !s.startsWith(compositeIdLiteralPrefix)),
    );
  }

  /// Creates a copy of this [UniversalComponentClass] but with the given fields replaced with the new values.
  UniversalComponentClass copyWith({
    String? name,
    Set<String>? imports,
    Set<UniversalType>? parameters,
    ({Set<String> refs, Set<UniversalType> properties})? allOf,
    bool? typeDef,
    Discriminator? discriminator,
    DiscriminatorValue? discriminatorValue,
    Map<String, Set<UniversalType>>? undiscriminatedUnionVariants,
    bool? partialUpdate,
    List<String>? compositeIdSegments,
    String? compositeIdDomain,
    String? description,
  }) {
    return UniversalComponentClass(
      name: name ?? super.name,
      imports: imports ?? this.imports,
      parameters: parameters ?? this.parameters,
      allOf: allOf ?? this.allOf,
      typeDef: typeDef ?? this.typeDef,
      discriminator: discriminator ?? this.discriminator,
      discriminatorValue: discriminatorValue ?? this.discriminatorValue,
      undiscriminatedUnionVariants:
          undiscriminatedUnionVariants ?? this.undiscriminatedUnionVariants,
      partialUpdate: partialUpdate ?? this.partialUpdate,
      compositeIdSegments: compositeIdSegments ?? this.compositeIdSegments,
      compositeIdDomain: compositeIdDomain ?? this.compositeIdDomain,
      description: description ?? super.description,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UniversalComponentClass &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality().equals(imports, other.imports) &&
          const DeepCollectionEquality().equals(parameters, other.parameters) &&
          allOf == other.allOf &&
          typeDef == other.typeDef &&
          partialUpdate == other.partialUpdate &&
          const DeepCollectionEquality().equals(
            compositeIdSegments,
            other.compositeIdSegments,
          ) &&
          compositeIdDomain == other.compositeIdDomain &&
          const DeepCollectionEquality().equals(
            undiscriminatedUnionVariants,
            other.undiscriminatedUnionVariants,
          );

  @override
  int get hashCode =>
      imports.hashCode ^
      parameters.hashCode ^
      allOf.hashCode ^
      typeDef.hashCode ^
      partialUpdate.hashCode ^
      const DeepCollectionEquality().hash(compositeIdSegments) ^
      compositeIdDomain.hashCode ^
      undiscriminatedUnionVariants.hashCode;

  @override
  String toString() =>
      'UniversalComponentClass(imports: $imports, '
      'parameters: $parameters, '
      'allOf: $allOf, '
      'undiscriminatedUnionVariants: $undiscriminatedUnionVariants, '
      'typeDef: $typeDef, '
      'partialUpdate: $partialUpdate, '
      'compositeIdSegments: $compositeIdSegments, '
      'compositeIdDomain: $compositeIdDomain)';
}
