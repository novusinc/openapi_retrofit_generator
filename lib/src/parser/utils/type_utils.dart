import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/model/universal_data_class.dart';
import 'package:openapi_retrofit_generator/src/parser/utils/dart_keywords.dart';

/// Extension for utils
extension StringTypeX on String {
  /// Convert string to dart type
  String toDartType({String? format, bool multiPart = false}) => switch (this) {
    'integer' => 'int',
    'number' => switch (format) {
      'float' || 'double' => 'double',
      // This can happen
      'string' => 'String',
      _ => 'num',
    },
    'string' => switch (format) {
      'binary' || 'byte' => multiPart ? 'MultipartFile' : 'Uint8List',
      'date' || 'date-time' => 'DateTime',
      _ => 'String',
    },
    'file' => multiPart ? 'MultipartFile' : 'Uint8List',
    'boolean' => 'bool',
    'object' || 'null' => 'dynamic',
    _ => startsWith('[') ? _parseTypeList(this) : this,
  };

  String _parseTypeList(String types) {
    final typesList = types.replaceAll(RegExp(r'[\[\] ]'), '').split(',');
    if (typesList.length == 2 && typesList.contains('null')) {
      final type = typesList.firstWhere((e) => e != 'null').toDartType();
      return '$type?';
    }
    return 'dynamic';
  }
}

const _valueConst = 'value';
const _enumConst = 'enum';
const _objectConst = 'object';

int _uniqueObjectCounter = 0;
int _uniqueEnumCounter = 0;

/// In general, it is worth putting the processing of class names, methods, fields.
/// in some separate layer from the parser and templates, so as not to write such crutches with a reset
/// The reset itself is needed to update the status during tests.
void resetUniqueNameCounters() {
  _uniqueObjectCounter = 0;
  _uniqueEnumCounter = 0;
}

/// Unique name for object classes
String uniqueName({bool isEnum = false}) {
  final String name;
  if (isEnum) {
    name = '$_enumConst$_uniqueEnumCounter';
    _uniqueEnumCounter++;
  } else {
    name = '$_objectConst$_uniqueObjectCounter';
    _uniqueObjectCounter++;
  }
  return name;
}

final _enumNameRegExp = RegExp(r'^[a-zA-Z\d_\s-]*$');
final _startWithNumberRegExp = RegExp(r'^-?\d+');

/// Protect default enum value from incorrect symbols, keywords, etc.
String? protectDefaultEnum(Object? name) =>
    protectDefaultValue(name, isEnum: true);

/// Protect default value from incorrect symbols, keywords, etc.
String? protectDefaultValue(
  Object? name, {
  String? type,
  bool isEnum = false,
  bool isArray = false,
  bool dart = true,
}) {
  final nameStr = name?.toString();
  if (nameStr == null) {
    return null;
  }

  /// Handle empty maps/objects as default values
  if (nameStr.startsWith('{') && nameStr.endsWith('}')) {
    final innerContent = nameStr.substring(1, nameStr.length - 1).trim();
    if (innerContent.isEmpty) {
      return '{}';
    }
    // Complex JSON objects are not supported
    return null;
  }

  if (nameStr.startsWith('[') && nameStr.endsWith(']')) {
    final innerContent = nameStr.substring(1, nameStr.length - 1).trim();
    if (innerContent.isEmpty) {
      return '[]';
    }

    final items = innerContent
        .split(',')
        .map((item) {
          final trimmedItem = item.trim();
          if (trimmedItem.isEmpty) return null;

          if (type == 'String' || type == 'string') {
            final quote = dart ? "'" : '"';
            if (trimmedItem.startsWith(quote) && trimmedItem.endsWith(quote)) {
              return trimmedItem;
            }
            return '$quote${trimmedItem.replaceAll(quote, dart ? r"\'" : r'\"')}$quote';
          }

          return trimmedItem;
        })
        .where((item) => item != null)
        .join(', ');

    return '[$items]';
  }

  if (isEnum) {
    return protectEnumItemsNames([nameStr]).first.name;
  }

  if (isArray) {
    return null;
  }

  if (type == 'string') {
    final quote = dart ? "'" : '"';
    return '$quote${nameStr.replaceAll(quote, dart ? r"\'" : r'\"')}$quote';
  }

  return nameStr;
}

/// Protect enum items names from incorrect symbols, keywords, etc.
Set<UniversalEnumItem> protectEnumItemsNames(
  Iterable<String> names, {
  Iterable<String>? descriptions,
}) {
  var counter = 0;
  final items = <UniversalEnumItem>{};
  final descList = descriptions?.toList();

  String uniqueEnumItemName() {
    final newName = 'undefined $counter';
    counter++;
    return newName;
  }

  String numberEnumItemName(String name) {
    final startsWithMinus = name.startsWith('-');
    final newName = 'value ${startsWithMinus ? 'minus' : ''} $name';
    return newName;
  }

  String leadingDashToMinus(String name) {
    if (name.startsWith('-')) {
      return 'minus ${name.substring(1)}';
    }
    return name;
  }

  var index = 0;
  for (final name in names) {
    final camelName = name.toCamel;
    final (newName, renameDescription) = switch (name) {
      '' => (
        uniqueEnumItemName(),
        'Incorrect name has been replaced. Original name: empty string.',
      ),
      _
          when _startWithNumberRegExp.hasMatch(name) &&
              _enumNameRegExp.hasMatch(numberEnumItemName(name).toCamel) =>
        (numberEnumItemName(name), null),
      // Enum values with separator characters (dots, slashes, etc.) that
      // can be converted to valid camelCase Dart identifiers.
      // E.g., "health.check" → "healthCheck", "ai_indicator.update" → "aiIndicatorUpdate"
      _ when !_enumNameRegExp.hasMatch(name) &&
              camelName.isNotEmpty &&
              _enumNameRegExp.hasMatch(camelName) =>
        reservedFieldNames.contains(camelName)
            ? (
                '$_valueConst $camelName',
                'The name has been replaced because it contains a keyword. Original name: `$name`.',
              )
            : (name, null),
      _ when !_enumNameRegExp.hasMatch(name) => (
        uniqueEnumItemName(),
        'Incorrect name has been replaced. Original name: `$name`.',
      ),
      _ when reservedFieldNames.contains(camelName) => (
        '$_valueConst ${leadingDashToMinus(name)}',
        'The name has been replaced because it contains a keyword. Original name: `$name`.',
      ),
      _ => (leadingDashToMinus(name), null),
    };
    // Use x-enum-descriptions if provided, otherwise use rename description
    final itemDescription = descList != null && index < descList.length
        ? descList[index]
        : renameDescription;
    items.add(
      UniversalEnumItem(
        name: newName,
        jsonKey: name,
        description: itemDescription,
      ),
    );
    index++;
  }

  return items;
}

