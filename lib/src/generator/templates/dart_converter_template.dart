import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';
import 'package:openapi_retrofit_generator/src/utils/type_utils.dart';

import 'package:openapi_retrofit_generator/src/generator/utils/hydrated_model_parser.dart';

/// Provides template for generating model converter classes
/// 
/// Converters handle transformation between hydrated models and database models,
/// automatically including all fields and flagging type mismatches.
String dartConverterTemplate(
  UniversalComponentClass dataClass, {
  String? hydratedModelName,
  String? hydratedModelImport,
  List<HydratedField> hydratedFields = const [],
}) {
  final dbClassName = dataClass.name.toPascal;
  final converterClassName = '${dbClassName}Converter';
  
  // Derive hydrated model name from Db prefix (e.g., DbMessage -> Message)
  final resolvedHydratedModelName = hydratedModelName ?? 
      (dbClassName.startsWith('Db') ? dbClassName.substring(2) : '${dbClassName}Hydrated');
  
  final fields = dataClass.parameters.toList();
  
  // Detect hydrated fields with dual-field support
  final detectedHydratedFields = _detectHydratedFields(fields, hydratedFields);
  
  // Categorize fields
  final directFields = <UniversalType>[];
  final hydratedParams = <HydratedField>[];
  final contextFields = <UniversalType>[]; // Fields like channelCid that come from context
  
  // First, extract all hydrated fields from the detected fields
  hydratedParams.addAll(detectedHydratedFields.where((f) => f.isHydrated));
  
  for (final field in fields) {
    final name = field.name;
    if (name == null) continue;
    
    // Check if this is a hydrated object field (not in the DB)
    if (hydratedParams.any((h) => h.name == name)) {
      // Skip - already added as hydrated
      continue;
    }
    
    // Check if it's a context field
    if (_isContextField(name)) {
      contextFields.add(field);
      continue;
    }
    
    // Otherwise, it's a direct field
    directFields.add(field);
  }
  
  final transformerParams = _generateTransformerParams(directFields.where((f) => _isLegacyTransformField(f)).toList());
  final toDbBody = _generateToDbBody(
    dbClassName,
    resolvedHydratedModelName,
    directFields,
    contextFields,
  );
  final fromDbBody = _generateFromDbBody(
    dbClassName,
    resolvedHydratedModelName,
    directFields,
    hydratedParams,
  );
  
  // Filter out imports - we import the whole package, so local model imports aren't needed
  // The dataClass.imports contains references to other Db* models which are all in unity_chat_models
  
  final toDbParams = _generateToDbParams(resolvedHydratedModelName, contextFields);
  final fromDbParams = _generateFromDbParams(dbClassName, hydratedParams);
  final hydratedParamsDocs = _generateHydratedParamsDocumentation(hydratedParams);
  
  return '''
import 'package:unity_chat_models/unity_chat_models.dart' as models;

/// Auto-generated converter for $dbClassName <-> $resolvedHydratedModelName
/// 
/// This converter handles transformation between hydrated models (from backend responses)
/// and database models (for Couchbase persistence).
/// 
/// Fields are categorized as:
/// - Direct: Same type in both models, copied as-is
/// - Hydrated: Complex objects that need to be fetched/resolved (passed as parameters)
/// - Context: Provided externally (e.g., hidden, clearHistoryUsers)
class $converterClassName {
$transformerParams

  const $converterClassName(${_generateConstructorParams(directFields.where((f) => _isLegacyTransformField(f)).toList())});

  /// Convert hydrated model to database model
  /// 
  /// Direct fields (${directFields.length}): ${directFields.map((f) => f.name).join(', ')}
  /// Hydrated fields (${hydratedParams.length}): ${hydratedParams.map((f) => f.name).join(', ')}
  /// Context fields (${contextFields.length}): ${contextFields.map((f) => f.name).join(', ')}
  models.$dbClassName toDb($toDbParams) {
$toDbBody
  }

  /// Convert database model back to hydrated model
  /// 
  /// Reverses the toDb() transformation, reconstructing the hydrated model
  /// from its database representation.
  ///
$hydratedParamsDocs
  models.$resolvedHydratedModelName fromDb($fromDbParams) {
$fromDbBody
  }
}

/// Singleton instance with default transformers
/// TODO: Provide actual transformer implementations
// const ${converterClassName.substring(0, 1).toLowerCase()}${converterClassName.substring(1)} = $converterClassName();
''';
}

