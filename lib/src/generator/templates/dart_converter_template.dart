import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';
import 'package:openapi_retrofit_generator/src/utils/type_utils.dart';

import 'package:openapi_retrofit_generator/src/generator/utils/bridge_model_parser.dart';

/// Provides template for generating model converter classes
/// 
/// Converters handle transformation between API models and database models,
/// automatically including all fields and flagging type mismatches.
String dartConverterTemplate(
  UniversalComponentClass dataClass, {
  String? bridgeModelName,
  String? bridgeModelImport,
  List<BridgeField> bridgeFields = const [],
}) {
  final dbClassName = dataClass.name.toPascal;
  final converterClassName = '${dbClassName}Converter';
  
  // Derive API model name from Db prefix (e.g., DbMessage -> Message)
  final apiModelName = bridgeModelName ?? 
      (dbClassName.startsWith('Db') ? dbClassName.substring(2) : '${dbClassName}Bridge');
  
  final fields = dataClass.parameters.toList();
  
  // Categorize fields
  final directFields = <UniversalType>[];
  final transformFields = <UniversalType>[];
  final contextFields = <UniversalType>[]; // Fields like channelCid that come from context
  
  for (final field in fields) {
    final name = field.name;
    if (name == null) continue;
    
    // Check if it exists in API model
    final apiField = bridgeFields.firstWhere(
      (f) => f.name == name,
      orElse: () => BridgeField(name: '', type: ''),
    );

    if (_isContextField(name) || (bridgeFields.isNotEmpty && apiField.name.isEmpty)) {
      contextFields.add(field);
    } else if (bridgeFields.isNotEmpty) {
      // Direct comparison if we have API fields
      if (_typesMatch(field, apiField.type)) {
        directFields.add(field);
      } else {
        transformFields.add(field);
      }
    } else {
      // Fallback to heuristics if no API fields provided
      if (_needsTransform(field)) {
        transformFields.add(field);
      } else {
        directFields.add(field);
      }
    }
  }
  
  final transformerParams = _generateTransformerParams(transformFields);
  final toDbBody = _generateToDbBody(
    dbClassName,
    apiModelName,
    directFields,
    transformFields,
    contextFields,
  );
  final fromDbBody = _generateFromDbBody(
    dbClassName,
    apiModelName,
    directFields,
    transformFields,
  );
  
  // Filter out imports - we import the whole package, so local model imports aren't needed
  // The dataClass.imports contains references to other Db* models which are all in unity_chat_models
  
  final toDbParams = _generateToDbParams(apiModelName, contextFields);
  
  return '''
import 'package:unity_chat_models/unity_chat_models.dart' as models;

/// Auto-generated converter for $dbClassName <-> $apiModelName
/// 
/// This converter handles transformation between API models (from backend responses)
/// and database models (for Couchbase persistence).
/// 
/// Fields are categorized as:
/// - Direct: Same type in both models, copied as-is
/// - Transform: Different types, requires transformation function
/// - Context: Provided externally (e.g., hidden, clearHistoryUsers)
class $converterClassName {
$transformerParams

  const $converterClassName(${_generateConstructorParams(transformFields)});

  /// Convert API model to database model
  /// 
  /// Direct fields (${directFields.length}): ${directFields.map((f) => f.name).join(', ')}
  /// Transform fields (${transformFields.length}): ${transformFields.map((f) => f.name).join(', ')}
  /// Context fields (${contextFields.length}): ${contextFields.map((f) => f.name).join(', ')}
  models.$dbClassName toDb($toDbParams) {
$toDbBody
  }

  /// Convert database model back to API model
  /// 
  /// Reverses the toDb() transformation, reconstructing the API model
  /// from its database representation.
  models.$apiModelName fromDb(models.$dbClassName source) {
$fromDbBody
  }
}

/// Singleton instance with default transformers
/// TODO: Provide actual transformer implementations
// const ${converterClassName.substring(0, 1).toLowerCase()}${converterClassName.substring(1)} = $converterClassName();
''';
}

/// Check if database field type matches bridge model field type
bool _typesMatch(UniversalType dbField, String bridgeType) {
  final dbType = dbField.toSuitableType();
  
  // Normalize types for comparison
  final normalizedDb = dbType.replaceAll('?', '').trim();
  final normalizedBridge = bridgeType.replaceAll('?', '').trim();
  
  if (normalizedDb == normalizedBridge) return true;
  
  // Handle common aliases/equivalents
  if (normalizedDb == 'num' && (normalizedBridge == 'double' || normalizedBridge == 'int')) return true;
  if (normalizedDb == 'dynamic' || normalizedBridge == 'dynamic') return true;
  
  return false;
}

/// Check if a field is a context field (not from the source model)
bool _isContextField(String fieldName) {
  const contextFieldNames = {
    'channelCid',
    'channel_cid',
  };
  return contextFieldNames.contains(fieldName);
}

