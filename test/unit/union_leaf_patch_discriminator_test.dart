import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:test/test.dart';

/// A union leaf's patch carries its discriminator.
///
/// A leaf whose discriminator has a schema default (`"type": "text"`) keeps it as
/// a plain `@Default` field, not a presence-tracked one, and `toNestedPatch()`
/// used to emit only presence-tracked fields. A list of union elements is
/// replaced whole, so each element went into the stored document without its
/// `type` and decoded as the union's Unknown variant from then on.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "UpdateTextPartRequest": {
        "type": "object",
        "required": ["type"],
        "properties": {
          "type": {"type": "string", "default": "text"},
          "text": {"type": "string"}
        }
      },
      "UpdateImagePartRequest": {
        "type": "object",
        "required": ["type"],
        "properties": {
          "type": {"type": "string", "default": "image"},
          "url": {"type": "string"}
        }
      },
      "UpdatePartRequest": {
        "oneOf": [
          {"$ref": "#/components/schemas/UpdateTextPartRequest"},
          {"$ref": "#/components/schemas/UpdateImagePartRequest"}
        ],
        "discriminator": {
          "propertyName": "type",
          "mapping": {
            "text": "#/components/schemas/UpdateTextPartRequest",
            "image": "#/components/schemas/UpdateImagePartRequest"
          }
        }
      }
    }
  }
}
''';

  late String generated;

  setUpAll(() {
    final classes = OpenApiParser(
      ParserConfig(spec, isJson: true),
    ).parseDataClasses().whereType<UniversalComponentClass>().toList();
    UniversalComponentClass byName(String name) =>
        classes.firstWhere((c) => c.name == name);
    generated = dartFreezedUnionFamilyTemplate(
      UnionFamily(
        unions: [byName('UpdatePartRequest')],
        leaves: [
          byName('UpdateTextPartRequest'),
          byName('UpdateImagePartRequest'),
        ],
        fileBaseName: 'family',
      ),
      includeIfNull: false,
      customMetadataImportPath: 'package:novus_models/novus_models.dart',
      classFileOverrides: const {},
      unknownEnumValue: true,
    );
  });

  /// The body of [leaf]'s `toNestedPatch()`.
  String nestedPatch(String leaf) {
    final start = generated.indexOf('extension ${leaf}PatchX');
    final body = generated.indexOf('toNestedPatch() {', start);
    return generated.substring(body, generated.indexOf('return patch;', body));
  }

  test('each leaf writes its discriminator unconditionally', () {
    expect(
      nestedPatch('UpdateTextPartRequest'),
      contains("patch['type'] = this.type;"),
    );
    expect(
      nestedPatch('UpdateImagePartRequest'),
      contains("patch['type'] = this.type;"),
    );
  });

  test('its other fields stay presence-tracked', () {
    expect(
      nestedPatch('UpdateTextPartRequest'),
      contains("if (this.text != null) { patch['text']"),
    );
  });
}