/// Detect hydrated fields with dual-field pattern support
/// 
/// This function implements the intelligent dual-field detection algorithm
/// that recognizes when both ID fields (e.g., userId) and object fields (e.g., user)
/// exist and marks them appropriately.
List<HydratedField> _detectHydratedFields(
  List<UniversalType> dbFields,
  List<HydratedField> hydratedFields,
) {
  final result = <HydratedField>[];
  final processedNames = <String>{};
  
  // Process hydrated fields and detect relationships
  for (final hydratedField in hydratedFields) {
    // Check if this is an ID field (e.g., userId, attachmentIds)
    final isIdField = hydratedField.name.endsWith('Id') || 
                     hydratedField.name.endsWith('Ids');
    
    if (isIdField) {
      // This is an ID field (userId, attachmentIds, etc.)
      
      // Check if corresponding object field exists in hydrated model
      final singularName = HydratedField.singularizeIdField(hydratedField.name);
      final correspondingObjectField = hydratedFields.firstWhere(
        (f) => f.name == singularName,
        orElse: () => HydratedField(name: '', type: ''),
      );
      
      if (correspondingObjectField.name.isNotEmpty) {
        // We have both ID and object (userId + user)
        
        // Process ID field as DIRECT (maps to DB directly)
        result.add(HydratedField(
          name: hydratedField.name,
          type: hydratedField.type,
          idFieldName: null,
          isHydrated: false,
          isIdField: true,
        ));
        processedNames.add(hydratedField.name);
        
        // Process object field as HYDRATED (needs converter parameter)
        result.add(HydratedField(
          name: correspondingObjectField.name,
          type: correspondingObjectField.type,
          idFieldName: hydratedField.name,  // Points back to ID field
          isHydrated: true,
          isIdField: false,
          listItemType: _extractListItemType(correspondingObjectField.type),
        ));
        processedNames.add(correspondingObjectField.name);
      } else {
        // ID field only, process normally
        result.add(HydratedField(
          name: hydratedField.name,
          type: hydratedField.type,
          isIdField: true,
        ));
        processedNames.add(hydratedField.name);
      }
    } else {
      // Not an ID field
      
      if (processedNames.contains(hydratedField.name)) {
        // Already processed as part of ID/object pair
        continue;
      }
      
      // Check if there's a corresponding ID field in DB
      final possibleIdNames = [
        '${hydratedField.name}Id',
        '${hydratedField.name}Ids',
      ];
      
      final correspondingDbIdField = dbFields.firstWhere((f) {
        return possibleIdNames.contains(f.name);
      }, orElse: () => UniversalType(type: '', isRequired: false));
      
      if (correspondingDbIdField.type.isNotEmpty) {
        // This is an object field that has a corresponding ID in DB
        result.add(HydratedField(
          name: hydratedField.name,
          type: hydratedField.type,
          idFieldName: correspondingDbIdField.name,
          isHydrated: true,
          isIdField: false,
          listItemType: _extractListItemType(hydratedField.type),
        ));
      } else {
        // No special relationship, treat as regular field
        result.add(HydratedField(
          name: hydratedField.name,
          type: hydratedField.type,
          isHydrated: false,
          isIdField: false,
        ));
      }
      
      processedNames.add(hydratedField.name);
    }
  }
  
  return result;
}

