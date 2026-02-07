import 'dart:io';
import 'package:openapi_retrofit_generator/src/generator/config/generator_config.dart';
import 'package:openapi_retrofit_generator/src/generator/model/generated_file.dart';
import 'package:openapi_retrofit_generator/src/generator/model/json_serializer.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_dart_mappable_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_enum_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_export_file_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_json_serializable_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_retrofit_client_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_root_client_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_typedef_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_converter_template.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_defaults_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/hydrated_model_parser.dart';
import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';

/// Handles generating files
final class FillController {
  /// Constructor that accepts configuration parameters with default values to create files
  const FillController({
    required this.config,
    this.info = const OpenApiInfo(schemaVersion: OAS.v3_1),
  });

  /// Api info
  final OpenApiInfo info;

  /// Config
  final GeneratorConfig config;

  /// Return [GeneratedFile] generated from given [UniversalDataClass]
  GeneratedFile fillDtoContent(UniversalDataClass dataClass) => GeneratedFile(
    name: 'models/${_resolveDtoFileBaseName(dataClass)}.dart',
    content: _dtoFileContent(
      dataClass,
      jsonSerializer: config.jsonSerializer,
      unknownEnumValue: config.unknownEnumValue,
      markFilesAsGenerated: config.markFilesAsGenerated,
      generateValidator: config.generateValidator,
      includeIfNull: config.includeIfNull,
      fallbackUnion: config.fallbackUnion,
    ),
  );

  /// Return [GeneratedFile] for converter if applicable, or null
  GeneratedFile? fillConverterContent(UniversalDataClass dataClass) {
    // Only generate converters for Db* prefixed classes (database models)
    if (!config.generateConverters) return null;
    if (dataClass is! UniversalComponentClass) return null;
    if (!dataClass.name.startsWith('Db')) return null;
    
    final dbClassName = dataClass.name.toPascal;
    final hydratedModelName = dbClassName.substring(2); // Remove 'Db'
    final hydratedModelFileName = hydratedModelName.toSnake;
    
    // Path to the hydrated model file (relative to output directory)
    final hydratedModelPath = '${config.outputDirectory}/${config.converterHydratedModelsDirectory}/$hydratedModelFileName.dart';
    
    if (!File(hydratedModelPath).existsSync()) {
      // If hydrated model doesn't exist, we skip converter generation or generate a context-only converter
      // For now, let's skip to avoid analyzer errors
      return null;
    }
    
    final parser = HydratedModelParser();
    final hydratedFields = parser.parseFields(hydratedModelPath);
    
    return GeneratedFile(
      name: 'converters/${_resolveDtoFileBaseName(dataClass)}_converter.dart',
      content: dartConverterTemplate(
        dataClass,
        hydratedModelImport: config.converterHydratedModelPrefix,
        hydratedFields: hydratedFields,
      ),
    );
  }

  /// Return [GeneratedFile] for defaults if applicable, or null
  GeneratedFile? fillDefaultsContent(UniversalDataClass dataClass) {
    if (!config.generateDefaults) return null;
    if (dataClass is! UniversalComponentClass) return null;
    if (!dataClass.name.startsWith('Db')) return null;
    
    // Only generate if there are actually defaults
    if (!dataClass.parameters.any((p) => p.defaultValue != null)) return null;

    return GeneratedFile(
      name: 'defaults/${_resolveDtoFileBaseName(dataClass)}_defaults.dart',
      content: dartDefaultsTemplate(dataClass),
    );
  }

  String _dtoFileContent(
    UniversalDataClass dataClass, {
    required JsonSerializer jsonSerializer,
    required bool unknownEnumValue,
    required bool markFilesAsGenerated,
    required bool generateValidator,
    required bool includeIfNull,
    String? fallbackUnion,
  }) {
    if (dataClass is UniversalEnumClass) {
      return dartEnumDtoTemplate(
        dataClass,
        jsonSerializer: jsonSerializer,
        unknownEnumValue: unknownEnumValue,
        markFileAsGenerated: markFilesAsGenerated,
      );
    } else if (dataClass is UniversalComponentClass) {
      if (dataClass.typeDef) {
        return dartTypeDefTemplate(dataClass, jsonSerializer: jsonSerializer);
      }
      return switch (jsonSerializer) {
        JsonSerializer.freezed => dartFreezedDtoTemplate(
          dataClass,
          generateValidator: generateValidator,
          includeIfNull: includeIfNull,
          fallbackUnion: fallbackUnion,
        ),
        JsonSerializer.jsonSerializable => dartJsonSerializableDtoTemplate(
          dataClass,
          markFileAsGenerated: markFilesAsGenerated,
          includeIfNull: includeIfNull,
          fallbackUnion: fallbackUnion,
        ),
        JsonSerializer.dartMappable => dartDartMappableDtoTemplate(
          dataClass,
          markFileAsGenerated: markFilesAsGenerated,
          fallbackUnion: fallbackUnion,
        ),
      };
    }
    throw ArgumentError('Unknown type exception');
  }

