import 'package:openapi_retrofit_generator/src/generator/exception/generator_exception.dart';
import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';

/// A connected group of eligible discriminated unions and the leaf classes
/// they reference.
///
/// Dart requires every subtype of a `sealed` class to live in the same
/// library, so when `sealed_ref_unions` is enabled a whole family (all unions
/// that transitively share a leaf, plus all their leaves) is emitted into a
/// single file named after the primary union.
class UnionFamily {
  /// Creates a [UnionFamily].
  const UnionFamily({
    required this.unions,
    required this.leaves,
    required this.fileBaseName,
  });

  /// The union classes in this family, primary first.
  ///
  /// Primary = the union with the most variants (ties broken by name), which
  /// also names the generated file.
  final List<UniversalComponentClass> unions;

  /// The leaf (variant) classes referenced by [unions], sorted by name.
  final List<UniversalComponentClass> leaves;

  /// Snake-case base name of the generated family file (no extension).
  final String fileBaseName;

  /// The primary union that names the family file.
  UniversalComponentClass get primary => unions.first;

  /// Raw schema names of every class emitted inside the family file.
  Set<String> get memberNames => {
    for (final u in unions) u.name,
    for (final l in leaves) l.name,
  };
}

/// The result of resolving union families for one generation run.
class UnionFamilyResolution {
  /// Creates a [UnionFamilyResolution].
  const UnionFamilyResolution({
    required this.families,
    required this.classFileOverrides,
    required this.familyMemberNames,
  });

  /// An empty resolution (feature disabled or no eligible unions).
  static const none = UnionFamilyResolution(
    families: [],
    classFileOverrides: {},
    familyMemberNames: {},
  );

  /// All resolved families.
  final List<UnionFamily> families;

  /// Maps the snake-case file base a class would normally be generated into
  /// (e.g. `human_channel_member`) to the family file base that now hosts it
  /// (e.g. `channel_member`).
  ///
  /// Used to redirect imports and on-disk model lookups; classes that keep
  /// their own file are absent from the map.
  final Map<String, String> classFileOverrides;

  /// Raw schema names of every class that is emitted inside a family file
  /// (unions and leaves) and therefore must NOT get an individual model file.
  final Set<String> familyMemberNames;
}

/// Resolves which discriminated unions are eligible for sealed-ref-union
/// emission and groups them into [UnionFamily]s (connected components over
/// shared leaves).
///
/// A union is eligible when:
/// - it is discriminated (has a `discriminator`) and has no undiscriminated
///   variants, and
/// - every discriminator mapping ref resolves to an existing top-level
///   component class that is itself neither a union nor a typedef/enum.
///
/// Ineligible unions keep the legacy clone emission and are not part of any
/// family (even when they share a leaf with an eligible union).
UnionFamilyResolution resolveUnionFamilies(
  List<UniversalDataClass> dataClasses,
) {
  final classByName = <String, UniversalDataClass>{
    for (final dc in dataClasses) dc.name: dc,
  };

  // 1. Collect eligible unions and their leaf classes.
  final eligibleUnions = <UniversalComponentClass>[];
  final unionLeaves = <String, Set<String>>{};
  for (final dc in dataClasses) {
    if (dc is! UniversalComponentClass) continue;
    final discriminator = dc.discriminator;
    if (discriminator == null) continue;
    if (dc.undiscriminatedUnionVariants?.isNotEmpty ?? false) continue;

    final refs = discriminator.discriminatorValueToRefMapping.values;
    final allRefsAreLeafComponents =
        refs.isNotEmpty &&
        refs.every((ref) {
          final refed = classByName[ref];
          return refed is UniversalComponentClass &&
              !refed.typeDef &&
              refed.discriminator == null &&
              (refed.undiscriminatedUnionVariants?.isEmpty ?? true) &&
              // Inline variants are materialized with a discriminatorValue;
              // only genuine top-level components keep it null.
              refed.discriminatorValue == null &&
              discriminator.refProperties.containsKey(ref);
        });
    if (!allRefsAreLeafComponents) continue;

    eligibleUnions.add(dc);
    unionLeaves[dc.name] = refs.toSet();
  }

  if (eligibleUnions.isEmpty) return UnionFamilyResolution.none;

  // The generated `<Union>Unknown` fallback class must not collide with a
  // real schema. Fail loudly instead of silently emitting a duplicate class.
  for (final union in eligibleUnions) {
    final unknownName = '${union.name.toPascal}Unknown';
    final collision = dataClasses.any((dc) => dc.name.toPascal == unknownName);
    if (collision) {
      throw GeneratorException(
        "Schema '$unknownName' collides with the generated unknown-variant "
        "fallback class for union '${union.name}'. Rename the schema or "
        'disable sealed_ref_unions.',
      );
    }
  }

  // 2. Union-find over eligible unions: unions sharing a leaf merge.
  final parent = <String, String>{
    for (final u in eligibleUnions) u.name: u.name,
  };
  String find(String name) {
    var root = name;
    while (parent[root] != root) {
      root = parent[root]!;
    }
    // Path compression.
    var current = name;
    while (parent[current] != root) {
      final next = parent[current]!;
      parent[current] = root;
      current = next;
    }
    return root;
  }

  void merge(String a, String b) {
    final rootA = find(a);
    final rootB = find(b);
    if (rootA != rootB) parent[rootB] = rootA;
  }

  final leafOwner = <String, String>{};
  for (final union in eligibleUnions) {
    for (final leaf in unionLeaves[union.name]!) {
      final owner = leafOwner[leaf];
      if (owner == null) {
        leafOwner[leaf] = union.name;
      } else {
        merge(owner, union.name);
      }
    }
  }

  // 3. Materialize families, primary first (most leaves, tie-break by name).
  final groups = <String, List<UniversalComponentClass>>{};
  for (final union in eligibleUnions) {
    groups.putIfAbsent(find(union.name), () => []).add(union);
  }

  final families = <UnionFamily>[];
  for (final group in groups.values) {
    group.sort((a, b) {
      final byLeafCount = unionLeaves[b.name]!.length.compareTo(
        unionLeaves[a.name]!.length,
      );
      return byLeafCount != 0 ? byLeafCount : a.name.compareTo(b.name);
    });

    final leafNames = <String>{
      for (final union in group) ...unionLeaves[union.name]!,
    };
    final leaves =
        leafNames
            .map((name) => classByName[name]! as UniversalComponentClass)
            .toList()
          ..sort((a, b) => a.name.compareTo(b.name));

    families.add(
      UnionFamily(
        unions: group,
        leaves: leaves,
        fileBaseName: group.first.name.toSnake,
      ),
    );
  }
  families.sort((a, b) => a.fileBaseName.compareTo(b.fileBaseName));

  // 4. Import/lookup overrides: any family member that would have had its own
  // file now lives in the family file.
  final classFileOverrides = <String, String>{};
  final familyMemberNames = <String>{};
  for (final family in families) {
    for (final member in family.memberNames) {
      familyMemberNames.add(member);
      final ownBase = member.toSnake;
      if (ownBase != family.fileBaseName) {
        classFileOverrides[ownBase] = family.fileBaseName;
      }
    }
  }

  return UnionFamilyResolution(
    families: families,
    classFileOverrides: classFileOverrides,
    familyMemberNames: familyMemberNames,
  );
}
