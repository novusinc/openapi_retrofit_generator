import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// The field-metadata consts must reach sealed-ref-union FAMILY files too.
///
/// There are two emission sites — the standalone class body and the family-leaf
/// chunk — and they are identical only by hand. This is the site that gets
/// forgotten: real `DB*` storage models (`DbHumanChannelMember`, `DbAudioFile`,
/// …) are family leaves, so a miss here would silently strip the consts from
/// exactly the models the persistence layer cares about.
///
/// The union PARENT must get nothing: every `oneOf` + `discriminator` schema in
/// the contract has no `properties` of its own, so there is no partition to
/// state, and synthesizing a union or intersection across leaves would invent a
/// fact the contract never made.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "Member": {
        "oneOf": [
          {"$ref": "#/components/schemas/HumanMember"},
          {"$ref": "#/components/schemas/AiMember"}
        ],
        "discriminator": {
          "propertyName": "type",
          "mapping": {
            "human": "#/components/schemas/HumanMember",
            "ai": "#/components/schemas/AiMember"
          }
        }
      },
      "HumanMember": {
        "type": "object",
        "properties": {
          "type": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          },
          "id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED",
            "immutable": true
          },
          "user_id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_AUTH"
          },
          "banned_at": {
            "type": "string",
            "value_source": "VALUE_SOURCE_APPLICATION_MANAGED"
          }
        }
      },
      "AiMember": {
        "type": "object",
        "properties": {
          "type": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          },
          "id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED",
            "immutable": true
          },
          "ai_id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          }
        }
      }
    }
  }
}
''';

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

  late String familyFile;

  setUpAll(() {
    final classes = OpenApiParser(
      ParserConfig(spec, isJson: true, customMetadata: customMetadata),
    ).parseDataClasses().toList();
    final resolution = resolveUnionFamilies(classes);
    expect(
      resolution.families,
      hasLength(1),
      reason: 'the fixture must produce one eligible family',
    );
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

  /// The chunk of the family file belonging to [className] — from its class
  /// declaration up to the next one.
  String chunkFor(String className) {
    // The family file mixes class modifiers: `sealed` for the union parent,
    // `abstract` for Freezed leaves, `final` for the unknown-variant fallback.
    final pattern = RegExp('(abstract|sealed|final) class $className\\b');
    final start = pattern.firstMatch(familyFile);
    expect(start, isNotNull, reason: '$className missing from the family file');
    final rest = familyFile.substring(start!.start + 1);
    final next = RegExp(r'(abstract|sealed|final) class ').firstMatch(rest);
    return next == null ? rest : rest.substring(0, next.start);
  }

  test('each leaf carries the full partition with its own membership', () {
    final human = chunkFor('HumanMember');
    expect(
      human,
      contains("static const Set<String> clientProvidedFields = {'type'};"),
    );
    expect(
      human,
      contains("static const Set<String> systemGeneratedFields = {'id'};"),
    );
    expect(
      human,
      contains("static const Set<String> authFields = {'user_id'};"),
    );
    expect(
      human,
      contains(
        "static const Set<String> applicationManagedFields = {'banned_at'};",
      ),
    );
    expect(
      human,
      contains(
        "static const Set<String> writableFields = {'banned_at', 'type'};",
      ),
    );

    final ai = chunkFor('AiMember');
    expect(
      ai,
      contains(
        "static const Set<String> clientProvidedFields = {'ai_id', 'type'};",
      ),
      reason: 'membership is per-leaf, not shared across the family',
    );
    expect(
      ai,
      contains('static const Set<String> applicationManagedFields = {};'),
    );
  });

  test('each leaf carries immutableFields', () {
    for (final leaf in ['HumanMember', 'AiMember']) {
      expect(
        chunkFor(leaf),
        contains("static const Set<String> immutableFields = {'id'};"),
      );
    }
  });

  test('the sealed union parent carries no consts', () {
    expect(
      chunkFor('Member'),
      isNot(contains('static const Set<String>')),
      reason:
          'the parent declares no properties of its own — there is nothing to '
          'partition, and synthesizing one across leaves would invent a fact',
    );
  });

  test('the unknown-variant class carries no consts', () {
    expect(familyFile, contains('MemberUnknown'));
    expect(
      chunkFor('MemberUnknown'),
      isNot(contains('static const Set<String>')),
    );
  });
}
