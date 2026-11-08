import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:test/test.dart';

/// A presence-tracked request's `fromJson` is the inverse of `toNestedPatch()`.
///
/// Before this, json_serializable skipped every `Optional<T>` field
/// (`includeFromJson: false`), so `fromJson` returned an empty request. Now a key
/// present in the map becomes `Optional(value)` (an explicit null included), an
/// absent key stays `null`, and keys the request doesn't declare are ignored —
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
        "type": "object",
        "properties": {"label": {"type": "string"}}
      },
      "UpdateThingRequest": {
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
        (l) => l.startsWith('$field: json.containsKey('),
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

    test('an absent key stays null and a present one, null included, '
        'becomes Optional', () {
      expect(
        argument(generated, 'title'),
        "title: json.containsKey('title') ? Optional(json['title'] == null "
        "? null : json['title'] as String) : null,",
      );
    });

    test('numbers and dates decode to their Dart types', () {
      expect(argument(generated, 'count'), contains('as num).toInt()'));
      expect(argument(generated, 'ratio'), contains('as num).toDouble()'));
      expect(
        argument(generated, 'seenAt'),
        contains("DateTime.parse(json['seen_at'] as String)"),
      );
    });

    test('lists and maps decode element by element', () {
      expect(
        argument(generated, 'labels'),
        contains("(json['labels'] as List).map((e0) => e0 as String).toList()"),
      );
      expect(
        argument(generated, 'extra'),
        contains(
          "(json['extra'] as Map).map((k0, e0) => MapEntry(k0 as String, e0))",
        ),
      );
    });

    test('an enum, a nested request and a list of requests use their own '
        'fromJson', () {
      expect(
        argument(generated, 'tone'),
        contains("Tone.fromJson(json['tone'] as dynamic)"),
      );
      expect(
        argument(generated, 'badge'),
        contains("UpdateBadgeRequest.fromJson(json['badge'] as dynamic)"),
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
