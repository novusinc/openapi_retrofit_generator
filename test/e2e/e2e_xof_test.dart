@Timeout(Duration(minutes: 10))
library;

import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:test/test.dart';

import '../test_utils.dart';
import 'e2e_util.dart';

void main() {
  late final String buildFolder;

  setUpAll(() async {
    buildFolder = setupGroupBuilder('xof');
  });

  tearDownAll(() {
    teardownGroupBuilder('xof');
  });

  group('xof', () {
    test('all_of.3.0', () async {
      await e2eTest(
        'xof/all_of.3.0',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'all_of.3.0.json',
        buildFolder: buildFolder,
      );
    });

    test('discriminated_one_of.3.0', () async {
      await e2eTest(
        'xof/discriminated_one_of.3.0',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'discriminated_one_of.3.0.json',
        buildFolder: buildFolder,
      );
    });

    test('fallback_union', () async {
      await e2eTest(
        'xof/fallback_union',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          fallbackUnion: 'unknown',
          includeIfNull: true,
        ),
        schemaFileName: 'fallback_union.json',
        buildFolder: buildFolder,
      );
    });

    test('of_like_class.3.1', () async {
      await e2eTest(
        'xof/of_like_class.3.1',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'of_like_class.3.1.json',
        buildFolder: buildFolder,
      );
    });

    test('discriminated_any_of_complete_mapping', () async {
      await e2eTest(
        'xof/discriminated_any_of_complete_mapping',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'discriminated_any_of_complete_mapping.3.1.yaml',
        buildFolder: buildFolder,
      );
    });

    test('non_discriminated_one_of_deferred', () async {
      await e2eTest(
        'xof/non_discriminated_one_of_deferred',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'openapi.yaml',
        buildFolder: buildFolder,
      );
    });

    test('non_discriminated_any_of_deferred', () async {
      await e2eTest(
        'xof/non_discriminated_any_of_deferred',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'openapi.yaml',
        buildFolder: buildFolder,
      );
    });

    test('union_inline_and_refs_any_of_deferred', () async {
      await e2eTest(
        'xof/union_inline_and_refs_any_of_deferred',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'openapi.yaml',
        buildFolder: buildFolder,
      );
    });

    test('union_inline_and_refs_one_of_deferred', () async {
      await e2eTest(
        'xof/union_inline_and_refs_one_of_deferred',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'openapi.yaml',
        buildFolder: buildFolder,
      );
    });

    test('merged_outputs', () async {
      await e2eTest(
        'basic/merged_outputs',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          name: 'merged_outputs',
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          useXNullable: true,
          mergeOutputs: true,
          includeIfNull: true,
        ),
        schemaFileName: 'merged_outputs.json',
        buildFolder: buildFolder,
      );
    });

    test('utoipa_discriminator', () async {
      await e2eTest(
        'xof/utoipa_discriminator',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'utoipa_discriminator.yaml',
        buildFolder: buildFolder,
      );
    });

    test('discriminated_union_recursive_self_reference', () async {
      await e2eTest(
        'xof/discriminated_union_recursive_self_reference',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
        ),
        schemaFileName: 'discriminated_union_recursive_self_reference.json',
        buildFolder: buildFolder,
      );
    });

    // sealed_ref_unions only affects the freezed serializer; the json and
    // mappable goldens intentionally show the unchanged legacy emission.
    test('sealed_ref_unions_one_of', () async {
      await e2eTest(
        'xof/sealed_ref_unions_one_of',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
          sealedRefUnions: true,
        ),
        schemaFileName: 'sealed_ref_unions_one_of.json',
        buildFolder: buildFolder,
      );
    });

    test('sealed_ref_unions_shared_leaves', () async {
      await e2eTest(
        'xof/sealed_ref_unions_shared_leaves',
        (outputDirectory, schemaPath, serializer) => OpenApiConfig(
          outputDirectory: outputDirectory,
          schemaPath: schemaPath,
          jsonSerializer: serializer,
          putClientsInFolder: true,
          includeIfNull: true,
          sealedRefUnions: true,
        ),
        schemaFileName: 'sealed_ref_unions_shared_leaves.json',
        buildFolder: buildFolder,
      );
    });
  });
}
