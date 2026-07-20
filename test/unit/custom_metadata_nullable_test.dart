import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:test/test.dart';

/// Regression test: custom metadata declared on a NULLABLE property was
/// silently dropped by the parser.
///
/// Nullable properties reach `_findType` as `type: [x, "null"]` or
/// `anyOf: [x, {type: null}]` (including nullable `$ref`s). That branch unwraps
/// to the inner, non-null variant to determine the Dart type — but the custom
/// metadata (`value_source`, `generated_as`, `immutable`, …) lives on the OUTER
/// property map, not the inner variant. The composed return therefore has to
/// re-extract it from the outer map; without that, every nullable field lost its
/// annotations while non-null fields kept theirs.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "Embedding": {
        "type": "object",
        "properties": {"vector": {"type": "string"}}
      },
      "Thing": {
        "type": "object",
        "properties": {
          "non_null": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          },
          "nullable_scalar": {
            "type": ["string", "null"],
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          },
          "nullable_ref": {
            "anyOf": [
              {"$ref": "#/components/schemas/Embedding"},
              {"type": "null"}
            ],
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          }
        }
      }
    }
  }
}
''';

  test(
    'value_source survives on nullable scalar and nullable \$ref properties',
    () {
      final config = ParserConfig(
        spec,
        isJson: true,
        customMetadata: const CustomMetadataConfig(
          enabled: true,
          fields: [
            CustomMetadataField(
              name: 'value_source',
              annotation: '@ValueSource',
              annotationTemplate: "@ValueSource('{value}')",
            ),
          ],
        ),
      );

      final classes = OpenApiParser(config).parseDataClasses();
      final thing =
          classes.firstWhere((c) => c.name == 'Thing')
              as UniversalComponentClass;

      dynamic metaOf(String jsonKey) => thing.parameters
          .firstWhere((p) => (p.jsonKey ?? p.name) == jsonKey)
          .customMetadata['value_source'];

      // Control — a non-null field always kept its metadata.
      expect(metaOf('non_null'), 'VALUE_SOURCE_CLIENT_PROVIDED');

      // Regression — these two dropped it before the fix.
      expect(
        metaOf('nullable_scalar'),
        'VALUE_SOURCE_CLIENT_PROVIDED',
        reason: 'nullable scalar (type: [x, "null"]) must keep value_source',
      );
      expect(
        metaOf('nullable_ref'),
        'VALUE_SOURCE_CLIENT_PROVIDED',
        reason:
            r'nullable $ref (anyOf: [ref, {type: null}]) must keep value_source',
      );
    },
  );
}
