@Timeout(Duration(minutes: 10))
library;

import 'dart:core';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

// ignore_for_file: avoid_print

Future<void> schemaTest(String schemaFileName, String buildFolder) async {
  final schemaPath = p.join('test', 'e2e', 'tests', 'schemas', schemaFileName);
  final schemaNameWithoutExt = schemaFileName.replaceAll(
    RegExp(r'\.(yaml|json)$'),
    '',
  );

  print('\n=== SCHEMA TEST: $schemaFileName ===');
  print('Schema: $schemaPath');

  print('\n[1/6] Cleaning generated folders...');
  for (final serializer in e2eSerializers) {
    final generatedFolderName = getGeneratedFolderName(serializer);
    final generatedFolder = p.join(
      'test',
      'generated',
      'schema_2',
      schemaNameWithoutExt,
      generatedFolderName,
    );
    final genDir = Directory(generatedFolder);
    if (genDir.existsSync()) {
      genDir.deleteSync(recursive: true);
    }
  }
  cleanLibFolder(buildFolder);

  Object? testException;
  StackTrace? testStackTrace;

  try {
    print('\n[2/6] Generating files...');
    await generateFilesForAllSerializers(
      buildFolder: buildFolder,
      schemaPath: schemaPath,
      configBuilder: (outputDirectory, schemaPath, serializer) => OpenApiConfig(
        outputDirectory: outputDirectory,
        schemaPath: schemaPath,
        jsonSerializer: serializer,
        putClientsInFolder: true,
      ),
    );

    print('\n[3/6] Running build_runner...');
    await runBuildRunner(buildFolder);

    print('\n[4/6] Formatting generated files...');
    final libFolder = p.join(buildFolder, 'lib');
    await Process.run('dart', ['format', libFolder]);
    print('  ✓ Files formatted');

    print('\n[5/6] Moving generated files...');
    for (final serializer in e2eSerializers) {
      final generatedFolderName = getGeneratedFolderName(serializer);
      final buildOutputPath = p.join(libFolder, generatedFolderName);
      final targetPath = p.join(
        'test',
        'generated',
        'schema_2',
        schemaNameWithoutExt,
        generatedFolderName,
      );

      final buildOutput = Directory(buildOutputPath);
      if (buildOutput.existsSync()) {
        moveDirectory(buildOutput, Directory(targetPath));
        print('  ✓ ${serializer.name} moved to $targetPath');
      } else {
        // Create empty directory to maintain old behavior
        Directory(targetPath).createSync(recursive: true);
        print('  ✓ ${serializer.name} (empty)');
      }
    }

    print('\n[6/6] Running analyzer...');
    final targetPath = p.join(
      'test',
      'generated',
      'schema_2',
      schemaNameWithoutExt,
    );
    await runAnalyzer(targetPath, schemaFileName);

    print('\n=== TEST PASSED ===\n');
  } catch (e, s) {
    testException = e;
    testStackTrace = s;
    print('\n=== TEST FAILED ===');
  }

  if (testException != null) {
    Error.throwWithStackTrace(testException, testStackTrace!);
  }
}

