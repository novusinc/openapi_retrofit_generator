import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:test/test.dart';

/// A `sealed` union over update-request leaves must declare `toPatch()`.
///
/// Every leaf already emits `toPatch()` (the `^(managed_)?update_.*_request$`
/// predicate), but the sealed SUPERTYPE declared only `toJson()`. That made the
/// generated union useless as a persistence-seam parameter: a caller holding the
/// union could not produce a patch without first switching on the variant. The
/// downstream consequence was consumers hand-writing their own sealed wrappers
/// over the generated leaves — a type the generator does not maintain, so a newly
/// added variant compiles fine and is silently unwritable.
///
/// `<Union>Unknown` implements it too, mirroring how it round-trips `toJson()`:
/// an unrecognized discriminator value returns its raw payload rather than
/// silently patching nothing.
///
/// The negative case matters as much as the positive: a plain model union must
/// NOT gain `toPatch()`, since its leaves have no such method and the emitted
/// code would not compile.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "UpdateAlphaRequest": {
        "type": "object",
        "properties": {
          "type": {"type": "string"},
          "title": {"type": "string"}
        }
      },
      "UpdateBetaRequest": {
        "type": "object",
        "properties": {
          "type": {"type": "string"},
          "title": {"type": "string"},
          "weight": {"type": "integer"}
        }
      },
      "UpdateThingRequest": {
        "oneOf": [
          {"$ref": "#/components/schemas/UpdateAlphaRequest"},
          {"$ref": "#/components/schemas/UpdateBetaRequest"}
        ],
        "discriminator": {
          "propertyName": "type",
          "mapping": {
            "alpha": "#/components/schemas/UpdateAlphaRequest",
            "beta": "#/components/schemas/UpdateBetaRequest"
          }
        }
      },
      "Cat": {
        "type": "object",
        "properties": {
          "kind": {"type": "string"},
          "name": {"type": "string"}
        }
      },
      "Dog": {
        "type": "object",
        "properties": {
          "kind": {"type": "string"},
          "name": {"type": "string"}
        }
      },
      "Animal": {
        "oneOf": [
          {"$ref": "#/components/schemas/Cat"},
          {"$ref": "#/components/schemas/Dog"}
        ],
        "discriminator": {
          "propertyName": "kind",
          "mapping": {
            "cat": "#/components/schemas/Cat",
            "dog": "#/components/schemas/Dog"
          }
        }
      }
    }
  }
}
''';

  late List<UniversalComponentClass> classes;

  setUpAll(() {
    classes = OpenApiParser(
      ParserConfig(spec, isJson: true),
    ).parseDataClasses().whereType<UniversalComponentClass>().toList();
  });

  UniversalComponentClass byName(String name) =>
      classes.firstWhere((c) => c.name == name);

  /// Renders the family file for [unionName] over [leafNames].
  String render(String unionName, List<String> leafNames) =>
      dartFreezedUnionFamilyTemplate(
        UnionFamily(
          unions: [byName(unionName)],
          leaves: leafNames.map(byName).toList(),
          fileBaseName: 'family',
        ),
        includeIfNull: false,
        customMetadataImportPath: 'package:novus_models/novus_models.dart',
        classFileOverrides: const {},
        unknownEnumValue: true,
      );

  group('a union over update-request leaves', () {
    late String generated;

    setUpAll(() {
      generated = render('UpdateThingRequest', [
        'UpdateAlphaRequest',
        'UpdateBetaRequest',
      ]);
    });

    test('does NOT declare toPatch() as an abstract member', () {
      // A Dart extension can never satisfy an abstract interface member, and
      // toPatch() IS an extension on every leaf — declaring it on the sealed class
      // makes every freezed impl class fail with
      // `non_abstract_class_inherits_abstract_member`.
      expect(generated, contains('sealed class UpdateThingRequest {'));
      expect(generated, isNot(contains('Map<String, dynamic> toPatch();')));
    });

    test('dispatches toPatch() through an extension on the union', () {
      expect(
        generated,
        contains('extension UpdateThingRequestPatchX on UpdateThingRequest {'),
      );
      expect(
        generated,
        contains(
          'UpdateAlphaRequest() => (this as UpdateAlphaRequest).toPatch(),',
        ),
      );
      expect(
        generated,
        contains(
          'UpdateThingRequestUnknown() => '
          '(this as UpdateThingRequestUnknown).toPatch(),',
        ),
      );
    });

    test('dispatches toNestedPatch() through the same extension', () {
      expect(
        generated,
        contains(
          'UpdateAlphaRequest() => (this as UpdateAlphaRequest).toNestedPatch(),',
        ),
      );
    });

    test('each leaf gets its own toPatch() extension', () {
      // Regression: the family path never emitted these, so a request type lost
      // toPatch() merely by joining a discriminated union.
      expect(generated, contains('extension UpdateAlphaRequestPatchX'));
      expect(generated, contains('extension UpdateBetaRequestPatchX'));
    });

    test('still declares toJson() — toPatch is additive', () {
      expect(generated, contains('Map<String, dynamic> toJson();'));
    });

    test('Unknown round-trips its raw payload through toPatch()', () {
      expect(
        generated,
        contains(
          'final class UpdateThingRequestUnknown '
          'implements UpdateThingRequest {',
        ),
      );
      expect(
        generated,
        contains("Map<String, dynamic> toPatch() => {...json}..remove('id');"),
      );
      expect(
        generated,
        contains('Map<String, dynamic> toNestedPatch() => json;'),
      );
    });
  });

  group('a plain model union', () {
    late String generated;

    setUpAll(() {
      generated = render('Animal', ['Cat', 'Dog']);
    });

    test('does NOT declare toPatch() — its leaves have none', () {
      expect(generated, contains('sealed class Animal {'));
      expect(generated, isNot(contains('toPatch')));
    });

    test('declares toJson() as before', () {
      expect(generated, contains('Map<String, dynamic> toJson();'));
    });
  });
}
