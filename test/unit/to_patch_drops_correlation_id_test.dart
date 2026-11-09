import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// A document-level request's `id` is a correlation key naming the document to
/// update, so `toPatch()` must not write it. A nested request's `id` is the identity
/// of a list element, so it must survive inside the parent's patch.
///
/// See novus `docs/plans/client-write-path-enforcement.md` G19.5.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "UpdateOptionRequest": {
        "x-partial-update": true,
        "type": "object",
        "properties": {
          "id": {"type": "string"},
          "text": {"type": "string"}
        }
      },
      "UpdatePollRequest": {
        "x-partial-update": true,
        "type": "object",
        "properties": {
          "id": {"type": "string"},
          "options": {
            "type": "array",
            "items": {"$ref": "#/components/schemas/UpdateOptionRequest"}
          }
        }
      },
      "UpdateNoIdRequest": {
        "x-partial-update": true,
        "type": "object",
        "properties": {"text": {"type": "string"}}
      }
    }
  }
}
''';

  String generate(String name) {
    final classes = OpenApiParser(
      ParserConfig(spec, isJson: true),
    ).parseDataClasses();
    return dartFreezedDtoTemplate(
      classes.firstWhere((c) => c.name == name) as UniversalComponentClass,
      includeIfNull: false,
      customMetadataImportPath: 'package:novus_models/novus_models.dart',
      partialUpdateClasses: resolvePartialUpdateClasses(classes),
    );
  }

  test('toPatch() removes a top-level id', () {
    expect(
      generate('UpdatePollRequest'),
      contains(
        "Map<String, dynamic> toPatch() => toNestedPatch()..remove('id');",
      ),
    );
  });

  test('toNestedPatch() still writes the id', () {
    expect(
      generate('UpdatePollRequest').replaceAll(RegExp(r'\s+'), ' '),
      contains("if (this.id != null) { patch['id'] = this.id!.value; }"),
    );
  });

  test('a parent serialises its children with toNestedPatch()', () {
    expect(
      generate('UpdatePollRequest'),
      contains('this.options!.value?.map((e) => e.toNestedPatch()).toList()'),
    );
  });

  test('a request with no id has nothing to remove', () {
    expect(
      generate('UpdateNoIdRequest'),
      contains('Map<String, dynamic> toPatch() => toNestedPatch();'),
    );
  });
}
