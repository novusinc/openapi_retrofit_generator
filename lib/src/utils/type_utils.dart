import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';

/// Converts [UniversalType] to Dart type
extension UniversalTypeX on UniversalType {
  /// Converts [UniversalType] to concrete Dart type
  String toSuitableType({bool multiPart = false}) {
    final sb = StringBuffer();

    // Append all collection prefixes, e.g., "List<" or "Map<KeyType, ".
    // When mapKeyType is set (from OpenAPI propertyNames), the first map
    // collection uses the enum key type instead of the default "String".
    for (final collection in wrappingCollections) {
      if (collection.isMap && mapKeyType != null) {
        sb.write(collection.collectionPrefixWithKeyType(mapKeyType));
      } else {
        sb.write(collection.collectionPrefix);
      }
    }

    // Get the base type string (e.g., "int", "String", "MyClass").
    // IMPORTANT: This assumes that `type.toDartType(format)` returns the plain
    // base type name WITHOUT any '?' characters.
    // Nullability is handled by the logic below.
    final baseTypeName = type.toDartType(format: format, multiPart: multiPart);
    sb.write(baseTypeName);

    // Determine if a '?' should be appended to the baseTypeName.
    var addQuestionMarkToBaseTypeName = false;

    if (wrappingCollections.isNotEmpty) {
      // If it's a collection, the item's nullability is determined by the
      // 'itemIsNullable' property of the innermost collection.
      if (wrappingCollections.last.itemIsNullable) {
        addQuestionMarkToBaseTypeName = true;
      }
    } else {
      // If it's not a collection, the type's nullability is determined by
      // UniversalType.nullable and whether it has a default value.
      if (nullable || referencedNullable) {
        addQuestionMarkToBaseTypeName = true;
      }
    }

    if (addQuestionMarkToBaseTypeName) {
      // Special case for Dart: 'dynamic?' is not valid, it's just 'dynamic'.
      if (baseTypeName != 'dynamic') {
        sb.write('?');
      }
    }

    // Append closing brackets and nullability suffix for the collections themselves.
    // Iterates in reverse to close generics from innermost to outermost.
    for (final collection in wrappingCollections.reversed) {
      sb
        ..write('>') // Closing generic bracket
        ..write(
          collection.collectionSuffixQuestionMark,
        ); // '?' for the collection itself
    }

    return sb.toString();
  }
}