/// Check if a field needs transformation (type mismatch between bridge and db)
bool _needsTransform(UniversalType field) {
  // Fields that typically need transformation:
  // - userId (User? -> String)
  // - attachments (List<File> -> List<String>)
  // - *_id fields that reference other objects
  // - DateTime <-> String conversions for some fields
  
  final name = field.name;
  
  // ID reference fields
  if (name == 'userId' || name == 'user_id') return true;
  if (name == 'aiId' || name == 'ai_id') return true;
  if (name == 'pinnedBy' || name == 'pinned_by') return true;
  
  // List fields that might contain objects
  if (name == 'attachments') return true;
  if (name == 'mentionedUsers' || name == 'mentioned_users') return true;
  if (name == 'threadParticipants' || name == 'thread_participants') return true;
  if (name == 'latestReactions' || name == 'latest_reactions') return true;
  if (name == 'reactions') return true;
  if (name == 'members') return true;
  
  // Complex type fields
  if (name == 'reactionGroups' || name == 'reaction_groups') return true;
  if (name == 'sharedLocation' || name == 'shared_location') return true;
  
  return false;
}

String _generateTransformerParams(List<UniversalType> transformFields) {
  if (transformFields.isEmpty) return '';
  
  final buffer = StringBuffer();
  for (final field in transformFields) {
    final fieldName = field.name;
    var dbType = field.toSuitableType();
    // Prefix Db* types with models. since they're from unity_chat_models
    dbType = _prefixDbTypes(dbType);
    buffer.writeln('  /// Transformer for $fieldName field');
    buffer.writeln('  final $dbType Function(dynamic) ${fieldName}ToDb;');
    buffer.writeln();
  }
  return buffer.toString();
}

/// Prefix Db* types with models. namespace
String _prefixDbTypes(String type) {
  // Pattern to match Db* types that aren't already prefixed
  final dbTypePattern = RegExp(r'\bDb([A-Z][a-zA-Z0-9]*)');
  return type.replaceAllMapped(dbTypePattern, (match) => 'models.${match.group(0)}');
}

String _generateConstructorParams(List<UniversalType> transformFields) {
  if (transformFields.isEmpty) return '';
  
  final params = transformFields.map((f) => 'required this.${f.name}ToDb').join(',\n    ');
  return '{\n    $params,\n  }';
}

String _generateToDbParams(String apiModelName, List<UniversalType> contextFields) {
  if (contextFields.isEmpty) return 'models.$apiModelName source';
  
  final params = contextFields.map((f) {
    final type = f.toSuitableType();
    final required = f.isRequired ? 'required ' : '';
    return '$required$type ${f.name},';
  }).join('\n    ');
  
  return '''
    models.$apiModelName source, {
    $params
  }''';
}

String _generateContextParams(List<UniversalType> contextFields) {
  return contextFields.map((f) {
    final type = f.toSuitableType();
    final required = f.isRequired ? 'required ' : '';
    return '$required$type ${f.name},';
  }).join('\n    ');
}

String _generateToDbBody(
  String dbClassName,
  String apiModelName,
  List<UniversalType> directFields,
  List<UniversalType> transformFields,
  List<UniversalType> contextFields,
) {
  final buffer = StringBuffer();
  buffer.writeln('    return models.$dbClassName(');
  
  // Context fields first
  for (final field in contextFields) {
    buffer.writeln('      ${field.name}: ${field.name},');
  }
  
  // Direct fields - copy as-is with null handling for defaults
  for (final field in directFields) {
    final name = field.name;
    final hasDefault = field.defaultValue != null;
    final isNullable = field.nullable || !field.isRequired;
    
    if (hasDefault && isNullable) {
      // For nullable fields with defaults, use the source value or omit (let Db default apply)
      buffer.writeln('      $name: source.$name,');
    } else {
      buffer.writeln('      $name: source.$name,');
    }
  }
  
  // Transform fields - use transformer functions
  for (final field in transformFields) {
    buffer.writeln('      ${field.name}: ${field.name}ToDb(source),');
  }
  
  buffer.writeln('    );');
  return buffer.toString();
}

/// Generate the fromDb() method body that converts DB model back to API model
String _generateFromDbBody(
  String dbClassName,
  String apiModelName,
  List<UniversalType> directFields,
  List<UniversalType> transformFields,
) {
  final buffer = StringBuffer();
  buffer.writeln('    return models.$apiModelName(');
  
  // Direct fields - copy as-is
  for (final field in directFields) {
    final name = field.name;
    buffer.writeln('      $name: source.$name,');
  }
  
  // Transform fields - copy as-is (reverse transformations happen elsewhere)
  // For now, we just copy the transformed values directly
  for (final field in transformFields) {
    final name = field.name;
    buffer.writeln('      $name: source.$name,');
  }
  
  buffer.writeln('    );');
  return buffer.toString();
}
