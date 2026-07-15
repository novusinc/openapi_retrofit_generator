import 'package:collection/collection.dart';
import 'package:openapi_retrofit_generator/src/generator/model/json_serializer.dart';
import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';
import 'package:openapi_retrofit_generator/src/utils/type_utils.dart';

/// Provides template for generating dart typedefs using JSON serializable
String dartTypeDefTemplate(
  UniversalComponentClass dataClass, {
  JsonSerializer? jsonSerializer,
  Map<String, String>? classFileOverrides,
}) {
  final className = dataClass.name.toPascal;
  final type = dataClass.parameters.firstOrNull;
  final import = dataClass.imports.firstOrNull;
  if (type == null) {
    return '';
  }

  final importFileName = _getImportFileName(
    import,
    jsonSerializer,
    classFileOverrides,
  );

  return '${import != null ? "import '$importFileName.dart';\nexport '$importFileName.dart';\n\n" : ''}'
      '${descriptionComment(dataClass.description)}'
      'typedef $className = ${_renameTypeForSerializer(type.toSuitableType(), jsonSerializer)};\n';
}

String _getImportFileName(
  String? import,
  JsonSerializer? jsonSerializer,
  Map<String, String>? classFileOverrides,
) {
  if (import == null) return '';
  final base = import.toSnake;
  return classFileOverrides?[base] ?? base;
}

String _renameTypeForSerializer(String type, JsonSerializer? jsonSerializer) {
  return type;
}
