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
      'schema_4',
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
        'schema_4',
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
      'schema_4',
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
    buildFolder = p.join('test', 'builders', 'schemas_4');
    final sourceBuilder = p.join('test', 'builder');

    deleteBuilderFolder(buildFolder);
    copyDirectory(Directory(sourceBuilder), Directory(buildFolder));
  });

  tearDownAll(() {
    deleteBuilderFolder(buildFolder);
  });

  group('schemas_4', () {
    test('petstore-with-operations-without-required-params.yaml', () async {
      await schemaTest(
        'petstore-with-operations-without-required-params.yaml',
        buildFolder,
      );
    });

    test('petstore-with-problem-details.yaml', () async {
      await schemaTest('petstore-with-problem-details.yaml', buildFolder);
    });

    test('petstore-with-spring-pageable.yaml', () async {
      await schemaTest('petstore-with-spring-pageable.yaml', buildFolder);
    });

    test('petstore-with-spring-provide-args.yaml', () async {
      await schemaTest('petstore-with-spring-provide-args.yaml', buildFolder);
    });

    test('petstore-with-tags.yaml', () async {
      await schemaTest('petstore-with-tags.yaml', buildFolder);
    });

    test('petstore.yaml', () async {
      await schemaTest('petstore.yaml', buildFolder);
    });

    test('php-symfony__petstore.yaml', () async {
      await schemaTest('php-symfony__petstore.yaml', buildFolder);
    });

    test('ping-array-default.yaml', () async {
      await schemaTest('ping-array-default.yaml', buildFolder);
    });

    test('array-default-int.yaml', () async {
      await schemaTest('array-default-int.yaml', buildFolder);
    });

    test('ping.yaml', () async {
      await schemaTest('ping.yaml', buildFolder);
    });

    test('pingBearerAuth.yaml', () async {
      await schemaTest('pingBearerAuth.yaml', buildFolder);
    });

    test('pingSomeObj.yaml', () async {
      await schemaTest('pingSomeObj.yaml', buildFolder);
    });

    test('produces.yaml', () async {
      await schemaTest('produces.yaml', buildFolder);
    });

    test('property-deprecated.yaml', () async {
      await schemaTest('property-deprecated.yaml', buildFolder);
    });

    test('property-readonly.yaml', () async {
      await schemaTest('property-readonly.yaml', buildFolder);
    });

    test('protobuf__petstore.yaml', () async {
      await schemaTest('protobuf__petstore.yaml', buildFolder);
    });

    test('python-fastapi__openapi.yaml', () async {
      await schemaTest('python-fastapi__openapi.yaml', buildFolder);
    });

    test('python-fastapi__petstore.yaml', () async {
      await schemaTest('python-fastapi__petstore.yaml', buildFolder);
    });

    test('python-flask__petstore.yaml', () async {
      await schemaTest('python-flask__petstore.yaml', buildFolder);
    });

    test('r__petstore.yaml', () async {
      await schemaTest('r__petstore.yaml', buildFolder);
    });

    test('recursion-bug-4650.yaml', () async {
      await schemaTest('recursion-bug-4650.yaml', buildFolder);
    });

    test('recursion.yaml', () async {
      await schemaTest('recursion.yaml', buildFolder);
    });

    test('regression_6905.yaml', () async {
      await schemaTest('regression_6905.yaml', buildFolder);
    });

    test('regression-16119.yaml', () async {
      await schemaTest('regression-16119.yaml', buildFolder);
    });

    test('removeAnyOfOneOfAndKeepPropertiesOnly_test.yaml', () async {
      await schemaTest(
        'removeAnyOfOneOfAndKeepPropertiesOnly_test.yaml',
        buildFolder,
      );
    });

    test('required-and-readonly-property.yaml', () async {
      await schemaTest('required-and-readonly-property.yaml', buildFolder);
    });

    test('reserved_words.yaml', () async {
      await schemaTest('reserved_words.yaml', buildFolder);
    });

    test('resources__openapi.yaml', () async {
      await schemaTest('resources__openapi.yaml', buildFolder);
    });

    test('response-tests.yaml', () async {
      await schemaTest('response-tests.yaml', buildFolder);
    });

    test('responseCodeTest.yaml', () async {
      await schemaTest('responseCodeTest.yaml', buildFolder);
    });

    test('responseHeaderTest.yaml', () async {
      await schemaTest('responseHeaderTest.yaml', buildFolder);
    });

    test('rootOperation.yaml', () async {
      await schemaTest('rootOperation.yaml', buildFolder);
    });

    test('ruby-sinatra__openapi.yaml', () async {
      await schemaTest('ruby-sinatra__openapi.yaml', buildFolder);
    });

    test('rust__petstore.yaml', () async {
      await schemaTest('rust__petstore.yaml', buildFolder);
    });

    test('rust-name-mapping-test.yaml', () async {
      await schemaTest('rust-name-mapping-test.yaml', buildFolder);
    });

    test('rust-server__rust-server-test.yaml', () async {
      await schemaTest('rust-server__rust-server-test.yaml', buildFolder);
    });

    test('SampleProject.yaml', () async {
      await schemaTest('SampleProject.yaml', buildFolder);
    });

    test('scala__petstore.yaml', () async {
      await schemaTest('scala__petstore.yaml', buildFolder);
    });

    test('scala_reserved_words.yaml', () async {
      await schemaTest('scala_reserved_words.yaml', buildFolder);
    });

    test('scala-akka__petstore.yaml', () async {
      await schemaTest('scala-akka__petstore.yaml', buildFolder);
    });

    test('scala-pekko__petstore.yaml', () async {
      await schemaTest('scala-pekko__petstore.yaml', buildFolder);
    });

    test('schema-with-nullable-arrays.yaml', () async {
      await schemaTest('schema-with-nullable-arrays.yaml', buildFolder);
    });

    test('schema-with-special-characters.yaml', () async {
      await schemaTest('schema-with-special-characters.yaml', buildFolder);
    });

    test('schema.yaml', () async {
      await schemaTest('schema.yaml', buildFolder);
    });

    test('simplifyAnyOfStringAndEnumString_test.yaml', () async {
      await schemaTest(
        'simplifyAnyOfStringAndEnumString_test.yaml',
        buildFolder,
      );
    });

    test('simplifyBooleanEnum_test.yaml', () async {
      await schemaTest('simplifyBooleanEnum_test.yaml', buildFolder);
    });

    test('skip-default-interface.yaml', () async {
      await schemaTest('skip-default-interface.yaml', buildFolder);
    });

    test('spec-with-oneof-anyof-required.yaml', () async {
      await schemaTest('spec-with-oneof-anyof-required.yaml', buildFolder);
    });

    test('spec1.yaml', () async {
      await schemaTest('spec1.yaml', buildFolder);
    });

    test('spec2.yaml', () async {
      await schemaTest('spec2.yaml', buildFolder);
    });

    test('specs__petstore-v3.0.yaml', () async {
      await schemaTest('specs__petstore-v3.0.yaml', buildFolder);
    });

    test('specs__petstore.yaml', () async {
      await schemaTest('specs__petstore.yaml', buildFolder);
    });

    test(
      'spring__petstore-with-fake-endpoints-models-for-testing.yaml',
      () async {
        await schemaTest(
          'spring__petstore-with-fake-endpoints-models-for-testing.yaml',
          buildFolder,
        );
      },
    );

    test('spring__petstore-with-spring-pageable.yaml', () async {
      await schemaTest(
        'spring__petstore-with-spring-pageable.yaml',
        buildFolder,
      );
    });

    test('sse.yaml', () async {
      await schemaTest('sse.yaml', buildFolder);
    });

    test('streaming.yaml', () async {
      await schemaTest('streaming.yaml', buildFolder);
    });

    test('stripModelName.yaml', () async {
      await schemaTest('stripModelName.yaml', buildFolder);
    });

    test('swagger.yaml', () async {
      await schemaTest('swagger.yaml', buildFolder);
    });

    test('Swift5CodeGenerationBug2.yaml', () async {
      await schemaTest('Swift5CodeGenerationBug2.yaml', buildFolder);
    });

    test('Swift5CodeGenerationStackOverflow#2966.yaml', () async {
      await schemaTest(
        'Swift5CodeGenerationStackOverflow#2966.yaml',
        buildFolder,
      );
    });

    test('tags.yaml', () async {
      await schemaTest('tags.yaml', buildFolder);
    });

    test('two-responses.yaml', () async {
      await schemaTest('two-responses.yaml', buildFolder);
    });

    test('type_mapping_test.yaml', () async {
      await schemaTest('type_mapping_test.yaml', buildFolder);
    });

    test('type-alias.yaml', () async {
      await schemaTest('type-alias.yaml', buildFolder);
    });

    test('typescript-angular__composed-schemas.yaml', () async {
      await schemaTest(
        'typescript-angular__composed-schemas.yaml',
        buildFolder,
      );
    });

    test('typescript-fetch__enum.yaml', () async {
      await schemaTest('typescript-fetch__enum.yaml', buildFolder);
    });

    test('unique_items.yaml', () async {
      await schemaTest('unique_items.yaml', buildFolder);
    });

    test('validation.yaml', () async {
      await schemaTest('validation.yaml', buildFolder);
    });

    test('webhooks.yaml', () async {
      await schemaTest('webhooks.yaml', buildFolder);
    });

    test('wordnik.yaml', () async {
      await schemaTest('wordnik.yaml', buildFolder);
    });

    test('wsdl__petstore.yaml', () async {
      await schemaTest('wsdl__petstore.yaml', buildFolder);
    });

    test('x-discriminator-value.yaml', () async {
      await schemaTest('x-discriminator-value.yaml', buildFolder);
    });
  });
}
