import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:openapi_retrofit_generator/src/generator/utils/partial_update_classes.dart';
import 'package:test/test.dart';

/// Covers the class-level field-metadata constants emitted from custom metadata:
/// `immutableFields` (the write-once flag set) and the `value_source` partition
/// (`clientProvidedFields` / `systemGeneratedFields` / `authFields` /
/// `applicationManagedFields`, plus the derived `writableFields`).
///
/// Dart has no runtime annotation reflection, so these constants are the only
/// way persistence code can read a model's provenance metadata without
/// hand-listing it — which is exactly the drift they exist to prevent.
///
/// ONE rule gates every const here: emit nothing unless EVERY field declares a
/// `value_source`. Several cases below exist purely to pin that.
///
/// For the partition the reason is obvious — a partition is meaningful only if
/// complete. For `immutableFields` it is less obvious, and was originally got
/// wrong: `immutable` and `value_source` travel together in the same
/// `json_schema_extra`, so whatever drops one drops the other. A hydrated model
/// that redeclares an inherited field to widen its type loses BOTH, and its
/// `immutableFields` then under-reports while still looking authoritative —
/// strictly worse than no const, because a caller reaching for it gets a write
/// guard missing real fields. Completeness of `value_source` is therefore the
/// proxy for "this model's field metadata survived intact", and it gates
/// everything.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "FullyAnnotated": {
        "type": "object",
        "properties": {
          "title": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          },
          "id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED",
            "generated_as": "GENERATED_AS_UUID",
            "immutable": true
          },
          "created_at": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED",
            "generated_as": "GENERATED_AS_TIMESTAMP",
            "immutable": true
          },
          "user_id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_AUTH"
          },
          "deleted_at": {
            "type": "string",
            "value_source": "VALUE_SOURCE_APPLICATION_MANAGED"
          }
        }
      },
      "SortOrder": {
        "type": "object",
        "properties": {
          "zeta": {"type": "string", "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"},
          "alpha": {"type": "string", "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"},
          "mid": {"type": "string", "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"}
        }
      },
      "NoAuth": {
        "type": "object",
        "properties": {
          "title": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          },
          "id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED"
          }
        }
      },
      "PartiallyAnnotated": {
        "type": "object",
        "properties": {
          "id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED",
            "immutable": true
          },
          "title": {
            "type": "string",
            "value_source": "VALUE_SOURCE_CLIENT_PROVIDED"
          },
          "hydrated_only": {"type": "string"}
        }
      },
      "ImmutableOnly": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "immutable": true},
          "title": {"type": "string"}
        }
      },
      "NotImmutable": {
        "type": "object",
        "properties": {
          "id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_SYSTEM_GENERATED",
            "immutable": false
          }
        }
      },
      "Unspecified": {
        "type": "object",
        "properties": {
          "mystery": {
            "type": "string",
            "value_source": "VALUE_SOURCE_UNSPECIFIED"
          },
          "user_id": {
            "type": "string",
            "value_source": "VALUE_SOURCE_AUTH"
          }
        }
      },
      "NoMetadata": {
        "type": "object",
        "properties": {
          "title": {"type": "string"}
        }
      },
      "UnknownKind": {
        "type": "object",
        "properties": {
          "beamed": {
            "type": "string",
            "value_source": "VALUE_SOURCE_TELEPATHY"
          }
        }
      }
    }
  }
}
''';

  /// Mirrors the novus config (`dart/apps/novus_app/openapi_generator.yaml`).
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

  late List<UniversalComponentClass> classes;
  late Map<String, String> generated;

  String render(String schema) => dartFreezedDtoTemplate(
    classes.firstWhere((c) => c.name == schema),
    includeIfNull: false,
    customMetadataImportPath: 'package:novus_models/novus_models.dart',
    partialUpdateClasses: resolvePartialUpdateClasses(classes),
    customMetadata: customMetadata,
  );

  setUpAll(() {
    classes = OpenApiParser(
      ParserConfig(spec, isJson: true, customMetadata: customMetadata),
    ).parseDataClasses().cast<UniversalComponentClass>().toList();
    generated = {
      for (final name in [
        'FullyAnnotated',
        'SortOrder',
        'NoAuth',
        'PartiallyAnnotated',
        'ImmutableOnly',
        'NotImmutable',
        'Unspecified',
        'NoMetadata',
      ])
        name: render(name),
    };
  });

  group('the value_source partition', () {
    test('emits one const per category with the right membership', () {
      final g = generated['FullyAnnotated']!;
      expect(
        g,
        contains("static const Set<String> clientProvidedFields = {'title'};"),
      );
      expect(
        g,
        contains(
          "static const Set<String> systemGeneratedFields = "
          "{'created_at', 'id'};",
        ),
      );
      expect(g, contains("static const Set<String> authFields = {'user_id'};"));
      expect(
        g,
        contains(
          "static const Set<String> applicationManagedFields = "
          "{'deleted_at'};",
        ),
      );
    });

    test('writableFields is clientProvided union applicationManaged', () {
      expect(
        generated['FullyAnnotated'],
        contains(
          "static const Set<String> writableFields = "
          "{'deleted_at', 'title'};",
        ),
        reason:
            'the fields a trusted/admin writer may set — excludes '
            'SYSTEM_GENERATED and AUTH',
      );
    });

    test('an empty category is still emitted', () {
      final g = generated['NoAuth']!;
      expect(
        g,
        contains('static const Set<String> authFields = {};'),
        reason:
            'the categories are a partition: an omitted set is '
            'indistinguishable from a generator that predates the category, '
            'and forces every consumer into a null check',
      );
      expect(
        g,
        contains('static const Set<String> applicationManagedFields = {};'),
      );
    });

    test('keys are sorted, not declaration-ordered', () {
      expect(
        generated['SortOrder'],
        contains(
          "static const Set<String> clientProvidedFields = "
          "{'alpha', 'mid', 'zeta'};",
        ),
      );
    });

    test('keys are JSON wire keys, not Dart field names', () {
      final g = generated['FullyAnnotated']!;
      expect(g, contains("'created_at'"));
      expect(
        g,
        isNot(contains("'createdAt'")),
        reason:
            'the const is read against stored documents and patches, which '
            'use the wire key',
      );
    });

    test('VALUE_SOURCE_UNSPECIFIED is tolerated but uncategorized', () {
      final g = generated['Unspecified']!;
      expect(g, contains("static const Set<String> authFields = {'user_id'};"));
      expect(
        g,
        isNot(contains("'mystery'")),
        reason: 'the sentinel means "no information" — it belongs to no set',
      );
      expect(
        g,
        contains('static const Set<String> clientProvidedFields = {};'),
        reason: 'the partition still emits; only the sentinel field is absent',
      );
    });

    test('an unrecognized value_source throws, naming the fix', () {
      expect(
        () => render('UnknownKind'),
        throwsA(
          isA<GeneratorException>().having(
            (e) => e.toString(),
            'message',
            allOf(
              contains('VALUE_SOURCE_TELEPATHY'),
              contains('UnknownKind'),
              contains('beamed'),
              contains('_valueSourceConstNames'),
            ),
          ),
        ),
        reason:
            'silently dropping it would ship consts claiming a partition that '
            'no longer covers every annotated field',
      );
    });
  });

  group('the completeness precondition', () {
    test('a partially annotated model gets NO consts — not even '
        'immutableFields', () {
      final g = generated['PartiallyAnnotated']!;
      expect(
        g,
        isNot(contains('static const Set<String>')),
        reason:
            'one unannotated field ("hydrated_only") makes ALL the field '
            'metadata untrustworthy: `immutable` and `value_source` travel '
            'together in the same json_schema_extra, so whatever dropped one '
            'dropped the other. An immutableFields that silently under-reports '
            'is worse than none — a caller gets a write guard missing real '
            'fields. This is the real OwnUser bug: its hydrated twin declared '
            "{'created_at'} while the storage model declares "
            "{'created_at', 'id', 'sign_up_date'}.",
      );
    });

    test('a model with immutable but no value_source gets no consts', () {
      final g = generated['ImmutableOnly']!;
      expect(
        g,
        isNot(contains('static const Set<String>')),
        reason:
            'no value_source anywhere means nothing vouches for the metadata '
            'having survived',
      );
    });

    test('a model with no custom metadata gets no consts at all', () {
      final g = generated['NoMetadata']!;
      expect(g, isNot(contains('static const Set<String>')));
    });
  });

  group('immutableFields', () {
    test('is emitted even when empty', () {
      expect(
        generated['NoAuth'],
        contains('static const Set<String> immutableFields = {};'),
        reason: '"this model has no write-once field" is itself a fact',
      );
    });

    test('respects the == true guard (immutable: false is not immutable)', () {
      expect(
        generated['NotImmutable'],
        contains('static const Set<String> immutableFields = {};'),
      );
    });

    test('is orthogonal to value_source — a field can be in both', () {
      final g = generated['FullyAnnotated']!;
      expect(
        g,
        contains(
          "static const Set<String> immutableFields = {'created_at', 'id'};",
        ),
      );
      expect(
        g,
        contains(
          "static const Set<String> systemGeneratedFields = "
          "{'created_at', 'id'};",
        ),
        reason:
            'immutable cross-cuts all four categories; it is not a fifth one',
      );
    });
  });

  group('emission hygiene', () {
    test('is deterministic across runs', () {
      expect(
        render('FullyAnnotated'),
        equals(generated['FullyAnnotated']),
        reason:
            'parameters is a Set — neither key order nor const order may leak '
            'iteration order, or the freshness gate flaps',
      );
    });

    test('introduces no new import or shown symbol', () {
      final g = generated['FullyAnnotated']!;
      expect(
        g,
        isNot(contains('ValueSourceKind')),
        reason:
            'the consts are Set<String> of raw wire keys precisely so the '
            'show-clause resolver stays untouched',
      );
      final imports = g
          .split('\n')
          .where((l) => l.startsWith('import '))
          .toList();
      expect(
        imports.where((l) => l.contains('novus_models')).length,
        equals(1),
      );
    });

    test('consts sit inside the class body', () {
      final g = generated['FullyAnnotated']!;
      final classStart = g.indexOf('abstract class FullyAnnotated');
      final constAt = g.indexOf('static const Set<String> immutableFields');
      expect(classStart, greaterThan(-1));
      expect(constAt, greaterThan(classStart));
    });
  });
}