void main() {
  late final String buildFolder;

  setUpAll(() async {
    buildFolder = p.join('test', 'builders', 'schemas_2');
    final sourceBuilder = p.join('test', 'builder');

    deleteBuilderFolder(buildFolder);
    copyDirectory(Directory(sourceBuilder), Directory(buildFolder));
  });

  tearDownAll(() {
    deleteBuilderFolder(buildFolder);
  });

  group('schemas_2', () {
    test('haskell__petstore.yaml', () async {
      await schemaTest('haskell__petstore.yaml', buildFolder);
    });

    test('http-basic-test.yaml', () async {
      await schemaTest('http-basic-test.yaml', buildFolder);
    });

    test('inline_model_allof_propertyof_oneof.yaml', () async {
      await schemaTest('inline_model_allof_propertyof_oneof.yaml', buildFolder);
    });

    test('inline_request_body_no_components.yaml', () async {
      await schemaTest('inline_request_body_no_components.yaml', buildFolder);
    });

    test('issue______arrayEnumEmbedded.yaml', () async {
      await schemaTest('issue______arrayEnumEmbedded.yaml', buildFolder);
    });

    test('issue_10056.yaml', () async {
      await schemaTest('issue_10056.yaml', buildFolder);
    });

    test('issue_10244.yaml', () async {
      await schemaTest('issue_10244.yaml', buildFolder);
    });

    test('issue_10278.yaml', () async {
      await schemaTest('issue_10278.yaml', buildFolder);
    });

    test('issue_10725.yaml', () async {
      await schemaTest('issue_10725.yaml', buildFolder);
    });

    test('issue_10792.yaml', () async {
      await schemaTest('issue_10792.yaml', buildFolder);
    });

    test('issue_10865_default_values.yaml', () async {
      await schemaTest('issue_10865_default_values.yaml', buildFolder);
    });

    test('issue_10866_bigdecimal_default.yaml', () async {
      await schemaTest('issue_10866_bigdecimal_default.yaml', buildFolder);
    });

    test('issue_11464.yaml', () async {
      await schemaTest('issue_11464.yaml', buildFolder);
    });

    test('issue_11521.yaml', () async {
      await schemaTest('issue_11521.yaml', buildFolder);
    });

    test('issue_11537.yaml', () async {
      await schemaTest('issue_11537.yaml', buildFolder);
    });

    test('issue_11304_backticks_reserved_words.yaml', () async {
      await schemaTest(
        'issue_11304_backticks_reserved_words.yaml',
        buildFolder,
      );
    });

    test('issue_11897.yaml', () async {
      await schemaTest('issue_11897.yaml', buildFolder);
    });

    test('issue_11957.yaml', () async {
      await schemaTest('issue_11957.yaml', buildFolder);
    });

    test('issue_12196.yaml', () async {
      await schemaTest('issue_12196.yaml', buildFolder);
    });

    test('issue_12445.yaml', () async {
      await schemaTest('issue_12445.yaml', buildFolder);
    });

    test('issue_12457.yaml', () async {
      await schemaTest('issue_12457.yaml', buildFolder);
    });

    test('issue_12494.yaml', () async {
      await schemaTest('issue_12494.yaml', buildFolder);
    });

    test('issue_12790.yaml', () async {
      await schemaTest('issue_12790.yaml', buildFolder);
    });

    test('issue_12857.yaml', () async {
      await schemaTest('issue_12857.yaml', buildFolder);
    });

    test('issue_12929.yaml', () async {
      await schemaTest('issue_12929.yaml', buildFolder);
    });

    test('issue_13025.yaml', () async {
      await schemaTest('issue_13025.yaml', buildFolder);
    });

    test('issue_13043_recursive_model.yaml', () async {
      await schemaTest('issue_13043_recursive_model.yaml', buildFolder);
    });

    test('issue_13150.yaml', () async {
      await schemaTest('issue_13150.yaml', buildFolder);
    });

    test('issue_13917.yaml', () async {
      await schemaTest('issue_13917.yaml', buildFolder);
    });

    test('issue_14252.yaml', () async {
      await schemaTest('issue_14252.yaml', buildFolder);
    });

    test('issue_14418.yaml', () async {
      await schemaTest('issue_14418.yaml', buildFolder);
    });

    test('issue_14907.yaml', () async {
      await schemaTest('issue_14907.yaml', buildFolder);
    });

    test('issue_14917.yaml', () async {
      await schemaTest('issue_14917.yaml', buildFolder);
    });

    test('issue_15265.yaml', () async {
      await schemaTest('issue_15265.yaml', buildFolder);
    });

    test('issue_15511.yaml', () async {
      await schemaTest('issue_15511.yaml', buildFolder);
    });

    test('issue_15796.yaml', () async {
      await schemaTest('issue_15796.yaml', buildFolder);
    });

    test('issue_15923.yaml', () async {
      await schemaTest('issue_15923.yaml', buildFolder);
    });

    test('issue_16496.yaml', () async {
      await schemaTest('issue_16496.yaml', buildFolder);
    });

    test('issue_16797.yaml', () async {
      await schemaTest('issue_16797.yaml', buildFolder);
    });

    test('issue_17150.yaml', () async {
      await schemaTest('issue_17150.yaml', buildFolder);
    });

    test('issue_17555.yaml', () async {
      await schemaTest('issue_17555.yaml', buildFolder);
    });

    test('issue_241.yaml', () async {
      await schemaTest('issue_241.yaml', buildFolder);
    });

    test('issue_2908.yaml', () async {
      await schemaTest('issue_2908.yaml', buildFolder);
    });

    test('issue_4832.yaml', () async {
      await schemaTest('issue_4832.yaml', buildFolder);
    });

    test('issue_4876_format_email.yaml', () async {
      await schemaTest('issue_4876_format_email.yaml', buildFolder);
    });

    test('issue_4947.yaml', () async {
      await schemaTest('issue_4947.yaml', buildFolder);
    });

    test('issue_5026-b.yaml', () async {
      await schemaTest('issue_5026-b.yaml', buildFolder);
    });

    test('issue_5026.yaml', () async {
      await schemaTest('issue_5026.yaml', buildFolder);
    });

    test('issue_5381.yaml', () async {
      await schemaTest('issue_5381.yaml', buildFolder);
    });

    test('issue_6096.yaml', () async {
      await schemaTest('issue_6096.yaml', buildFolder);
    });

    test('issue_7118.yaml', () async {
      await schemaTest('issue_7118.yaml', buildFolder);
    });

    test('issue_7193.yaml', () async {
      await schemaTest('issue_7193.yaml', buildFolder);
    });

    test('issue_7199_array_simple_string.yaml', () async {
      await schemaTest('issue_7199_array_simple_string.yaml', buildFolder);
    });

    test('issue_7361.yaml', () async {
      await schemaTest('issue_7361.yaml', buildFolder);
    });

    test('issue_7372.yaml', () async {
      await schemaTest('issue_7372.yaml', buildFolder);
    });

    test('issue_7532.yaml', () async {
      await schemaTest('issue_7532.yaml', buildFolder);
    });

    test('issue_7533.yaml', () async {
      await schemaTest('issue_7533.yaml', buildFolder);
    });

    test('issue_7614.yaml', () async {
      await schemaTest('issue_7614.yaml', buildFolder);
    });

    test('issue_7791.yaml', () async {
      await schemaTest('issue_7791.yaml', buildFolder);
    });

    test('issue_8045.yaml', () async {
      await schemaTest('issue_8045.yaml', buildFolder);
    });

    test('issue_8052_recursive_model.yaml', () async {
      await schemaTest('issue_8052_recursive_model.yaml', buildFolder);
    });

    test('issue_8535.yaml', () async {
      await schemaTest('issue_8535.yaml', buildFolder);
    });

    test('issue_9086_expected.yaml', () async {
      await schemaTest('issue_9086_expected.yaml', buildFolder);
    });

    test('issue_9086.yaml', () async {
      await schemaTest('issue_9086.yaml', buildFolder);
    });

    test('issue_9447.yaml', () async {
      await schemaTest('issue_9447.yaml', buildFolder);
    });

    test('issue_9719.yaml', () async {
      await schemaTest('issue_9719.yaml', buildFolder);
    });

    test('issue_9848.yaml', () async {
      await schemaTest('issue_9848.yaml', buildFolder);
    });

    test('issue-11340.yaml', () async {
      await schemaTest('issue-11340.yaml', buildFolder);
    });

    test(
      'issue_constructor-required-values-with-multiple-inheritance.yaml',
      () async {
        await schemaTest(
          'issue_constructor-required-values-with-multiple-inheritance.yaml',
          buildFolder,
        );
      },
    );

    test('issue-17367.yaml', () async {
      await schemaTest('issue-17367.yaml', buildFolder);
    });

    test('issue-17485.yaml', () async {
      await schemaTest('issue-17485.yaml', buildFolder);
    });

    test('issue-4062.yaml', () async {
      await schemaTest('issue-4062.yaml', buildFolder);
    });
  });
}
