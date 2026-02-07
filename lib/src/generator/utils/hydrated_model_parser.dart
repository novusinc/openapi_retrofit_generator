import 'dart:io';

/// Represents a field in a hydrated model (API model)
class HydratedField {
  final String name;
  final String type;
  
  /// The corresponding ID field name (if this is an object field)
  /// E.g., "user" → "userId", "attachments" → "attachmentIds"
  final String? idFieldName;
  
  /// Whether this field represents a hydrated object
  final bool isHydrated;
  
  /// Whether this field represents an ID (e.g., userId, attachmentIds)
  final bool isIdField;
  
  /// List type indicator if this is List<T>
  final String? listItemType;

  const HydratedField({
    required this.name,
    required this.type,
    this.idFieldName,
    this.isHydrated = false,
    this.isIdField = false,
    this.listItemType,
  });
  
  /// Get the singular form of a plural ID field
  /// E.g., "attachmentIds" → "attachment", "userIds" → "user"
  static String singularizeIdField(String idFieldName) {
    if (idFieldName.endsWith('Ids')) {
      return idFieldName.substring(0, idFieldName.length - 3); // Remove 'Ids'
    } else if (idFieldName.endsWith('Id')) {
      return idFieldName.substring(0, idFieldName.length - 2); // Remove 'Id'
    }
    return idFieldName;
  }
}

/// Parser for analyzing hydrated models (API models) to extract field information
class HydratedModelParser {
  /// Parse a hydrated model file to extract field information
  List<HydratedField> parseModel(String modelPath) {
    return parseFields(modelPath);
  }

  /// Parse fields from a hydrated model file
  /// 
  /// Reads the Dart file and extracts field declarations from the model class.
  /// Returns a list of HydratedField objects representing each field.
  List<HydratedField> parseFields(String modelPath) {
    try {
      final file = File(modelPath);
      if (!file.existsSync()) {
        return [];
      }

      final content = file.readAsStringSync();
      return _extractFields(content);
    } catch (e) {
      // On error, return empty list - converter will use fallback heuristics
      return [];
    }
  }

  /// Extract field declarations from Dart class content
  List<HydratedField> _extractFields(String dartContent) {
    final fields = <HydratedField>[];
    
    // For Freezed classes, look for the factory constructor pattern:
    // const factory ClassName({ ... }) = _ClassName;
    var classMatch = RegExp(
      r'const\s+factory\s+\w+\s*\(\s*{([\s\S]*?)}\s*\)\s*=',
      multiLine: true,
    ).firstMatch(dartContent);
    
    if (classMatch != null) {
      return _parseClassBody(classMatch.group(1) ?? '');
    }
    
    // Fallback: try regular class definition
    classMatch = RegExp(
      r'(?:final\s+)?class\s+\w+.*?\{([\s\S]*?)\}',
      multiLine: true,
    ).firstMatch(dartContent);
    
    if (classMatch == null) {
      return [];
    }
    
    return _parseClassBody(classMatch.group(1) ?? '');
  }
  
  /// Parse the class body to extract field declarations
  List<HydratedField> _parseClassBody(String classBody) {
    final fields = <HydratedField>[];
    
    // Split by lines
    final lines = classBody.split('\n');
    
    int i = 0;
    while (i < lines.length) {
      var line = lines[i].trim();
      
      // Skip empty lines
      if (line.isEmpty) {
        i++;
        continue;
      }
      
      // Skip comments
      if (line.startsWith('///')) {
        i++;
        continue;
      }
      
      // Skip decorators that are alone on a line
      if (line.startsWith('@') && !line.contains('required')) {
        i++;
        continue;
      }
      
      // Remove decorators at the start of the line
      line = line.replaceFirst(RegExp(r'^@\w+\s*\([^)]*\)\s*'), '');
      
      // Now try to extract field declaration
      // Pattern: [required] Type [?] fieldName [=default] [,;]
      // Also handle inline @Default decorators
      line = line.replaceFirst(RegExp(r'@Default\s*\([^)]*\)\s*'), '');
      
      // Extract: [required] Type fieldName
      final fieldMatch = RegExp(
        r'(?:required\s+)?(\w+(?:<[^>]+>)?)\??\s+(\w+)\s*[,;=?]',
      ).firstMatch(line);
      
      if (fieldMatch != null) {
        final type = fieldMatch.group(1);
        final name = fieldMatch.group(2);
        
        if (type != null && name != null && !_isPrivateField(name) && !_isKeyword(type) && !_isKeyword(name)) {
          fields.add(HydratedField(
            name: name,
            type: type,
          ));
        }
      }
      
      i++;
    }
    
    return fields;
  }
  
  /// Check if a word is a Dart keyword
  bool _isKeyword(String word) {
    const keywords = {
      'required',
      'const',
      'factory',
      'default',
      'static',
      'final',
      'var',
      'dynamic',
      'void',
    };
    return keywords.contains(word);
  }

  /// Check if a field is private (starts with underscore)
  bool _isPrivateField(String fieldName) {
    return fieldName.startsWith('_');
  }
}
