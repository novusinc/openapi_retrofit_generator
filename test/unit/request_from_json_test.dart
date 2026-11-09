import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// A presence-tracked request's `fromJson` is the inverse of `toNestedPatch()`.
///
/// Before this, json_serializable skipped every `Optional<T>` field
/// (`includeFromJson: false`), so `fromJson` returned an empty request. Now each
/// one is decoded by the runtime's `Optional.fromJsonKey(json, key, decode)`: a
/// key present in the map becomes `Optional(value)` (an explicit null
/// included), an absent key stays `null`, and keys the request doesn't declare
/// are ignored —
/// the analogue of the server's `UpdateX.model_validate(data)`. That is what lets
/// a caller write a stored document's client-owned fields with
/// `UpdateXRequest.fromJson(model.toJson())`.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "Tone": {"type": "string", "enum": ["calm", "urgent"]},
      "UpdateBadgeRequest": {
        "x-partial-update": true,
        "type": "object",
        "properties": {"label": {"type": "string"}}
      },
      "UpdateThingRequest": {
        "x-partial-update": true,
        "type": "object",
        "properties": {
          "skip_push": {"type": "boolean", "default": false},
          "title": {"type": "string"},
          "count": {"type": "integer"},
          "ratio": {"type": "number", "format": "double"},
          "seen_at": {"type": "string", "format": "date-time"},
          "labels": {"type": "array", "items": {"type": "string"}},
          "extra": {"type": "object", "additionalProperties": true},
          "tone": {"$ref": "#/components/schemas/Tone"},
          "badge": {"$ref": "#/components/schemas/UpdateBadgeRequest"},
          "badges": {
            "type": "array",
            "items": {"$ref": "#/components/schemas/UpdateBadgeRequest"}
          },
          "maybe_badges": {
            "type": "array",
            "items": {
              "anyOf": [
                {"$ref": "#/components/schemas/UpdateBadgeRequest"},
                {"type": "null"}
              ]
            }
          }
        }
      },
      "Thing": {
        "type": "object",
        "properties": {"title": {"type": "string"}}
      }
    }
  }
}
''';

  late List<UniversalComponentClass> classes;

  String generate(String name) => dartFreezedDtoTemplate(
    classes.firstWhere((c) => c.name == name),
    includeIfNull: false,
    customMetadataImportPath: 'package:novus_models/novus_models.dart',
    partialUpdateClasses: resolvePartialUpdateClasses(classes),
  );

  setUpAll(() {
    classes = OpenApiParser(
      ParserConfig(spec, isJson: true),
    ).parseDataClasses().whereType<UniversalComponentClass>().toList();
  });

  /// The generated `fromJson` argument for [field], whitespace-normalised.
  String argument(String generated, String field) => generated
      .split('\n')
      .map((l) => l.trim())
      .firstWhere(
        (l) => l.startsWith('$field: Optional.fromJsonKey('),
        orElse: () => '<no fromJson argument for $field>',
      );

  group('a presence-tracked request', () {
    late String generated;

    setUpAll(() => generated = generate('UpdateThingRequest'));

    test('decodes plain fields with json_serializable, then adds the '
        'presence-tracked ones', () {
      expect(
        generated,
        contains(
          'factory UpdateThingRequest.fromJson(Map<String, Object?> json) =>\n'
          r'      _$UpdateThingRequestFromJson(json).copyWith(',
        ),
      );
    });

    test('each field is one Optional.fromJsonKey call that decodes only a '
        'non-null value', () {
      expect(
        argument(generated, 'title'),
        "title: Optional.fromJsonKey(json, 'title', (v) => v as String),",
      );
    });

    test('numbers and dates decode to their Dart types', () {
      expect(argument(generated, 'count'), contains('as num).toInt()'));
      expect(argument(generated, 'ratio'), contains('as num).toDouble()'));
      expect(
        argument(generated, 'seenAt'),
        contains('(v) => DateTime.parse(v as String)'),
      );
    });

    test('lists and maps decode element by element', () {
      expect(
        argument(generated, 'labels'),
        contains('(v) => (v as List).map((e0) => e0 as String).toList()'),
      );
      expect(
        argument(generated, 'extra'),
        contains(
          '(v) => (v as Map).map((k0, e0) => MapEntry(k0 as String, e0))',
        ),
      );
    });

    test('an enum, a nested request and a list of requests use their own '
        'fromJson', () {
      expect(
        argument(generated, 'tone'),
        contains('(v) => Tone.fromJson(v as dynamic)'),
      );
      expect(
        argument(generated, 'badge'),
        contains('(v) => UpdateBadgeRequest.fromJson(v as dynamic)'),
      );
      expect(
        argument(generated, 'badges'),
        contains('.map((e0) => UpdateBadgeRequest.fromJson(e0 as dynamic))'),
      );
    });

    test('a nullable list item stays null', () {
      expect(
        argument(generated, 'maybeBadges'),
        contains(
          '.map((e0) => e0 == null ? null : '
          'UpdateBadgeRequest.fromJson(e0 as dynamic))',
        ),
      );
    });

    test('an operation field with a default is not presence-tracked', () {
      expect(argument(generated, 'skipPush'), startsWith('<no fromJson'));
    });
  });

  test('a class that is not a request keeps the plain fromJson', () {
    expect(
      generate('Thing'),
      contains(
        r'factory Thing.fromJson(Map<String, Object?> json) => _$ThingFromJson(json);',
      ),
    );
  });
}
