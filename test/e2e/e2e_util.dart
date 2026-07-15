import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

/// Performs an end-to-end test for a given generator function by comparing generated content against expected files.
/// This method is crucial for validating the correctness and stability of code generation tools,
/// ensuring that changes in the generator do not break existing functionality or output.
/// It reads the OpenAPI schema from a specified path, uses the provided generator function to generate content,
/// and then compares each generated file against a corresponding expected file in a predefined directory.
///
/// By doing so, it verifies that the generated files are exactly as expected, both in content and quantity,
/// providing a reliable way to catch regressions or unintended changes in the code generation process.
Future<void> e2eTest(
  String testName,
  OpenApiConfig Function(
    String outputDirectory,
    String schemaPath,
    JsonSerializer serializer,
  )
  config, {
  String? schemaFileName,
  required String buildFolder,
}) async {
  final regenerateEnv = Platform.environment['REGENERATE_EXPECTED'];
  final generateExpectedFiles = regenerateEnv == 'true' || regenerateEnv == '1';

  final testFolder = p.join('test', 'e2e', 'tests', testName);
  final schemaPath = p.join(testFolder, schemaFileName ?? 'openapi.json');

  print('\n=== E2E TEST: $testName ===');
  print('Schema: $schemaPath');
  print('Regenerate mode: ${generateExpectedFiles ? "ENABLED" : "DISABLED"}');

  print('\n[1/6] Cleaning generated folders...');
  for (final serializer in e2eSerializers) {
    final generatedFolderName = getGeneratedFolderName(serializer);
    final generatedFolder = p.join(
      'test',
      'generated',
      testName,
      generatedFolderName,
    );
    final genDir = Directory(generatedFolder);
    if (genDir.existsSync()) {
      genDir.deleteSync(recursive: true);
      print('  Deleted: ${genDir.path}');
    }
  }

  cleanLibFolder(buildFolder);

  print('\n[2/6] Generating files...');
  await generateFilesForAllSerializers(
    buildFolder: buildFolder,
    schemaPath: schemaPath,
    configBuilder: (outputDirectory, schemaPath, serializer) =>
        config(outputDirectory, schemaPath, serializer),
  );

  print('\n[3/6] Running build_runner...');
  Exception? buildRunnerError;
  try {
    await runBuildRunner(buildFolder);
  } catch (e) {
    buildRunnerError = e as Exception;
    print('  ✗ build_runner failed (will move files for debugging)');
  }

  print('\n[4/6] Formatting generated files...');
  final libFolder = p.join(buildFolder, 'lib');
  await Process.run('dart', ['format', libFolder]);
  print('  ✓ Files formatted');

  print(
    '\n[5/6] ${generateExpectedFiles ? "Moving to expected folders" : "Moving to generated folders"}...',
  );
  for (final serializer in e2eSerializers) {
    final expectedFolder = getExpectedFolderName(serializer);
    final generatedFolderName = getGeneratedFolderName(serializer);

    final buildOutputPath = p.join(libFolder, generatedFolderName);
    final targetPath = generateExpectedFiles
        ? p.join(testFolder, expectedFolder)
        : p.join('test', 'generated', testName, generatedFolderName);

    if (generateExpectedFiles) {
      final expectedDir = Directory(targetPath);
      if (expectedDir.existsSync()) {
        print('  Deleting old ${serializer.name} expected files...');
        expectedDir.deleteSync(recursive: true);
      }
      print('  Moving ${serializer.name} to expected...');
    }

    final buildOutput = Directory(buildOutputPath);
    if (buildOutput.existsSync()) {
      moveDirectory(buildOutput, Directory(targetPath));
    }
  }

  final libDir = Directory(libFolder);
  if (libDir.existsSync()) {
    libDir.deleteSync(recursive: true);
  }

  // Rethrow build_runner error after moving files for debugging
  if (buildRunnerError != null) {
    throw buildRunnerError;
  }

  print('\n[6/6] Running analyzer...');
  await _runAnalyzer(testFolder, testName, generateExpectedFiles);

  if (generateExpectedFiles) {
    print('  ✓ Expected files regenerated successfully');
    print('\n=== TEST SKIPPED (REGENERATE MODE) ===\n');

    // Cleanup generated folders
    print('\n[7/7] Cleaning up generated folders...');
    for (final serializer in e2eSerializers) {
      final generatedFolderName = getGeneratedFolderName(serializer);
      final generatedFolder = p.join(
        'test',
        'generated',
        testName,
        generatedFolderName,
      );
      final genDir = Directory(generatedFolder);
      if (genDir.existsSync()) {
        genDir.deleteSync(recursive: true);
        print('  Deleted: ${genDir.path}');
      }
    }
    return;
  }

  print('\n[7/7] Comparing generated files with expected...');
  for (final serializer in e2eSerializers) {
    final expectedFolder = getExpectedFolderName(serializer);
    final generatedFolderName = getGeneratedFolderName(serializer);

    final expectedFolderPath = p.join(testFolder, expectedFolder);
    final generatedFolderPath = p.join(
      'test',
      'generated',
      testName,
      generatedFolderName,
    );

    final expectedDir = Directory(expectedFolderPath);
    if (!expectedDir.existsSync()) {
      throw Exception(
        'Expected folder not found: $expectedFolderPath\n'
        'Run tests in regenerate mode first:\n'
        'REGENERATE_EXPECTED=true dart test test/e2e/e2e_test.dart -N $testName',
      );
    }

    final expectedFiles = expectedDir
        .listSync(recursive: true, followLinks: false)
        .whereType<File>()
        .toList();

    final generatedFiles = Directory(
      generatedFolderPath,
    ).listSync(recursive: true, followLinks: false).whereType<File>().toList();

    for (final file in expectedFiles) {
      final relativePath = p
          .relative(file.path, from: expectedFolderPath)
          .replaceAll(r'\', '/');

      generatedFiles.firstWhere(
        (gFile) {
          final relPath = p
              .relative(gFile.path, from: generatedFolderPath)
              .replaceAll(r'\', '/');
          return relPath == relativePath;
        },
        orElse: () => throw Exception(
          'File not found in generated content: $relativePath (${serializer.name})',
        ),
      );
    }

    for (final file in expectedFiles) {
      final relativePath = p
          .relative(file.path, from: expectedFolderPath)
          .replaceAll(r'\', '/');

      final generatedFile = generatedFiles.firstWhere((gFile) {
        final relPath = p
            .relative(gFile.path, from: generatedFolderPath)
            .replaceAll(r'\', '/');
        return relPath == relativePath;
      });

      expect(
        generatedFile.readAsStringSync(),
        file.readAsStringSync(),
        reason:
            'Contents do not match for file: $relativePath (${serializer.name})',
      );
    }

    expect(
      generatedFiles.length,
      expectedFiles.length,
      reason: 'Number of files does not match (${serializer.name})',
    );

    print('  ✓ ${serializer.name}: ${expectedFiles.length} files match');
  }

  // Cleanup all generated folders for this test
  for (final serializer in e2eSerializers) {
    final generatedFolderName = getGeneratedFolderName(serializer);
    final generatedFolderPath = p.join(
      'test',
      'generated',
      testName,
      generatedFolderName,
    );
    final generatedDir = Directory(generatedFolderPath);
    if (generatedDir.existsSync()) {
      generatedDir.deleteSync(recursive: true);
    }
  }

  print('\n=== TEST PASSED ===\n');
}

/// Performs a negative end-to-end test by verifying that parsing a schema throws the expected exception.
/// This method is useful for validating that the parser correctly rejects invalid OpenAPI schemas
/// and provides meaningful error messages.
///
/// [testName] - The name of the test folder under test/e2e/tests/
/// [schemaFileName] - The schema file name (e.g., 'openapi_duplicate_operationid.json')
/// [expectedErrorPattern] - A string pattern that should be contained in the exception message
/// [config] - Optional function to customize the OpenApiConfig. If not provided, uses default config.
Future<void> e2eNegativeTest(
  String testName,
  String schemaFileName,
  String expectedErrorPattern, {
  OpenApiConfig Function(String outputDirectory, String schemaPath)? config,
  required String buildFolder,
}) async {
  final testFolder = p.join('test', 'e2e', 'tests', testName);
  final schemaPath = p.join(testFolder, schemaFileName);
  final outputDirectory = p.join(buildFolder, 'temp');

  final processor = GenProcessor(
    config?.call(outputDirectory, schemaPath) ??
        OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: JsonSerializer.freezed,
          putClientsInFolder: true,
        ),
  );

  expect(
    () async => processor.generateFiles(),
    throwsA(
      isA<OpenApiParserException>().having(
        (e) => e.message,
        'message',
        contains(expectedErrorPattern),
      ),
    ),
  );
}

Future<void> _runAnalyzer(
  String testFolder,
  String testName,
  bool isRegenerateMode,
) async {
  final targetFolder = isRegenerateMode
      ? testFolder
      : p.join('test', 'generated', testName);

  for (final serializer in e2eSerializers) {
    final folderName = isRegenerateMode
        ? getExpectedFolderName(serializer)
        : getGeneratedFolderName(serializer);

    final folderPath = p.join(targetFolder, folderName);
    final folder = Directory(folderPath);

    if (!folder.existsSync()) {
      throw Exception(
        'Folder not found: $folderPath\n'
        'Expected folder for ${serializer.name} after generation and move.',
      );
    }
  }

  await runAnalyzer(
    targetFolder,
    testName,
    useExpectedFolders: isRegenerateMode,
  );
}
