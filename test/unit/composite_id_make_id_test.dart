import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

/// A model's composite id, derived by a typed `makeId`.
///
/// The schema declares how its id is hashed: the segments in hash order
/// (`"x-composite-id-fields"`, a `literal:<text>` one for a constant between two
/// properties) and the hash domain (`"x-composite-id-domain"`). With
/// `composite_id_function` set, the generator emits
/// `static String makeId({required String a, required String b})` that hands the
/// domain and the parts, in order, to that function. The order, the domain and the
/// literals are then written once, in the schema's source, and a swapped argument or a
/// changed list is a compile error at every call site.
void main() {
  const function = 'CouchbaseIdUtils.composite';
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

  String property(
    String name, {
    bool annotated = true,
    String type = 'string',
    bool nullable = false,
  }) =>
      '"$name": {"type": ${nullable ? '["$type", "null"]' : '"$type"'}'
      '${annotated ? ', "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"' : ''}}';

  /// An object schema, optionally declaring how its composite id is hashed. Every
  /// property is `required` unless [optional] names it: an id's parts are required in
  /// the real contract, and an optional property is nullable in Dart.
  String object(
    List<String> properties, {
    Object? segments,
    Object? domain,
    Set<String> optional = const {},
  }) {
    final names = [
      for (final p in properties)
        RegExp(r'^"([^"]+)"').firstMatch(p)!.group(1)!,
    ].where((n) => !optional.contains(n));
    return '{"type": "object", '
        '${segments == null ? '' : '"x-composite-id-fields": $segments, '}'
        '${domain == null ? '' : '"x-composite-id-domain": $domain, '}'
        '"required": [${names.map((n) => '"$n"').join(',')}], '
        '"properties": {${properties.join(',')}}}';
  }

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

  String renderClass(
    String json,
    String schema, {
    String? compositeIdFunction = function,
  }) {
    final classes = parse(json);
    return dartFreezedDtoTemplate(
      classes.firstWhere((c) => c.name == schema),
      includeIfNull: false,
      customMetadataImportPath: 'package:novus_models/novus_models.dart',
      partialUpdateClasses: resolvePartialUpdateClasses(classes),
      customMetadata: customMetadata,
      compositeIdFunction: compositeIdFunction,
    );
  }

  /// Whitespace collapsed, so an assertion does not depend on line breaks.
  String flat(String source) => source.replaceAll(RegExp(r'\s+'), ' ');

  final mute = spec({
    'Mute': object(
      [property('user_id'), property('target_id'), property('id')],
      segments: '["user_id", "target_id"]',
      domain: '"user_mutes"',
    ),
  });

  group('a model with a composite id', () {
    test('gets a makeId taking its fields by name, in hash order', () {
      final g = flat(renderClass(mute, 'Mute'));

      expect(
        g,
        contains(
          'static String makeId({required String userId, '
          'required String targetId}) =>',
        ),
      );
      expect(
        g,
        contains(
          "CouchbaseIdUtils.composite('user_mutes', "
          "[('userId', userId), ('targetId', targetId)]);",
        ),
      );
    });

    test('keeps the declared order and does not sort it: it is the hash input '
        'order', () {
      final json = spec({
        'Doc': object(
          [property('a_id'), property('z_id')],
          segments: '["z_id", "a_id"]',
          domain: '"docs"',
        ),
      });

      expect(
        flat(renderClass(json, 'Doc')),
        contains("composite('docs', [('zId', zId), ('aId', aId)])"),
        reason: 'sorted by key it would hash [aId, zId]',
      );
    });

    test('bakes a literal segment in at its position, and takes no parameter '
        'for it', () {
      final json = spec({
        'Member': object(
          [property('channel_id'), property('user_id')],
          segments: '["channel_id", "literal:human", "user_id"]',
          domain: '"channel_members"',
        ),
      });

      final g = flat(renderClass(json, 'Member'));

      expect(
        g,
        contains(
          'static String makeId({required String channelId, '
          'required String userId}) =>',
        ),
      );
      expect(
        g,
        contains(
          "composite('channel_members', [('channelId', channelId), "
          "(null, 'human'), ('userId', userId)])",
        ),
      );
    });

    test('still lists only the properties in compositeIdFields: the literal is '
        'not a field', () {
      final json = spec({
        'Member': object(
          [property('channel_id'), property('user_id')],
          segments: '["channel_id", "literal:human", "user_id"]',
          domain: '"channel_members"',
        ),
      });

      expect(
        renderClass(json, 'Member'),
        contains(
          'static const List<String> compositeIdFields = '
          '[channelIdKey, userIdKey];',
        ),
      );
    });

    test('escapes the domain and a literal in the string it emits', () {
      final json = spec({
        'Doc': object(
          [property('user_id')],
          segments: r'''["literal:it's $x", "user_id"]''',
          domain: r'''"a'b$c"''',
        ),
      });

      final g = flat(renderClass(json, 'Doc'));

      expect(g, contains(r"composite('a\'b\$c', [(null, 'it\'s \$x'), "));
    });

    test(
      'imports the function\'s class once, beside the annotation symbols',
      () {
        final g = renderClass(mute, 'Mute');

        final imports = RegExp(
          "import 'package:novus_models/novus_models.dart'[^;]*;",
        ).allMatches(g).map((m) => m.group(0)!).toList();
        expect(
          imports,
          hasLength(1),
          reason: 'one import, so no duplicate_import',
        );
        expect(imports.single, contains('CouchbaseIdUtils'));
        expect(imports.single, contains('ValueSource'));
      },
    );

    test('does not import the function\'s class for a model that emits no '
        'makeId', () {
      final json = spec({
        'Doc': object(
          [property('user_id', annotated: false)],
          segments: '["user_id"]',
          domain: '"docs"',
        ),
      });
      // An unannotated field breaks the completeness rule, so no makeId is
      // emitted, and a symbol nothing uses must not be imported.
      expect(renderClass(json, 'Doc'), isNot(contains('CouchbaseIdUtils')));
    });

    test('has no makeId when composite_id_function is not set', () {
      final g = renderClass(mute, 'Mute', compositeIdFunction: null);

      expect(g, isNot(contains('makeId')));
      expect(g, isNot(contains('CouchbaseIdUtils')));
      expect(
        g,
        contains(
          'static const List<String> compositeIdFields = '
          '[userIdKey, targetIdKey];',
        ),
        reason: 'the field list does not depend on the option',
      );
    });

    test('has no makeId when the schema declares no segments', () {
      final json = spec({
        'Doc': object([property('user_id'), property('id')], domain: '"docs"'),
      });

      final g = renderClass(json, 'Doc');

      expect(g, isNot(contains('makeId')));
      expect(g, isNot(contains('CouchbaseIdUtils')));
    });

    test('has no makeId when the key constants are not emitted: an '
        'unannotated field breaks the completeness rule', () {
      final json = spec({
        'Doc': object(
          [property('user_id'), property('note', annotated: false)],
          segments: '["user_id"]',
          domain: '"docs"',
        ),
      });

      expect(renderClass(json, 'Doc'), isNot(contains('makeId')));
    });

    test('fails generation when the schema has segments but no domain', () {
      final json = spec({
        'Doc': object([property('user_id')], segments: '["user_id"]'),
      });

      expect(
        () => renderClass(json, 'Doc'),
        throwsA(
          isA<GeneratorException>().having(
            (e) => e.toString(),
            'message',
            allOf(contains("'Doc'"), contains('x-composite-id-domain')),
          ),
        ),
      );
    });

    test('fails generation for a name that is not a field', () {
      final json = spec({
        'Doc': object(
          [property('user_id')],
          segments: '["user_id", "target_id"]',
          domain: '"docs"',
        ),
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

    test('fails generation for a part that is not a non-null String', () {
      for (final bad in [
        property('user_id', type: 'integer'),
        property('user_id', nullable: true),
      ]) {
        final json = spec({
          'Doc': object([bad], segments: '["user_id"]', domain: '"docs"'),
        });

        expect(
          () => renderClass(json, 'Doc'),
          throwsA(
            isA<GeneratorException>().having(
              (e) => e.toString(),
              'message',
              contains('non-null String'),
            ),
          ),
          reason: bad,
        );
      }
    });

    test(
      'fails generation for an optional property: it is nullable in Dart',
      () {
        final json = spec({
          'Doc': object(
            [property('user_id')],
            segments: '["user_id"]',
            domain: '"docs"',
            optional: {'user_id'},
          ),
        });

        expect(
          () => renderClass(json, 'Doc'),
          throwsA(
            isA<GeneratorException>().having(
              (e) => e.toString(),
              'message',
              contains('non-null String'),
            ),
          ),
        );
      },
    );

    test('fails generation for a property listed twice: two parameters of one '
        'name would not compile', () {
      final json = spec({
        'Doc': object(
          [property('user_id')],
          segments: '["user_id", "user_id"]',
          domain: '"docs"',
        ),
      });

      expect(
        () => renderClass(json, 'Doc'),
        throwsA(
          isA<GeneratorException>().having(
            (e) => e.toString(),
            'message',
            contains('twice'),
          ),
        ),
      );
    });

    test('fails generation for segments that are all literals: there is '
        'nothing for makeId to take', () {
      final json = spec({
        'Doc': object(
          [property('user_id')],
          segments: '["literal:a", "literal:b"]',
          domain: '"docs"',
        ),
      });

      expect(
        () => renderClass(json, 'Doc'),
        throwsA(isA<GeneratorException>()),
      );
    });

    test('fails generation for a field that takes the function\'s name', () {
      final json = spec({
        'Doc': object(
          [property('user_id'), property('makeId')],
          segments: '["user_id"]',
          domain: '"docs"',
        ),
      });

      expect(
        () => renderClass(json, 'Doc'),
        throwsA(isA<GeneratorException>()),
      );
    });
  });

  group('the contract', () {
    test('is a parse error when the domain is not a non-empty string', () {
      for (final bad in ['""', '5', '["a"]']) {
        final json = spec({
          'Doc': object(
            [property('user_id')],
            segments: '["user_id"]',
            domain: bad,
          ),
        });

        expect(
          () => parse(json),
          throwsA(isA<OpenApiParserException>()),
          reason: 'x-composite-id-domain: $bad',
        );
      }
    });

    test('keeps the segments as declared, and derives the fields without '
        'the literals', () {
      final doc = parse(
        spec({
          'Member': object(
            [property('channel_id'), property('user_id')],
            segments: '["channel_id", "literal:human", "user_id"]',
            domain: '"channel_members"',
          ),
        }),
      ).single;

      expect(doc.compositeIdSegments, [
        'channel_id',
        'literal:human',
        'user_id',
      ]);
      expect(doc.compositeIdFields, ['channel_id', 'user_id']);
      expect(doc.compositeIdDomain, 'channel_members');
    });
  });

  group('a union family', () {
    // Two variants whose ids hash different segments, as a channel member's do, and
    // a union parent, which has no single id of its own.
    final json = spec({
      'Member': '''
{
  "oneOf": [
    {"\$ref": "#/components/schemas/HumanMember"},
    {"\$ref": "#/components/schemas/AiMember"}
  ],
  "discriminator": {
    "propertyName": "type",
    "mapping": {
      "human": "#/components/schemas/HumanMember",
      "ai": "#/components/schemas/AiMember"
    }
  }
}''',
      'HumanMember': object(
        [property('type'), property('channel_id'), property('user_id')],
        segments: '["channel_id", "literal:human", "user_id"]',
        domain: '"channel_members"',
      ),
      'AiMember': object(
        [property('type'), property('channel_id'), property('ai_id')],
        segments: '["channel_id", "literal:ai", "ai_id"]',
        domain: '"channel_members"',
      ),
    });

    late String familyFile;

    setUpAll(() {
      final classes = parse(json);
      final resolution = resolveUnionFamilies(classes);
      expect(resolution.families, hasLength(1));
      familyFile = flat(
        dartFreezedUnionFamilyTemplate(
          resolution.families.single,
          includeIfNull: false,
          customMetadataImportPath: 'package:novus_models/novus_models.dart',
          partialUpdateClasses: resolvePartialUpdateClasses(classes),
          classFileOverrides: resolution.classFileOverrides,
          unknownEnumValue: true,
          customMetadata: customMetadata,
          compositeIdFunction: function,
        ),
      );
    });

    test('each leaf carries its own makeId', () {
      expect(
        familyFile,
        contains(
          'static String makeId({required String channelId, '
          'required String userId}) => CouchbaseIdUtils.composite('
          "'channel_members', [('channelId', channelId), (null, 'human'), "
          "('userId', userId)]);",
        ),
      );
      expect(
        familyFile,
        contains(
          'static String makeId({required String channelId, '
          'required String aiId}) => CouchbaseIdUtils.composite('
          "'channel_members', [('channelId', channelId), (null, 'ai'), "
          "('aiId', aiId)]);",
        ),
      );
    });

    test('the union parent has none: its variants differ', () {
      final parent = RegExp(
        r'sealed class Member\b.*?(?=abstract class |final class )',
      ).firstMatch(familyFile)!.group(0)!;

      expect(parent, isNot(contains('makeId')));
    });

    test('the file imports the function\'s class once', () {
      final imports = RegExp(
        "import 'package:novus_models/novus_models.dart'[^;]*;",
      ).allMatches(familyFile).map((m) => m.group(0)!).toList();

      expect(imports, hasLength(1));
      expect(imports.single, contains('CouchbaseIdUtils'));
    });
  });

  group('the composite_id_function option', () {
    OpenApiConfig fromYaml(String yaml) => OpenApiConfig.fromYaml(
      loadYaml('''
schema_path: openapi.json
output_directory: out
$yaml
''')
          as YamlMap,
    );

    test('is read, and reaches the generator config', () {
      final config = fromYaml(
        'composite_id_function: CouchbaseIdUtils.composite',
      );

      expect(config.compositeIdFunction, 'CouchbaseIdUtils.composite');
      expect(
        config.toGeneratorConfig().compositeIdFunction,
        'CouchbaseIdUtils.composite',
      );
    });

    test('is off by default', () {
      expect(fromYaml('').compositeIdFunction, isNull);
    });

    test('must be written Class.function', () {
      for (final bad in ['composite', 'A.b.c', 'A.', '.b', 'A b.c', '1A.b']) {
        expect(
          () => fromYaml('composite_id_function: "$bad"'),
          throwsA(isA<ConfigException>()),
          reason: bad,
        );
      }
    });
  });
}
