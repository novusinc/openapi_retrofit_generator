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
      'schema_1',
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
        'schema_1',
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
      'schema_1',
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
    buildFolder = p.join('test', 'builders', 'schemas_1');
    final sourceBuilder = p.join('test', 'builder');

    deleteBuilderFolder(buildFolder);
    copyDirectory(Directory(sourceBuilder), Directory(buildFolder));
  });

  tearDownAll(() {
    deleteBuilderFolder(buildFolder);
  });

  group('schemas_1', () {
    test('11_regex.yaml', () async {
      await schemaTest('11_regex.yaml', buildFolder);
    });

    test('13942_schema_enum_names.yaml', () async {
      await schemaTest('13942_schema_enum_names.yaml', buildFolder);
    });

    test('2_0__markdown.yaml', () async {
      await schemaTest('2_0__markdown.yaml', buildFolder);
    });

    test('3_0__arrayRefBody.yaml', () async {
      await schemaTest('3_0__arrayRefBody.yaml', buildFolder);
    });

    test('3_0__elm.yaml', () async {
      await schemaTest('3_0__elm.yaml', buildFolder);
    });

    test('3_0__petstore.yaml', () async {
      await schemaTest('3_0__petstore.yaml', buildFolder);
    });

    test('3_1__petstore.yaml', () async {
      await schemaTest('3_1__petstore.yaml', buildFolder);
    });

    test('3_1__schema.yaml', () async {
      await schemaTest('3_1__schema.yaml', buildFolder);
    });

    test('3134-regression.yaml', () async {
      await schemaTest('3134-regression.yaml', buildFolder);
    });

    test('3248-regression-dates.yaml', () async {
      await schemaTest('3248-regression-dates.yaml', buildFolder);
    });

    test('3248-regression.yaml', () async {
      await schemaTest('3248-regression.yaml', buildFolder);
    });

    test('ada__petstore.yaml', () async {
      await schemaTest('ada__petstore.yaml', buildFolder);
    });

    test('additional-properties-deeply-nested.yaml', () async {
      await schemaTest('additional-properties-deeply-nested.yaml', buildFolder);
    });

    test('addUnsignedToIntegerWithInvalidMaxValue_test.yaml', () async {
      await schemaTest(
        'addUnsignedToIntegerWithInvalidMaxValue_test.yaml',
        buildFolder,
      );
    });

    test('allOf_composition_discriminator_recursive.yaml', () async {
      await schemaTest(
        'allOf_composition_discriminator_recursive.yaml',
        buildFolder,
      );
    });

    test('allOf_composition_discriminator.yaml', () async {
      await schemaTest('allOf_composition_discriminator.yaml', buildFolder);
    });

    test('allOf_composition.yaml', () async {
      await schemaTest('allOf_composition.yaml', buildFolder);
    });

    test('allOf_extension_parent.yaml', () async {
      await schemaTest('allOf_extension_parent.yaml', buildFolder);
    });

    test('allOf_no_fields.yaml', () async {
      await schemaTest('allOf_no_fields.yaml', buildFolder);
    });

    test('allOf_nullable.yaml', () async {
      await schemaTest('allOf_nullable.yaml', buildFolder);
    });

    test('allof_primitive.yaml', () async {
      await schemaTest('allof_primitive.yaml', buildFolder);
    });

    test('allOf-nullable.yaml', () async {
      await schemaTest('allOf-nullable.yaml', buildFolder);
    });

    test('allOf-readonly.yaml', () async {
      await schemaTest('allOf-readonly.yaml', buildFolder);
    });

    test('allOf-required-parent.yaml', () async {
      await schemaTest('allOf-required-parent.yaml', buildFolder);
    });

    test('allOf-required.yaml', () async {
      await schemaTest('allOf-required.yaml', buildFolder);
    });

    test('allOf.yaml', () async {
      await schemaTest('allOf.yaml', buildFolder);
    });

    test('allOfDuplicatedProperties.yaml', () async {
      await schemaTest('allOfDuplicatedProperties.yaml', buildFolder);
    });

    test('allOfMappingDuplicatedProperties.yaml', () async {
      await schemaTest('allOfMappingDuplicatedProperties.yaml', buildFolder);
    });

    test('allOfMultiParent.yaml', () async {
      await schemaTest('allOfMultiParent.yaml', buildFolder);
    });

    test('allOfTest.yaml', () async {
      await schemaTest('allOfTest.yaml', buildFolder);
    });

    test('any_codable.yaml', () async {
      await schemaTest('any_codable.yaml', buildFolder);
    });

    test('any_type.yaml', () async {
      await schemaTest('any_type.yaml', buildFolder);
    });

    test('anyOf.yaml', () async {
      await schemaTest('anyOf.yaml', buildFolder);
    });

    test('anyOfDiscriminator.yaml', () async {
      await schemaTest('anyOfDiscriminator.yaml', buildFolder);
    });

    test('api__openapi.yaml', () async {
      await schemaTest('api__openapi.yaml', buildFolder);
    });

    test('api-with-ref-param.yaml', () async {
      await schemaTest('api-with-ref-param.yaml', buildFolder);
    });

    test('arrayRefBody.yaml', () async {
      await schemaTest('arrayRefBody.yaml', buildFolder);
    });

    test('aspnetcore__petstore.yaml', () async {
      await schemaTest('aspnetcore__petstore.yaml', buildFolder);
    });

    test('autoset_constant.yaml', () async {
      await schemaTest('autoset_constant.yaml', buildFolder);
    });

    test('avro-schema__petstore.yaml', () async {
      await schemaTest('avro-schema__petstore.yaml', buildFolder);
    });

    test('Basic.yaml', () async {
      await schemaTest('Basic.yaml', buildFolder);
    });

    test('BasicVariablesInExample.yaml', () async {
      await schemaTest('BasicVariablesInExample.yaml', buildFolder);
    });

    test('c__petstore.yaml', () async {
      await schemaTest('c__petstore.yaml', buildFolder);
    });

    test('callbacks.yaml', () async {
      await schemaTest('callbacks.yaml', buildFolder);
    });

    test('common-parameters.yaml', () async {
      await schemaTest('common-parameters.yaml', buildFolder);
    });

    test('composed-allof.yaml', () async {
      await schemaTest('composed-allof.yaml', buildFolder);
    });

    test('composed-oneof.yaml', () async {
      await schemaTest('composed-oneof.yaml', buildFolder);
    });

    test('conflictingParameter.yaml', () async {
      await schemaTest('conflictingParameter.yaml', buildFolder);
    });

    test('container-type-import.yaml', () async {
      await schemaTest('container-type-import.yaml', buildFolder);
    });

    test('content-type.yaml', () async {
      await schemaTest('content-type.yaml', buildFolder);
    });

    test('convertEnumNullToNullable_test.yaml', () async {
      await schemaTest('convertEnumNullToNullable_test.yaml', buildFolder);
    });

    test('cpp-qt__petstore.yaml', () async {
      await schemaTest('cpp-qt__petstore.yaml', buildFolder);
    });

    test('crystal__petstore.yaml', () async {
      await schemaTest('crystal__petstore.yaml', buildFolder);
    });

    test('dart__petstore.yaml', () async {
      await schemaTest('dart__petstore.yaml', buildFolder);
    });

    test('dates-api.yaml', () async {
      await schemaTest('dates-api.yaml', buildFolder);
    });

    test('deepobject-array-with-pattern.yaml', () async {
      await schemaTest('deepobject-array-with-pattern.yaml', buildFolder);
    });

    test('deepobject.yaml', () async {
      await schemaTest('deepobject.yaml', buildFolder);
    });

    test('deprecated-properties.yaml', () async {
      await schemaTest('deprecated-properties.yaml', buildFolder);
    });

    test('dict_query_parameter.yaml', () async {
      await schemaTest('dict_query_parameter.yaml', buildFolder);
    });

    test('dynamic-servers.yaml', () async {
      await schemaTest('dynamic-servers.yaml', buildFolder);
    });

    test('empty-object.yaml', () async {
      await schemaTest('empty-object.yaml', buildFolder);
    });

    test('emptyBaseModel.yaml', () async {
      await schemaTest('emptyBaseModel.yaml', buildFolder);
    });

    test('enableKeepOnlyFirstTagInOperation_test.yaml', () async {
      await schemaTest(
        'enableKeepOnlyFirstTagInOperation_test.yaml',
        buildFolder,
      );
    });

    test('enum-and-inner-enum-uri.yaml', () async {
      await schemaTest('enum-and-inner-enum-uri.yaml', buildFolder);
    });

    test('enum.yaml', () async {
      await schemaTest('enum.yaml', buildFolder);
    });

    test('explode-query-parameter.yaml', () async {
      await schemaTest('explode-query-parameter.yaml', buildFolder);
    });

    test('exploded-query-param-array.yaml', () async {
      await schemaTest('exploded-query-param-array.yaml', buildFolder);
    });

    test('form-duplicated-parameter.yaml', () async {
      await schemaTest('form-duplicated-parameter.yaml', buildFolder);
    });

    test('form-multipart-binary-array.yaml', () async {
      await schemaTest('form-multipart-binary-array.yaml', buildFolder);
    });

    test('generate-alias-as-model.yaml', () async {
      await schemaTest('generate-alias-as-model.yaml', buildFolder);
    });

    test('generic.yaml', () async {
      await schemaTest('generic.yaml', buildFolder);
    });

    test('globalProducesConsumesTest.yaml', () async {
      await schemaTest('globalProducesConsumesTest.yaml', buildFolder);
    });
  });
}
