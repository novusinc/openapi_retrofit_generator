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
      'schema_3',
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
        'schema_3',
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
      'schema_3',
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
    buildFolder = p.join('test', 'builders', 'schemas_3');
    final sourceBuilder = p.join('test', 'builder');

    deleteBuilderFolder(buildFolder);
    copyDirectory(Directory(sourceBuilder), Directory(buildFolder));
  });

  tearDownAll(() {
    deleteBuilderFolder(buildFolder);
  });

  group('schemas_3', () {
    test('reserved_client_names.yaml', () async {
      await schemaTest('reserved_client_names.yaml', buildFolder);
    });

    test('issue10591-enum-defaultValue.yaml', () async {
      await schemaTest('issue10591-enum-defaultValue.yaml', buildFolder);
    });

    test('issue11088-model-mutable-with-containers.yaml', () async {
      await schemaTest(
        'issue11088-model-mutable-with-containers.yaml',
        buildFolder,
      );
    });

    test('issue11242.yaml', () async {
      await schemaTest('issue11242.yaml', buildFolder);
    });

    test('issue12219_array.yaml', () async {
      await schemaTest('issue12219_array.yaml', buildFolder);
    });

    test('issue12219.yaml', () async {
      await schemaTest('issue12219.yaml', buildFolder);
    });

    test('issue1226.yaml', () async {
      await schemaTest('issue1226.yaml', buildFolder);
    });

    test('issue12474-multiline-description.yaml', () async {
      await schemaTest('issue12474-multiline-description.yaml', buildFolder);
    });

    test('issue13146_file_abstraction_response.yaml', () async {
      await schemaTest(
        'issue13146_file_abstraction_response.yaml',
        buildFolder,
      );
    });

    test('issue13506-defaultValue-numbers.yaml', () async {
      await schemaTest('issue13506-defaultValue-numbers.yaml', buildFolder);
    });

    test('issue14525.yaml', () async {
      await schemaTest('issue14525.yaml', buildFolder);
    });

    test('issue_14026_backticks_reserved_words.yaml', () async {
      await schemaTest(
        'issue_14026_backticks_reserved_words.yaml',
        buildFolder,
      );
    });

    test('issue15264.yaml', () async {
      await schemaTest('issue15264.yaml', buildFolder);
    });

    test('issue15822.yaml', () async {
      await schemaTest('issue15822.yaml', buildFolder);
    });

    test('issue392.yaml', () async {
      await schemaTest('issue392.yaml', buildFolder);
    });

    test('issue4111-multiline-operation-description.yaml', () async {
      await schemaTest(
        'issue4111-multiline-operation-description.yaml',
        buildFolder,
      );
    });

    test('issue4584.yaml', () async {
      await schemaTest('issue4584.yaml', buildFolder);
    });

    test('issue4808.yaml', () async {
      await schemaTest('issue4808.yaml', buildFolder);
    });

    test('issue5857.yaml', () async {
      await schemaTest('issue5857.yaml', buildFolder);
    });

    test('issue5497-use-tags.yaml', () async {
      await schemaTest('issue5497-use-tags.yaml', buildFolder);
    });

    test('issue677.yaml', () async {
      await schemaTest('issue677.yaml', buildFolder);
    });

    test('issue7262.yaml', () async {
      await schemaTest('issue7262.yaml', buildFolder);
    });

    test('issue7506.yaml', () async {
      await schemaTest('issue7506.yaml', buildFolder);
    });

    test('issue796.yaml', () async {
      await schemaTest('issue796.yaml', buildFolder);
    });

    test('issue8084.yaml', () async {
      await schemaTest('issue8084.yaml', buildFolder);
    });

    test('issue8352.yaml', () async {
      await schemaTest('issue8352.yaml', buildFolder);
    });

    test('issue855.yaml', () async {
      await schemaTest('issue855.yaml', buildFolder);
    });

    test('issue8792.yaml', () async {
      await schemaTest('issue8792.yaml', buildFolder);
    });

    test('issues_13069.yaml', () async {
      await schemaTest('issues_13069.yaml', buildFolder);
    });

    test('jaxrs__petstore.yaml', () async {
      await schemaTest('jaxrs__petstore.yaml', buildFolder);
    });

    test('jmeter__petstore.yaml', () async {
      await schemaTest('jmeter__petstore.yaml', buildFolder);
    });

    test('jsoncodable.yaml', () async {
      await schemaTest('jsoncodable.yaml', buildFolder);
    });

    test('mapArgs.yaml', () async {
      await schemaTest('mapArgs.yaml', buildFolder);
    });

    test('mapSchemas.yaml', () async {
      await schemaTest('mapSchemas.yaml', buildFolder);
    });

    test('META-INF__openapi.yaml', () async {
      await schemaTest('META-INF__openapi.yaml', buildFolder);
    });

    test('multipart-v3.yaml', () async {
      await schemaTest('multipart-v3.yaml', buildFolder);
    });

    test('name-parameter-mappings.yaml', () async {
      await schemaTest('name-parameter-mappings.yaml', buildFolder);
    });

    test('nested_anyof.yaml', () async {
      await schemaTest('nested_anyof.yaml', buildFolder);
    });

    test('nestedFormParameter.yaml', () async {
      await schemaTest('nestedFormParameter.yaml', buildFolder);
    });

    test('no-example-v3.yaml', () async {
      await schemaTest('no-example-v3.yaml', buildFolder);
    });

    test('null-types-with-type-array.yaml', () async {
      await schemaTest('null-types-with-type-array.yaml', buildFolder);
    });

    test('oauth2.yaml', () async {
      await schemaTest('oauth2.yaml', buildFolder);
    });

    test('oneOf_nonPrimitive.yaml', () async {
      await schemaTest('oneOf_nonPrimitive.yaml', buildFolder);
    });

    test('oneof_polymorphism_and_inheritance.yaml', () async {
      await schemaTest('oneof_polymorphism_and_inheritance.yaml', buildFolder);
    });

    test('oneOf_primitive.yaml', () async {
      await schemaTest('oneOf_primitive.yaml', buildFolder);
    });

    test('oneOf_reuseRef.yaml', () async {
      await schemaTest('oneOf_reuseRef.yaml', buildFolder);
    });

    test('oneOf_twoPrimitives.yaml', () async {
      await schemaTest('oneOf_twoPrimitives.yaml', buildFolder);
    });

    test('oneOf.yaml', () async {
      await schemaTest('oneOf.yaml', buildFolder);
    });

    test('oneOfArrayMapImport.yaml', () async {
      await schemaTest('oneOfArrayMapImport.yaml', buildFolder);
    });

    test('oneOfDiscriminator.yaml', () async {
      await schemaTest('oneOfDiscriminator.yaml', buildFolder);
    });

    test('openapi__openapi.yaml', () async {
      await schemaTest('openapi__openapi.yaml', buildFolder);
    });

    test('openapi.yaml', () async {
      await schemaTest('openapi.yaml', buildFolder);
    });

    test('ops-v3.yaml', () async {
      await schemaTest('ops-v3.yaml', buildFolder);
    });

    test('optionalResponse.yaml', () async {
      await schemaTest('optionalResponse.yaml', buildFolder);
    });

    test('parameter-test-spec.yaml', () async {
      await schemaTest('parameter-test-spec.yaml', buildFolder);
    });

    test('pathWithHtmlEntity.yaml', () async {
      await schemaTest('pathWithHtmlEntity.yaml', buildFolder);
    });

    test('petstore_oas3_test.yaml', () async {
      await schemaTest('petstore_oas3_test.yaml', buildFolder);
    });

    test('petstore_with_test_endpoint.yaml', () async {
      await schemaTest('petstore_with_test_endpoint.yaml', buildFolder);
    });

    test('petstore-addpet-only.yaml', () async {
      await schemaTest('petstore-addpet-only.yaml', buildFolder);
    });

    test('petstore-for-testing.yaml', () async {
      await schemaTest('petstore-for-testing.yaml', buildFolder);
    });

    test('petstore-group-parameter.yaml', () async {
      await schemaTest('petstore-group-parameter.yaml', buildFolder);
    });

    test(
      'petstore-multiple-required-properties-has-same-oneOf-object.yaml',
      () async {
        await schemaTest(
          'petstore-multiple-required-properties-has-same-oneOf-object.yaml',
          buildFolder,
        );
      },
    );

    test('petstore-no-multipart-for-testing.yaml', () async {
      await schemaTest('petstore-no-multipart-for-testing.yaml', buildFolder);
    });

    test('petstore-nullable.yaml', () async {
      await schemaTest('petstore-nullable.yaml', buildFolder);
    });

    test('petstore-on-classpath.yaml', () async {
      await schemaTest('petstore-on-classpath.yaml', buildFolder);
    });

    test('petstore-proto.yaml', () async {
      await schemaTest('petstore-proto.yaml', buildFolder);
    });

    test('petstore-v3.0-recommend.yaml', () async {
      await schemaTest('petstore-v3.0-recommend.yaml', buildFolder);
    });

    test('petstore-v3.1.yaml', () async {
      await schemaTest('petstore-v3.1.yaml', buildFolder);
    });

    test('petstore-with-complex-headers.yaml', () async {
      await schemaTest('petstore-with-complex-headers.yaml', buildFolder);
    });

    test('petstore-with-date-field.yaml', () async {
      await schemaTest('petstore-with-date-field.yaml', buildFolder);
    });

    test('petstore-with-deprecated-fields.yaml', () async {
      await schemaTest('petstore-with-deprecated-fields.yaml', buildFolder);
    });

    test(
      'petstore-with-fake-endpoints-for-testing-playframework-with-security.yaml',
      () async {
        await schemaTest(
          'petstore-with-fake-endpoints-for-testing-playframework-with-security.yaml',
          buildFolder,
        );
      },
    );

    test('petstore-with-no-response-body.yaml', () async {
      await schemaTest('petstore-with-no-response-body.yaml', buildFolder);
    });

    test('petstore-with-nullable-required.yaml', () async {
      await schemaTest('petstore-with-nullable-required.yaml', buildFolder);
    });

    test('petstore-with-object-as-parameter.yaml', () async {
      await schemaTest('petstore-with-object-as-parameter.yaml', buildFolder);
    });
  });
}
