import 'package:openapi_retrofit_generator/src/config/config_exception.dart';
import 'package:openapi_retrofit_generator/src/generator/config/generator_config.dart';
import 'package:openapi_retrofit_generator/src/generator/generator/fill_controller.dart';
import 'package:openapi_retrofit_generator/src/generator/generator/union_family_resolver.dart';
import 'package:openapi_retrofit_generator/src/generator/model/generated_file.dart';
import 'package:openapi_retrofit_generator/src/generator/model/generation_statistic.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:openapi_retrofit_generator/src/utils/file/io_file.dart';

/// Handles whole cycle of generation.
class Generator {
  /// Creates a [Generator].
  const Generator(
    this.config, {
    required this.info,
    required this.dataClasses,
    required this.restClients,
  });

  /// [GeneratorConfig] that [Generator] use
  final GeneratorConfig config;

  /// Api file info
  final OpenApiInfo info;

  /// Data classes list used for generation
  final List<UniversalDataClass> dataClasses;

  /// Rest clients list used for generate
  final List<UniversalRestClient> restClients;

  /// Generates files based on OpenApi definition file
  Future<(OpenApiInfo, GenerationStatistic)> generateFiles() async {
    final stopwatch = Stopwatch()..start();
    final (totalFiles, totalLines) = await _generateFiles();
    stopwatch.stop();

    return (
      info,
      GenerationStatistic(
        totalFiles: totalFiles,
        totalLines: totalLines,
        totalDataClasses: dataClasses.length,
        totalRestClients: restClients.length,
        totalRequests: restClients.fold(0, (v, e) => v + e.requests.length),
        timeElapsed: stopwatch.elapsed,
      ),
    );
  }

  /// Generates content of files based on OpenApi definition file
  /// and return list of [GeneratedFile]
  List<GeneratedFile> generateContent() {
    if (config.effectiveSealedRefUnions && config.mergeOutputs) {
      throw const ConfigException(
        "Config parameters 'sealed_ref_unions' and 'merge_outputs' cannot be "
        'combined: union family files rely on per-file part directives.',
      );
    }
    final unionFamilies = config.effectiveSealedRefUnions
        ? resolveUnionFamilies(dataClasses)
        : UnionFamilyResolution.none;

    final fillController = FillController(
      config: config,
      info: info,
      dataClasses: dataClasses,
      unionFamilies: unionFamilies,
    );

    // Union family members are merged into one file per family; every other
    // data class keeps its own file.
    final dataClassesFiles = [
      for (final dataClass in dataClasses)
        if (!unionFamilies.familyMemberNames.contains(dataClass.name))
          fillController.fillDtoContent(dataClass),
      for (final family in unionFamilies.families)
        fillController.fillUnionFamilyContent(family),
    ];
    final restClientFiles = restClients
        .map(fillController.fillRestClientContent)
        .toList();
    
    // Generate converter files for Db* models if enabled
    final converterFiles = config.generateConverters
        ? dataClasses
            .map(fillController.fillConverterContent)
            .nonNulls
            .toList()
        : <GeneratedFile>[];

    // Generate union dispatcher converters for Db* union roots if enabled
    final unionConverterFiles = config.generateConverters
        ? dataClasses
            .map(fillController.fillUnionConverterContent)
            .nonNulls
            .toList()
        : <GeneratedFile>[];

    // Generate defaults files for Db* models if enabled
    final defaultsFiles = config.generateConverters
        ? dataClasses
            .map(fillController.fillDefaultsContent)
            .nonNulls
            .toList()
        : <GeneratedFile>[];

    final rootClientFile = config.rootClient && restClients.isNotEmpty
        ? fillController.fillRootClient(restClients)
        : null;

    final exportFile = config.exportFile && !config.mergeOutputs
        ? fillController.fillExportFile(
            restClients: restClientFiles,
            dataClasses: dataClassesFiles,
            rootClient: rootClientFile,
          )
        : null;

    final files = [
      ...restClientFiles,
      ...dataClassesFiles,
      ...converterFiles,
      ...unionConverterFiles,
      ...defaultsFiles,
      if (rootClientFile != null) rootClientFile,
      if (exportFile != null) exportFile,
    ];

    if (config.mergeOutputs) {
      return [fillController.fillMergedOutputs(files)];
    }

    return fillController.addGeneratedFileComments(files);
  }

  /// Main function used to create files
  Future<(int, int)> _generateFiles() async {
    var totalFiles = 0;
    var totalLines = 0;
    final files = generateContent();
    totalFiles += files.length;
    for (final file in files) {
      totalLines += RegExp('\n').allMatches(file.content).length;
      await generateFile(config.outputDirectory, file);
    }
    return (totalFiles, totalLines);
  }
}
