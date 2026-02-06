import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';
import 'package:openapi_retrofit_generator/src/utils/type_utils.dart';

/// Provides template for generating default value constants from Db* models
String dartDefaultsTemplate(UniversalComponentClass dataClass) {
  final dbClassName = dataClass.name.toPascal;
  final defaultsClassName = '${dbClassName}Defaults';
  
  final fieldsWithDefaults = dataClass.parameters.where((p) => p.defaultValue != null).toList();
  
  final buffer = StringBuffer();
  buffer.writeln('/// Default values for $dbClassName derived from the database schema');
  buffer.writeln('abstract class $defaultsClassName {');
  
  for (final field in fieldsWithDefaults) {
    final name = field.name;
    if (name == null) continue;
    
    final type = field.toSuitableType().replaceAll('?', '');
    final value = _formatDefaultValue(field);
    
    buffer.writeln('  /// Default value for $name');
    buffer.writeln('  static const $type $name = $value;');
    buffer.writeln();
  }
  
  buffer.writeln('}');
  
  return buffer.toString();
}

String _formatDefaultValue(UniversalType field) {
  final value = field.defaultValue!;
  
  // Clean up common generator artifacts
  var cleaned = value.trim();
  if (cleaned.startsWith("'") && cleaned.endsWith("'")) {
    // If it's already a single-quoted string, it might be double-escaped by the generator
    if (cleaned.startsWith("''") && cleaned.endsWith("''")) {
      cleaned = cleaned.substring(1, cleaned.length - 1);
    }
  }
  
  // Handle specific types
  final type = field.toSuitableType().replaceAll('?', '');
  
  if (type == 'String' && !cleaned.startsWith("'")) {
    return "'$cleaned'";
  }
  
  if (type == 'List<String>' && (cleaned == '[]' || cleaned == 'const []')) {
    return '[]';
  }

  if (type == 'Map<String, int>' && (cleaned == '{}' || cleaned == 'const {}')) {
    return '{}';
  }
  
  return cleaned;
}
