import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/exception/generator_exception.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// Which classes are partial-update requests comes from the spec's
/// `"x-partial-update": true` mark, never from a schema's name.
///
/// A partial update's value fields are presence-tracked (`Optional<T>`) and it
/// gets a sparse `toPatch()`. A union is one when all of its variants are.
void main() {
  List<UniversalComponentClass> parse(Map<String, String> schemas) =>
      OpenApiParser(
        ParserConfig('''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {"schemas": {${schemas.entries.map((e) => '"${e.key}": ${e.value}').join(',')}}}
}
''', isJson: true),
      ).parseDataClasses().whereType<UniversalComponentClass>().toList();

  const marked =
      '{"type": "object", "x-partial-update": true, '
      '"properties": {"title": {"type": "string"}}}';
  const unmarked =
      '{"type": "object", "properties": {"title": {"type": "string"}}}';
  String union(List<String> variants) =>
      '{"oneOf": [${variants.map((v) => '{"\$ref": "#/components/schemas/$v"}').join(', ')}], '
      '"discriminator": {"propertyName": "type", "mapping": '
      '{${variants.map((v) => '"${v.toLowerCase()}": "#/components/schemas/$v"').join(', ')}}}}';

  String render(List<UniversalComponentClass> classes, String name) =>
      dartFreezedDtoTemplate(
        classes.firstWhere((c) => c.name == name),
        includeIfNull: false,
        customMetadataImportPath: 'package:novus_models/novus_models.dart',
        partialUpdateClasses: resolvePartialUpdateClasses(classes),
      );

  test('the parser reads the mark', () {
    final classes = parse({'Marked': marked, 'Unmarked': unmarked});

    expect(classes.firstWhere((c) => c.name == 'Marked').partialUpdate, isTrue);
    expect(
      classes.firstWhere((c) => c.name == 'Unmarked').partialUpdate,
      isFalse,
    );
  });

  test('an unmarked schema is a plain model, whatever its name', () {
    final generated = render(
      parse({'UpdateThingRequest': unmarked}),
      'UpdateThingRequest',
    );

    expect(generated, isNot(contains('Optional<')));
    expect(generated, isNot(contains('toPatch()')));
  });

  test('a marked schema is a partial update, whatever its name', () {
    final generated = render(parse({'EditThingBody': marked}), 'EditThingBody');

    expect(generated, contains('Optional<String>? title'));
    expect(generated, contains('Map<String, dynamic> toPatch()'));
  });

  group('resolvePartialUpdateClasses', () {
    test('includes a union whose variants are all marked', () {
      final classes = parse({
        'A': marked,
        'B': marked,
        'AOrB': union(['A', 'B']),
      });

      expect(resolvePartialUpdateClasses(classes), {'A', 'B', 'AOrB'});
    });

    test('leaves out a union over plain models', () {
      final classes = parse({
        'A': unmarked,
        'B': unmarked,
        'AOrB': union(['A', 'B']),
      });

      expect(resolvePartialUpdateClasses(classes), isEmpty);
    });

    test('rejects a union whose variants are only partly marked', () {
      final classes = parse({
        'A': marked,
        'B': unmarked,
        'AOrB': union(['A', 'B']),
      });

      expect(
        () => resolvePartialUpdateClasses(classes),
        throwsA(
          isA<GeneratorException>().having(
            (e) => e.toString(),
            'message',
            allOf(contains('AOrB'), contains('B')),
          ),
        ),
      );
    });
  });
}
