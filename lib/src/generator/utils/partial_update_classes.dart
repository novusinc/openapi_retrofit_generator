import 'package:openapi_retrofit_generator/src/generator/exception/generator_exception.dart';
import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';

/// The Pascal-case names of every partial-update request class in [dataClasses].
///
/// A class is a partial update when its schema is marked
/// `"x-partial-update": true` ([UniversalComponentClass.partialUpdate]). A union
/// is one when **every** variant is marked: it only dispatches to them, so it
/// patches through them. A union isn't marked itself because a spec's unions
/// are often copied inline into each field that uses them.
///
/// Throws [GeneratorException] for a union whose variants are only partly
/// marked: it would be half patch, half plain model, which no generated code
/// can represent.
///
/// One set answers both questions the templates ask: which classes get
/// presence-tracked fields and `toPatch()`, and which nested values serialize
/// with `toNestedPatch()`. Deriving both from it keeps them from disagreeing.
Set<String> resolvePartialUpdateClasses(List<UniversalDataClass> dataClasses) {
  final components = dataClasses.whereType<UniversalComponentClass>().toList();
  final marked = {
    for (final c in components)
      if (c.partialUpdate) c.name.toPascal,
  };

  final unions = <String>{};
  for (final union in components) {
    final variants = _variantNames(union);
    if (variants.isEmpty) continue;

    final markedVariants = variants.where(marked.contains).toList();
    if (markedVariants.isEmpty) continue;
    if (markedVariants.length != variants.length) {
      final unmarked = variants.where((v) => !marked.contains(v)).toList();
      throw GeneratorException(
        'Union ${union.name} mixes partial-update variants '
        '(${markedVariants.join(', ')}) with unmarked ones '
        '(${unmarked.join(', ')}). Mark all of its variants '
        '"x-partial-update": true, or none.',
      );
    }
    unions.add(union.name.toPascal);
  }

  return {...marked, ...unions};
}

/// The Pascal-case names of [union]'s variants; empty when it isn't a union.
List<String> _variantNames(UniversalComponentClass union) {
  final discriminator = union.discriminator;
  if (discriminator != null) {
    return discriminator.discriminatorValueToRefMapping.values
        .map((ref) => ref.toPascal)
        .toSet()
        .toList();
  }
  return [...?union.undiscriminatedUnionVariants?.keys.map((k) => k.toPascal)];
}