/// Extract List<T> → T
String? _extractListItemType(String type) {
  final match = RegExp(r'List<([^>]+)>').firstMatch(type);
  return match?.group(1);
}

/// Check if database field type matches hydrated model field type
bool _typesMatch(UniversalType dbField, String hydratedType) {
  final dbType = dbField.toSuitableType();
  
  // Normalize types for comparison
  final normalizedDb = dbType.replaceAll('?', '').trim();
  final normalizedHydrated = hydratedType.replaceAll('?', '').trim();
  
  if (normalizedDb == normalizedHydrated) return true;
  
  // Handle common aliases/equivalents
  if (normalizedDb == 'num' && (normalizedHydrated == 'double' || normalizedHydrated == 'int')) return true;
  if (normalizedDb == 'dynamic' || normalizedHydrated == 'dynamic') return true;
  
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

/// Check if a field is a legacy transform field (for backwards compatibility)
bool _isLegacyTransformField(UniversalType field) {
  // This is for handling transformer functions for fields that truly need transformation
  // In most cases with the new hydration detection, this won't be needed
  return false;
}

/// Check if a field needs transformation (type mismatch between hydrated and db)
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

String _generateToDbParams(String hydratedModelName, List<UniversalType> contextFields) {
  if (contextFields.isEmpty) return 'models.$hydratedModelName source';
  
  final params = contextFields.map((f) {
    final type = f.toSuitableType();
    final required = f.isRequired ? 'required ' : '';
    return '$required$type ${f.name},';
  }).join('\n    ');
  
  return '''
    models.$hydratedModelName source, {
    $params
  }''';
}

/// Generate parameters for fromDb() method signature with hydrated parameters
String _generateFromDbParams(String dbClassName, List<HydratedField> hydratedParams) {
  if (hydratedParams.isEmpty) {
    return 'models.$dbClassName source';
  }
  
  final buffer = StringBuffer();
  buffer.write('models.$dbClassName source, {\n');
  
  for (final field in hydratedParams) {
    final baseType = field.listItemType ?? field.type;
    final type = field.listItemType != null ? 'List<models.$baseType>' : 'models.$baseType';
    final nullable = !field.type.endsWith('?') ? '?' : '';
    final defaultValue = field.listItemType != null ? ' = const []' : '';
    buffer.write('    $type$nullable ${field.name}$defaultValue,\n');
  }
  
  buffer.write('  }');
  return buffer.toString();
}

/// Generate documentation for hydrated parameters
String _generateHydratedParamsDocumentation(List<HydratedField> hydratedParams) {
  if (hydratedParams.isEmpty) {
    return '';
  }
  
  final buffer = StringBuffer();
  buffer.writeln('  /// Hydrated parameters:');
  
  for (final field in hydratedParams) {
    if (field.idFieldName != null) {
      buffer.writeln('  /// - [${field.name}]: ${field.type} object for ${field.idFieldName} field');
    } else {
      buffer.writeln('  /// - [${field.name}]: ${field.type} object');
    }
  }
  
  return buffer.toString();
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
  String hydratedModelName,
  List<UniversalType> directFields,
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
  
  buffer.writeln('    );');
  return buffer.toString();
}

/// Generate the fromDb() method body that converts DB model back to hydrated model
String _generateFromDbBody(
  String dbClassName,
  String hydratedModelName,
  List<UniversalType> directFields,
  List<HydratedField> hydratedParams,
) {
  final buffer = StringBuffer();
  buffer.writeln('    return models.$hydratedModelName(');
  
  // Direct fields - copy as-is
  for (final field in directFields) {
    final name = field.name;
    buffer.writeln('      $name: source.$name,');
  }
  
  // Hydrated fields - use parameters passed in
  for (final field in hydratedParams) {
    buffer.writeln('      ${field.name}: ${field.name},');
  }
  
  buffer.writeln('    );');
  return buffer.toString();
}