  String _resolveDtoFileBaseName(UniversalDataClass dataClass) {
    return dataClass.name.toSnake;
  }

  /// Return [GeneratedFile] generated from given [UniversalRestClient]
  GeneratedFile fillRestClientContent(UniversalRestClient restClient) {
    final postfix = config.clientPostfix ?? 'Client';
    final fileName = '${restClient.name}_$postfix'.toSnake;
    final folderName = config.putClientsInFolder
        ? 'clients'
        : restClient.name.toSnake;

    return GeneratedFile(
      name: '$folderName/$fileName.dart',
      content: dartRetrofitClientTemplate(
        restClient: restClient,
        name: restClient.name.toPascal + postfix.toPascal,
        defaultContentType: config.defaultContentType,
        jsonSerializer: config.jsonSerializer,
        mergeClients: config.mergeOutputs,
        extrasParameterByDefault: config.extrasParameterByDefault,
        dioOptionsParameterByDefault: config.dioOptionsParameterByDefault,
        originalHttpResponse: config.originalHttpResponse,
        fileName: fileName,
      ),
    );
  }

  /// Return [GeneratedFile] root client generated from given clients
  GeneratedFile fillRootClient(Iterable<UniversalRestClient> clients) {
    final rootClientName = config.rootClientName ?? 'RestClient';
    final postfix = config.clientPostfix ?? 'Client';
    final clientsNames = clients.map((c) => c.name.toPascal).toSet();
    // Create a map from Pascal names to snake names
    final clientsNameMap = <String, String>{
      for (final client in clients) client.name.toPascal: client.name.toSnake,
    };

    return GeneratedFile(
      name: '${rootClientName.toSnake}.dart',
      content: dartRootClientTemplate(
        openApiInfo: info,
        name: rootClientName,
        clientsNames: clientsNames,
        postfix: postfix.toPascal,
        putClientsInFolder: config.putClientsInFolder,
        markFileAsGenerated: config.markFilesAsGenerated,
        clientsNameMap: clientsNameMap,
      ),
    );
  }

  /// Return [GeneratedFile] with all exports from all files
  GeneratedFile fillExportFile({
    required List<GeneratedFile> restClients,
    required List<GeneratedFile> dataClasses,
    required GeneratedFile? rootClient,
  }) {
    return GeneratedFile(
      name: 'export.dart',
      content: dartExportFileTemplate(
        restClients: restClients,
        dataClasses: dataClasses,
        rootClient: rootClient,
      ),
    );
  }

  GeneratedFile fillMergedOutputs(List<GeneratedFile> outputs) {
    final dartImports = <String>{};
    final packageImports = <String, List<String>>{};
    final lines = <String>[];
    for (final output in outputs) {
      for (final line in output.content.split('\n')) {
        if (line == '') {
          if (lines.isNotEmpty && lines.last != '') {
            lines.add('');
          }
        } else if (line.startsWith('import')) {
          // Separate Dart and package imports in Dart and ignore local imports
          if (line.startsWith("import 'package:")) {
            final packageKey = _extractPackageKey(line);
            final importLine = line;

            final existing = packageImports[packageKey] ?? [];
            if (!existing.contains(importLine)) {
              packageImports.putIfAbsent(packageKey, () => []).add(importLine);
            }
          } else if (line.startsWith("import 'dart:")) {
            dartImports.add(line);
          }
        } else if (line.startsWith('export')) {
          // ignore export lines in Dart (they reference files that are now merged)
        } else if (line.startsWith('part ')) {
          // ignore part lines in Dart
        } else {
          lines.add(line);
        }
      }
    }
    final buffer = StringBuffer(generatedFileComment());

    if (dartImports.isNotEmpty) {
      for (final import in dartImports.toList()..sort()) {
        buffer.writeln(import);
      }
      buffer.writeln();
    }

    if (packageImports.isNotEmpty) {
      final allImports = packageImports.values.expand((list) => list).toList()
        ..sort();
      for (final import in allImports) {
        buffer.writeln(import);
      }
      buffer.writeln();
    }

    if (config.jsonSerializer == JsonSerializer.freezed) {
      buffer.writeln("part '${config.name}.freezed.dart';");
    } else if (config.jsonSerializer == JsonSerializer.dartMappable) {
      buffer.writeln("part '${config.name}.mapper.dart';");
    }
    buffer
      ..writeln("part '${config.name}.g.dart';")
      ..writeln();

    for (final line in lines) {
      buffer.writeln(line);
    }
    return GeneratedFile(
      name: '${config.name}.dart',
      content: buffer.toString(),
    );
  }

  List<GeneratedFile> addGeneratedFileComments(List<GeneratedFile> files) {
    final comment = generatedFileComment();
    return files
        .map(
          (file) => GeneratedFile(
            name: file.name,
            content: '$comment${file.content}',
          ),
        )
        .toList();
  }

  String _extractPackageKey(String importLine) {
    final match = RegExp(r"import '([^']+)'").firstMatch(importLine);
    return match?.group(1) ?? importLine;
  }
}
