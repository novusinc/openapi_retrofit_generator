import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// A model's composite-id field list, as a constant.
///
/// A document whose id is a hash of some of its fields is checked, by the client,
/// against the fields it carries. Which fields, in which order, is the contract's
/// (`"x-composite-id-fields"`), so the generator emits it as
/// `static const List<String> compositeIdFields = [userIdKey, targetIdKey];`, built
/// from the field key constants, and the client never hand-types it.
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

  String property(String name, {bool annotated = true}) =>
      '"$name": {"type": "string"'
      '${annotated ? ', "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"' : ''}}';

  /// An object schema, optionally declaring its composite-id list.
  String object(List<String> properties, {Object? compositeIdFields}) =>
      '{"type": "object", '
      '${compositeIdFields == null ? '' : '"x-composite-id-fields": $compositeIdFields, '}'
      '"properties": {${properties.join(',')}}}';

  String spec(Map<String, String> schemas) =>
      '''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {"schemas": {${schemas.entries.map((e) => '"${e.key}": ${e.value}').join(',')}}}
}
''';

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

  group('a model with a composite id', () {
    test(
      'lists its fields as key constants, in the order the schema declares',
      () {
        final json = spec({
          'Mute': object([
            property('user_id'),
            property('target_id'),
            property('id'),
          ], compositeIdFields: '["user_id", "target_id"]'),
        });

        final g = renderClass(json, 'Mute');

        expect(
          g,
          contains(
            'static const List<String> compositeIdFields = '
            '[userIdKey, targetIdKey];',
          ),
        );
      },
    );

    test('keeps the declared order and does not sort it: it is the hash input '
        'order', () {
      final json = spec({
        'Doc': object([
          property('a_id'),
          property('z_id'),
        ], compositeIdFields: '["z_id", "a_id"]'),
      });

      expect(
        renderClass(json, 'Doc'),
        contains('compositeIdFields = [zIdKey, aIdKey];'),
        reason: 'sorted by key it would be [aIdKey, zIdKey]',
      );
    });

    test('names the fields by their constants, never by a string literal', () {
      final json = spec({
        'Doc': object([property('user_id')], compositeIdFields: '["user_id"]'),
      });

      final list = RegExp(
        r'compositeIdFields = \[[^\]]*\]',
      ).firstMatch(renderClass(json, 'Doc'))!.group(0)!;

      expect(list, isNot(contains("'")));
      expect(list, contains('userIdKey'));
    });

    test('has none when the schema declares no list', () {
      final json = spec({
        'Doc': object([property('user_id'), property('id')]),
      });

      expect(renderClass(json, 'Doc'), isNot(contains('compositeIdFields')));
    });

    test('has none when the key constants are not emitted: an unannotated '
        'field breaks the completeness rule, and the list is built from the '
        'constants', () {
      final json = spec({
        'Doc': object([
          property('user_id'),
          property('note', annotated: false),
        ], compositeIdFields: '["user_id"]'),
      });

      final g = renderClass(json, 'Doc');

      expect(g, isNot(contains('userIdKey')));
      expect(g, isNot(contains('compositeIdFields')));
    });

    test('fails generation for a name that is not a field', () {
      final json = spec({
        'Doc': object([
          property('user_id'),
        ], compositeIdFields: '["user_id", "target_id"]'),
      });

      expect(
        () => renderClass(json, 'Doc'),
        throwsA(
          isA<GeneratorException>().having(
            (e) => e.toString(),
            'message',
            allOf(contains("'Doc'"), contains("'target_id'")),
          ),
        ),
      );
    });

    test('fails generation for a field that takes the constant\'s name', () {
      final json = spec({
        'Doc': object([
          property('user_id'),
          property('compositeIdFields'),
        ], compositeIdFields: '["user_id"]'),
      });

      expect(
        () => renderClass(json, 'Doc'),
        throwsA(isA<GeneratorException>()),
      );
    });

    test('is a parse error when the list is not a list of names', () {
      for (final bad in ['"user_id"', '[1, 2]', '{"a": "b"}']) {
        final json = spec({
          'Doc': object([property('user_id')], compositeIdFields: bad),
        });

        expect(
          () => parse(json),
          throwsA(isA<OpenApiParserException>()),
          reason: 'x-composite-id-fields: $bad',
        );
      }
    });
  });

  group('a union family', () {
    // Two variants whose ids hash different fields, as a channel member's do,
    // plus a union parent, which has no single list of its own.
    final json = spec({
      'Member': '''
{
  "oneOf": [
    {"\$ref": "#/components/schemas/HumanMember"},
    {"\$ref": "#/components/schemas/AiMember"},
    {"\$ref": "#/components/schemas/GuestMember"}
  ],
  "discriminator": {
    "propertyName": "type",
    "mapping": {
      "human": "#/components/schemas/HumanMember",
      "ai": "#/components/schemas/AiMember",
      "guest": "#/components/schemas/GuestMember"
    }
  }
}''',
      'HumanMember': object([
        property('type'),
        property('channel_id'),
        property('user_id'),
      ], compositeIdFields: '["channel_id", "user_id"]'),
      'AiMember': object([
        property('type'),
        property('channel_id'),
        property('ai_id'),
      ], compositeIdFields: '["channel_id", "ai_id"]'),
      'GuestMember': object([property('type'), property('channel_id')]),
    });

    late String familyFile;

    setUpAll(() {
      final classes = parse(json);
      final resolution = resolveUnionFamilies(classes);
      expect(resolution.families, hasLength(1));
      familyFile = dartFreezedUnionFamilyTemplate(
        resolution.families.single,
        includeIfNull: false,
        customMetadataImportPath: 'package:novus_models/novus_models.dart',
        partialUpdateClasses: resolvePartialUpdateClasses(classes),
        classFileOverrides: resolution.classFileOverrides,
        unknownEnumValue: true,
        customMetadata: customMetadata,
      );
    });

    /// The chunk of the family file belonging to [className].
    String chunkFor(String className) {
      final start = RegExp(
        '(abstract|sealed|final) class $className\\b',
      ).firstMatch(familyFile);
      expect(
        start,
        isNotNull,
        reason: '$className missing from the family file',
      );
      final rest = familyFile.substring(start!.start + 1);
      final next = RegExp(r'(abstract|sealed|final) class ').firstMatch(rest);
      return next == null ? rest : rest.substring(0, next.start);
    }

    test('each variant carries its own list', () {
      expect(
        chunkFor('HumanMember'),
        contains('compositeIdFields = [channelIdKey, userIdKey];'),
      );
      expect(
        chunkFor('AiMember'),
        contains('compositeIdFields = [channelIdKey, aiIdKey];'),
      );
    });

    test('a variant whose schema declares none has none', () {
      expect(chunkFor('GuestMember'), isNot(contains('compositeIdFields')));
    });

    test('the union parent has none: its variants differ', () {
      expect(chunkFor('Member'), isNot(contains('compositeIdFields')));
    });

    test('a variant renders the same list in a family file as standalone', () {
      const line = 'static const List<String> compositeIdFields = ';
      final standalone = renderClass(json, 'HumanMember');

      String listOf(String source) =>
          RegExp('${RegExp.escape(line)}[^;]*;').firstMatch(source)!.group(0)!;

      expect(listOf(chunkFor('HumanMember')), listOf(standalone));
    });
  });
}
