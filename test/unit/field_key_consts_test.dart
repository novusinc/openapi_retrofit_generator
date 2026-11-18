import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// A model's stored field names, as constants.
///
/// Every query, filter and sort in a consumer names a stored field, and a string
/// literal there that is renamed or misspelt compiles and then matches nothing:
/// only a test notices. The generator already knows each field's wire key (it
/// emits it into `immutableFields` and the other sets), so it emits the keys
/// themselves: one `static const String <field>Key = '<wire key>';` per field,
/// under the same completeness rule as the sets, and the sets are built from those
/// constants so a key is spelled once and a set cannot drift from its constants.
void main() {
  const customMetadata = CustomMetadataConfig(
    enabled: true,
    fields: [
      CustomMetadataField(
        name: 'value_source',
        annotation: '@valueSource',
        annotationTemplate: "@ValueSource('{value}')",
      ),
      CustomMetadataField(name: 'immutable', annotation: '@dbImmutable'),
    ],
  );

  String property(String name, {bool immutable = false}) =>
      '"$name": {"type": "string", '
      '"value_source": "VALUE_SOURCE_CLIENT_PROVIDED"'
      '${immutable ? ', "immutable": true' : ''}}';

  String spec(Map<String, String> schemas) =>
      '''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {"schemas": {${schemas.entries.map((e) => '"${e.key}": ${e.value}').join(',')}}}
}
''';

  String object(List<String> properties) =>
      '{"type": "object", "properties": {${properties.join(',')}}}';

  List<UniversalComponentClass> parse(String json) => OpenApiParser(
    ParserConfig(json, isJson: true, customMetadata: customMetadata),
  ).parseDataClasses().cast<UniversalComponentClass>().toList();

  String renderClass(String json, String schema) {
    final classes = parse(json);
    return dartFreezedDtoTemplate(
      classes.firstWhere((c) => c.name == schema),
      includeIfNull: false,
      customMetadataImportPath: 'package:novus_models/novus_models.dart',
      partialUpdateClasses: resolvePartialUpdateClasses(classes),
      customMetadata: customMetadata,
    );
  }

  String renderFamily(String json) {
    final classes = parse(json);
    final resolution = resolveUnionFamilies(classes);
    expect(resolution.families, hasLength(1));
    return dartFreezedUnionFamilyTemplate(
      resolution.families.single,
      includeIfNull: false,
      customMetadataImportPath: 'package:novus_models/novus_models.dart',
      partialUpdateClasses: resolvePartialUpdateClasses(classes),
      classFileOverrides: resolution.classFileOverrides,
      unknownEnumValue: true,
      customMetadata: customMetadata,
    );
  }

  group('a model', () {
    final json = spec({
      'Doc': object([
        property('title'),
        property('created_at', immutable: true),
        property('id', immutable: true),
      ]),
    });

    test('has a key constant for each field, holding its wire key', () {
      final g = renderClass(json, 'Doc');

      expect(g, contains("static const String idKey = 'id';"));
      expect(g, contains("static const String titleKey = 'title';"));
      expect(
        g,
        contains("static const String createdAtKey = 'created_at';"),
        reason: 'the key is the stored one (snake_case), not the Dart name',
      );
    });

    test('has its sets built from those constants, not spelled again', () {
      final g = renderClass(json, 'Doc');

      expect(
        g,
        contains(
          'static const Set<String> immutableFields = {createdAtKey, idKey};',
        ),
      );
      expect(
        g,
        isNot(matches(RegExp(r"Set<String> \w+ = \{'"))),
        reason: 'a set that names a literal can drift from the constants',
      );
    });

    test(
      'orders the constants by wire key, whatever the declaration order',
      () {
        final g = renderClass(json, 'Doc');

        expect(g.indexOf('createdAtKey ='), lessThan(g.indexOf('idKey =')));
        expect(g.indexOf('idKey ='), lessThan(g.indexOf('titleKey =')));
        expect(renderClass(json, 'Doc'), equals(g), reason: 'deterministic');
      },
    );

    test('keeps the wire key of a field that was renamed for Dart', () {
      // `123_number` is not an identifier: the field is `number`, the key is not.
      final g = renderClass(
        spec({
          'Odd': object([property('123_number')]),
        }),
        'Odd',
      );

      expect(g, contains("static const String numberKey = '123_number';"));
    });

    test('escapes a \$ in a key, which would otherwise interpolate', () {
      final g = renderClass(
        spec({
          'Dollar': object([property(r'$meta')]),
        }),
        'Dollar',
      );

      expect(g, contains(r"'\$meta'"));
      expect(g, isNot(contains(r"= '$meta'")));
    });

    test('gets no key constants when its metadata is incomplete', () {
      final g = renderClass(
        spec({
          'Partial': object([
            property('id'),
            '"hydrated_only": {"type": "string"}',
          ]),
        }),
        'Partial',
      );

      expect(
        g,
        isNot(contains('static const String')),
        reason:
            'the same rule as the sets: one unannotated field means the '
            "metadata did not survive, and a key list that omits a field would "
            'look authoritative',
      );
    });

    test(
      'fails, naming both fields, when `x` and `xKey` are both declared',
      () {
        expect(
          () => renderClass(
            spec({
              'Clash': object([property('foo'), property('foo_key')]),
            }),
            'Clash',
          ),
          throwsA(
            isA<GeneratorException>().having(
              (e) => e.toString(),
              'message',
              allOf(
                contains('Clash'),
                contains('foo'),
                contains('fooKey'),
                contains('Rename'),
              ),
            ),
          ),
          reason:
              'a static fooKey beside the field fooKey is a Dart error that '
              'names neither field',
        );
      },
    );
  });

  group('a union', () {
    String family({bool secondLeafAnnotated = true}) => spec({
      'Shape': '''
{
  "oneOf": [
    {"\$ref": "#/components/schemas/Circle"},
    {"\$ref": "#/components/schemas/Square"}
  ],
  "discriminator": {
    "propertyName": "type",
    "mapping": {
      "circle": "#/components/schemas/Circle",
      "square": "#/components/schemas/Square"
    }
  }
}''',
      'Circle': object([
        property('type'),
        property('id', immutable: true),
        property('radius'),
      ]),
      'Square': object([
        property('type'),
        property('id', immutable: true),
        if (secondLeafAnnotated)
          property('side')
        else
          '"side": {"type": "string"}',
      ]),
    });

    /// The sealed parent's chunk of the family file.
    String parent(String family) {
      final start = family.indexOf('sealed class Shape');
      expect(start, greaterThan(-1));
      final next = family.indexOf(RegExp(r'(abstract|final) class '), start);
      return family.substring(start, next);
    }

    test('has a key constant for each field every variant declares, '
        'the discriminator included', () {
      final p = parent(renderFamily(family()));

      expect(p, contains("static const String idKey = 'id';"));
      expect(
        p,
        contains("static const String typeKey = 'type';"),
        reason: 'a query by type needs Shape.typeKey; a getter would not',
      );
      expect(p, isNot(contains('radiusKey')));
      expect(p, isNot(contains('sideKey')));
    });

    test("has each set as the union of its variants' sets", () {
      final p = parent(renderFamily(family()));

      expect(
        p,
        contains(
          'static const Set<String> immutableFields = '
          '{...Circle.immutableFields, ...Square.immutableFields};',
        ),
        reason: 'what a consumer used to union by hand for the union type',
      );
    });

    test('has none of it when a variant has no complete partition', () {
      final p = parent(renderFamily(family(secondLeafAnnotated: false)));

      expect(p, isNot(contains('static const String')));
      expect(
        p,
        isNot(contains('static const Set<String>')),
        reason:
            "a union of the sets would omit that variant's fields while "
            'looking authoritative',
      );
    });

    test(
      'fails when a key constant would take the name of a variant constant',
      () {
        // A variant whose discriminator value is `key` is the constant `typeKey`,
        // which is also the key constant of the `type` field.
        final clash = family().replaceAll('"circle":', '"key":');

        expect(
          () => renderFamily(clash),
          throwsA(
            isA<GeneratorException>().having(
              (e) => e.toString(),
              'message',
              allOf(contains('Shape'), contains('typeKey'), contains('Rename')),
            ),
          ),
        );
      },
    );

    test('gives every variant its own key constants', () {
      final g = renderFamily(family());

      expect(g, contains("static const String radiusKey = 'radius';"));
      expect(g, contains("static const String sideKey = 'side';"));
    });
  });
}
