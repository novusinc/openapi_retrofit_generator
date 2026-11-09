import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// Regression test: the custom-metadata import's `show` list was built from the
/// CONFIG rather than from the annotations a file actually emits, which was wrong
/// in two independent ways at once.
///
/// 1. It unconditionally added each config's plain `annotation` symbol. For a
///    config that also declares an `annotation_template`, the plain form is NEVER
///    emitted — only `@ValueSource('...')` is — and the plain symbol
///    (`valueSource`) need not even exist. Every generated file therefore showed
///    two names the library does not export: `undefined_shown_name`, 204 of them
///    across the novus client.
/// 2. It added every configured symbol to every file, so a model with no
///    `immutable` field still showed `dbImmutable`: `unused_shown_name`, 40 more.
///
/// Both are now derived from the same resolution the emitter uses, so the `show`
/// list and the annotations cannot drift.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "Mixed": {
        "type": "object",
        "properties": {
          "id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED",
            "generated_as": "GENERATED_AS_UUID",
            "immutable": true
          },
          "title": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          }
        }
      },
      "ValueSourceOnly": {
        "type": "object",
        "properties": {
          "title": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          }
        }
      },
      "NoMetadata": {
        "type": "object",
        "properties": {
          "title": {"type": "string"}
        }
      }
    }
  }
}
''';

  /// Mirrors the novus config: two templated fields (whose plain symbols
  /// `valueSource` / `generatedAs` do not exist) and one bare boolean field.
  const customMetadata = CustomMetadataConfig(
    enabled: true,
    fields: [
      CustomMetadataField(
        name: 'value_source',
        annotation: '@valueSource',
        annotationTemplate: "@ValueSource('{value}')",
      ),
      CustomMetadataField(
        name: 'generated_as',
        annotation: '@generatedAs',
        annotationTemplate: "@GeneratedAs('{value}')",
      ),
      CustomMetadataField(name: 'immutable', annotation: '@dbImmutable'),
    ],
  );

  late Map<String, String> generated;

  setUpAll(() {
    final classes = OpenApiParser(
      ParserConfig(spec, isJson: true, customMetadata: customMetadata),
    ).parseDataClasses();
    generated = {
      for (final name in ['Mixed', 'ValueSourceOnly', 'NoMetadata'])
        name: dartFreezedDtoTemplate(
          classes.firstWhere((c) => c.name == name) as UniversalComponentClass,
          includeIfNull: false,
          customMetadataImportPath: 'package:novus_models/novus_models.dart',
          partialUpdateClasses: resolvePartialUpdateClasses(classes),
          customMetadata: customMetadata,
        ),
    };
  });

  /// The `show` names on the custom-metadata import of [schema], or `[]` when the
  /// file has no such import.
  List<String> shownNames(String schema) {
    final line = generated[schema]!
        .split('\n')
        .firstWhere(
          (l) =>
              l.startsWith("import 'package:novus_models/novus_models.dart'"),
          orElse: () => '',
        );
    if (line.isEmpty) return const [];
    return line
        .split(' show ')
        .last
        .replaceAll(';', '')
        .split(',')
        .map((s) => s.trim())
        .where((s) => s.isNotEmpty)
        .toList();
  }

  test('a templated config shows its CLASS symbol, never the plain one', () {
    final shown = shownNames('Mixed');
    expect(shown, containsAll(<String>['ValueSource', 'GeneratedAs']));
    expect(
      shown,
      isNot(anyElement(anyOf('valueSource', 'generatedAs'))),
      reason:
          'the plain symbol of a templated config is never emitted and need '
          'not exist — showing it is an undefined_shown_name in every file',
    );
  });

  test('a bare (untemplated) config shows its plain symbol', () {
    expect(shownNames('Mixed'), contains('dbImmutable'));
  });

  test('a symbol no field in the file uses is not shown', () {
    final shown = shownNames('ValueSourceOnly');
    expect(shown, equals(<String>['ValueSource']));
    expect(
      shown,
      isNot(contains('dbImmutable')),
      reason: 'this schema has no immutable field — showing it is unused',
    );
    expect(shown, isNot(contains('GeneratedAs')));
  });

  test('a file with no annotated field emits no custom-metadata import', () {
    expect(shownNames('NoMetadata'), isEmpty);
  });

  test('the annotations themselves are unchanged by the refactor', () {
    final mixed = generated['Mixed']!;
    expect(mixed, contains("@ValueSource('VALUE_SOURCE_SYSTEM_GENERATED')"));
    expect(mixed, contains("@GeneratedAs('GENERATED_AS_UUID')"));
    expect(mixed, contains('@dbImmutable'));
    expect(mixed, contains("@ValueSource('VALUE_SOURCE_CLIENT_PROVIDED')"));
  });

  test('every shown name is actually referenced in the file body', () {
    for (final schema in ['Mixed', 'ValueSourceOnly']) {
      final body = generated[schema]!
          .split('\n')
          .where((l) => !l.startsWith('import '))
          .join('\n');
      for (final name in shownNames(schema)) {
        expect(
          body,
          contains(name),
          reason: '$schema shows "$name" but never uses it',
        );
      }
    }
  });
}