/// Protect enum items names from incorrect symbols, keywords, etc.
/// Optionally accepts descriptions for each enum item.
Set<UniversalEnumItem> protectEnumItemsNamesAndValues(
  Iterable<String> names,
  Iterable<String> values, {
  Iterable<String>? descriptions,
}) {
  final items = <UniversalEnumItem>{};
  final nameList = names.toList();
  final valueList = values.toList();
  final descList = descriptions?.toList();

  for (var i = 0; i < nameList.length; i++) {
    items.add(
      UniversalEnumItem(
        name: nameList[i],
        jsonKey: valueList[i],
        description: descList != null && i < descList.length
            ? descList[i]
            : null,
      ),
    );
  }

  return items;
}

/// Find the enum item name by its json key (raw value).
/// This is used to resolve default values when x-enumNames is used.
/// Returns null if no matching item is found.
String? findEnumNameByJsonKey(Set<UniversalEnumItem> items, String? jsonKey) {
  if (jsonKey == null) return null;
  for (final item in items) {
    if (item.jsonKey == jsonKey) {
      return item.name;
    }
  }
  return null;
}

final _nameRegExp = RegExp(r'^[a-zA-Z_-][a-zA-Z\d_-]*$');

String _normalizeInvalidName(String name) {
  var normalized = name;

  // Step 1: Remove leading numbers: 123_number -> _number
  normalized = normalized.replaceAll(RegExp(r'^\d+'), '');

  // Step 2: Remove special characters except underscore, dash, letters, numbers
  normalized = normalized.replaceAll(RegExp(r'[^\w\s-]'), '');

  // Step 3: Remove leading underscores/dashes that resulted from cleanup
  // Example: 123_number -> _number -> number
  // Note: This only affects INVALID names going through normalization
  // Valid names like "private" never reach this function
  normalized = normalized.replaceAll(RegExp(r'^[_-]+'), '');

  // Step 4: Convert to camelCase
  normalized = normalized.toCamel;

  return normalized;
}

/// Protect name from incorrect symbols, keywords, etc.
(String? newName, String? description) protectName(
  String? name, {
  String? description,
  bool uniqueIfNull = false,
  bool isEnum = false,
  bool isMethod = false,
}) {
  final (newName, error) = switch (name) {
    null || '' =>
      uniqueIfNull
          ? (
              uniqueName(isEnum: isEnum),
              'Name not received and was auto-generated.',
            )
          : (null, 'Name not received - field will be skipped.'),
    _
        when name.startsWith(r'$') &&
            name.split('').where((e) => e == r'$').length == 1 =>
      (name.substring(1), null),
    _ when !_nameRegExp.hasMatch(name) => () {
      final normalized = name.toCamel;
      if (normalized.isNotEmpty && _nameRegExp.hasMatch(normalized)) {
        return (normalized, null);
      }

      // Try to normalize by removing invalid parts
      final cleaned = _normalizeInvalidName(name);
      if (cleaned.isNotEmpty && _nameRegExp.hasMatch(cleaned)) {
        return (cleaned, 'Normalized from: `$name` to `$cleaned`.');
      }

      // If normalization failed and uniqueIfNull is true, generate a unique name
      if (uniqueIfNull) {
        return (
          uniqueName(isEnum: isEnum),
          'Invalid name `$name` replaced with auto-generated name.',
        );
      }

      return (
        null,
        'Invalid name `$name` could not be normalized - field will be skipped.',
      );
    }(),
    _ when isEnum && reservedFieldNames.contains(name.toCamel) => (
      '$name $_enumConst',
      'The name has been replaced because it contains a keyword. Original name: `$name`.',
    ),
    _ when !isEnum && !isMethod && reservedFieldNames.contains(name.toCamel) => (
      '${name}Field',
      'The name has been replaced because it conflicts with a Dart type. Original name: `$name`.',
    ),
    _ when isMethod && reservedFieldNames.contains(name.toCamel) => (
      '${name}Value',
      'The name has been replaced because it contains a keyword. Original name: `$name`.',
    ),
    _ => (name, null),
  };

  return (
    newName,
    switch ((description, error)) {
      (null, null) => null,
      (null, _) => error,
      (_, null) => description,
      (_, _) => '$description\n$error',
    },
  );
}

/// Protect JsonKeys from incorrect symbols, keywords, etc.
String? protectJsonKey(String? name) =>
    name?.replaceAll(r'\', r'\\').replaceAll(r'$', r'\$');
