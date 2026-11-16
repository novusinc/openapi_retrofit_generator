import 'package:yaml/yaml.dart';
import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// `union_field_getters` and `union_discriminator_enums`: a union reads a field
/// only some variants declare, and its discriminator as an enum, without a
/// hand-written switch that misses the next variant added.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "PetKind": {"type": "string", "enum": ["pet.dog", "pet.cat", "pet.bird"]},
      "Pet": {
        "oneOf": [
          {"$ref": "#/components/schemas/Dog"},
          {"$ref": "#/components/schemas/Cat"},
          {"$ref": "#/components/schemas/Bird"}
        ],
        "discriminator": {
          "propertyName": "type",
          "mapping": {
            "pet.dog": "#/components/schemas/Dog",
            "pet.cat": "#/components/schemas/Cat",
            "pet.bird": "#/components/schemas/Bird"
          }
        }
      },
      "Dog": {
        "type": "object",
        "required": ["type", "id", "name", "bark_volume", "owner_id"],
        "properties": {
          "type": {"type": "string", "const": "pet.dog", "default": "pet.dog"},
          "id": {"type": "string"},
          "name": {"type": "string"},
          "bark_volume": {"type": "integer"},
          "owner_id": {"type": "string"}
        }
      },
      "Cat": {
        "type": "object",
        "required": ["type", "id"],
        "properties": {
          "type": {"type": "string", "const": "pet.cat", "default": "pet.cat"},
          "id": {"type": "string"},
          "name": {"type": "string"},
          "owner_id": {"type": "string"}
        }
      },
      "Bird": {
        "type": "object",
        "required": ["type", "id", "owner_id"],
        "properties": {
          "type": {"type": "string", "const": "pet.bird", "default": "pet.bird"},
          "id": {"type": "string"},
          "owner_id": {"type": "integer"}
        }
      }
    }
  }
}
''';

  final classes = OpenApiParser(
    ParserConfig(spec, isJson: true),
  ).parseDataClasses().toList();
  final resolution = resolveUnionFamilies(classes);

  String familyFile({
    bool fieldGetters = true,
    Map<String, UnionDiscriminatorEnum> enums = const {},
  }) => dartFreezedUnionFamilyTemplate(
    resolution.families.single,
    includeIfNull: false,
    customMetadataImportPath: null,
    partialUpdateClasses: resolvePartialUpdateClasses(classes),
    classFileOverrides: resolution.classFileOverrides,
    unknownEnumValue: true,
    unionFieldGetters: fieldGetters,
    unionDiscriminatorEnums: enums,
  );

  const petKind = UnionDiscriminatorEnum(
    className: 'PetKind',
    valueNameByJson: {
      'pet.dog': 'petDog',
      'pet.cat': 'petCat',
      'pet.bird': 'petBird',
    },
  );

  /// The body of getter [name] in the generated extension.
  String getter(String file, String name) {
    final start = RegExp(' get $name => switch').firstMatch(file);
    expect(start, isNotNull, reason: 'no `$name` getter');
    return file.substring(start!.start, file.indexOf('};', start.start));
  }

  test('a field some variants declare is a nullable getter over them', () {
    final file = familyFile();
    expect(file, contains('extension PetFieldsX on Pet {'));

    final name = getter(file, 'name');
    expect(file, contains('String? get name => switch'));
    expect(name, contains('Dog(:final name) => name,'));
    expect(name, contains('Cat(:final name) => name,'));
    expect(name, isNot(contains('Bird(')));
    expect(name, contains('_ => null,'));

    final barkVolume = getter(file, 'barkVolume');
    expect(file, contains('int? get barkVolume => switch'));
    expect(barkVolume, contains('Dog(:final barkVolume) => barkVolume,'));
  });

  test('a field every variant shares stays on the sealed class only', () {
    final file = familyFile();
    expect(file, contains('String get id;'));
    expect(file, isNot(contains(' get id => switch')));
  });

  test('a field whose variants disagree on its type is named, not emitted', () {
    final file = familyFile();
    expect(file, isNot(contains(' get ownerId => switch')));
    expect(
      file,
      contains(
        '// No `ownerId` getter: its variants disagree on its type '
        '(Dog: String, Cat: String?, Bird: int).',
      ),
    );
  });

  test('the discriminator reads as the configured enum', () {
    final file = familyFile(fieldGetters: false, enums: {'Pet': petKind});
    final type = getter(file, 'type');
    expect(file, contains('PetKind get type => switch'));
    expect(type, contains('Dog() => PetKind.petDog,'));
    expect(type, contains('Cat() => PetKind.petCat,'));
    expect(type, contains('Bird() => PetKind.petBird,'));
    expect(
      type,
      contains(
        "PetUnknown(:final json) => PetKind.fromJson(json['type'] as String),",
      ),
    );
    expect(file, isNot(contains(' get name => switch')));
  });

  test('an enum missing a discriminator value fails generation', () {
    const partial = UnionDiscriminatorEnum(
      className: 'PetKind',
      valueNameByJson: {'pet.dog': 'petDog', 'pet.cat': 'petCat'},
    );
    expect(
      () => familyFile(enums: {'Pet': partial}),
      throwsA(
        isA<GeneratorException>().having(
          (e) => e.toString(),
          'message',
          contains("enum 'PetKind' has no value 'pet.bird'"),
        ),
      ),
    );
  });

  test('off by default: no extension', () {
    expect(
      familyFile(fieldGetters: false),
      isNot(contains('extension PetFieldsX')),
    );
  });

  test('the yaml options are read', () {
    final config = OpenApiConfig.fromYaml(
      loadYaml('''
schema_path: openapi.json
output_directory: out
union_field_getters: true
union_discriminator_enums:
  Pet: PetKind
''')
          as YamlMap,
    );
    expect(config.unionFieldGetters, isTrue);
    expect(config.unionDiscriminatorEnums, {'Pet': 'PetKind'});
    final generatorConfig = config.toGeneratorConfig();
    expect(generatorConfig.unionFieldGetters, isTrue);
    expect(generatorConfig.unionDiscriminatorEnums, {'Pet': 'PetKind'});
  });
}
