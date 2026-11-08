import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/generator/templates/dart_freezed_dto_template.dart';
import 'package:test/test.dart';

/// Regression test: `toPatch()` emitted the raw field value for EVERY field, so a
/// nested model, an enum, or a list of either went into the patch as a Dart object
/// rather than JSON.
///
/// A patch is handed straight to the persistence layer. Couchbase Lite's
/// `CblConversions.convertToCblObject` accepts only
/// `String | num | bool | null | Map | Iterable | DateTime | Uint8List` and otherwise
/// throws `ArgumentError('cannot be stored in a Couchbase Lite Document')` — so the
/// first managed/update write carrying a nested typed value or an enum crashed at
/// runtime. `DateTime` is exempt: CBL converts it itself, and it has no `toJson()`.
///
/// See novus `docs/plans/managed-request-superset.md` D5.
void main() {
  const spec = r'''
{
  "openapi": "3.1.0",
  "info": {"title": "t", "version": "1"},
  "paths": {},
  "components": {
    "schemas": {
      "RequestState": {
        "type": "object",
        "properties": {"state_type": {"type": "string"}}
      },
      "Tone": {
        "type": "string",
        "enum": ["calm", "urgent"]
      },
      "UpdateBadgeRequest": {
        "type": "object",
        "properties": {"label": {"type": "string"}}
      },
      "ManagedUpdateBadgeRequest": {
        "type": "object",
        "properties": {"label": {"type": "string"}}
      },
      "UpdateThingRequestState": {
        "type": "object",
        "properties": {"phase": {"type": "string"}}
      },
      "UpdateThingRequest": {
        "type": "object",
        "properties": {
          "title": {"type": "string"},
          "count": {"type": "integer"},
          "seen_at": {"type": "string", "format": "date-time"},
          "labels": {"type": "array", "items": {"type": "string"}},
          "extra": {"type": "object", "additionalProperties": true},
          "tone": {"$ref": "#/components/schemas/Tone"},
          "request_state": {"$ref": "#/components/schemas/RequestState"},
          "history": {
            "type": "array",
            "items": {"$ref": "#/components/schemas/RequestState"}
          },
          "maybe_history": {
            "type": "array",
            "items": {
              "anyOf": [
                {"$ref": "#/components/schemas/RequestState"},
                {"type": "null"}
              ]
            }
          },
          "badge": {"$ref": "#/components/schemas/UpdateBadgeRequest"},
          "managed_badge": {
            "$ref": "#/components/schemas/ManagedUpdateBadgeRequest"
          },
          "badges": {
            "type": "array",
            "items": {"$ref": "#/components/schemas/UpdateBadgeRequest"}
          },
          "nested_state": {
            "$ref": "#/components/schemas/UpdateThingRequestState"
          }
        }
      }
    }
  }
}
''';

  late String generated;

  setUpAll(() {
    final classes = OpenApiParser(
      ParserConfig(spec, isJson: true),
    ).parseDataClasses();
    final request =
        classes.firstWhere((c) => c.name == 'UpdateThingRequest')
            as UniversalComponentClass;
    // A non-null import path is required: wrapping fields in Optional<T> makes the
    // template emit the `Optional` import directive.
    generated = dartFreezedDtoTemplate(
      request,
      includeIfNull: false,
      customMetadataImportPath: 'package:novus_models/novus_models.dart',
    );
  });

  /// The generated `toPatch()` line for [wireKey], whitespace-normalised.
  String patchLine(String wireKey) {
    final line = generated
        .split('\n')
        .map((l) => l.trim())
        .firstWhere(
          (l) => l.contains("patch['$wireKey']"),
          orElse: () => '<no toPatch line for $wireKey>',
        );
    return line;
  }

  test('primitives pass through untouched', () {
    expect(patchLine('title'), contains('= this.title!.value;'));
    expect(patchLine('count'), contains('= this.count!.value;'));
    expect(patchLine('labels'), contains('= this.labels!.value;'));
    expect(patchLine('extra'), contains('= this.extra!.value;'));
  });

  test('DateTime is NOT converted — CBL serialises it itself', () {
    // A `.toJson()` here would not compile: DateTime has no such method.
    expect(patchLine('seen_at'), contains('= this.seenAt!.value;'));
    expect(patchLine('seen_at'), isNot(contains('toJson')));
  });

  test('an enum is converted via toJson()', () {
    expect(patchLine('tone'), contains('this.tone!.value?.toJson()'));
  });

  test('a nested model is converted via toJson()', () {
    expect(
      patchLine('request_state'),
      contains('this.requestState!.value?.toJson()'),
    );
  });

  test('a list of nested models is converted element-wise', () {
    // `Optional<T>.value` is always `T?` so the OUTER access is null-aware, but the
    // element is not nullable here — a `?.` on it would trip
    // `invalid_null_aware_operator` in every generated file.
    expect(
      patchLine('history'),
      contains('this.history!.value?.map((e) => e.toJson()).toList()'),
    );
  });

  test('a list of NULLABLE nested models keeps the element null-aware', () {
    expect(
      patchLine('maybe_history'),
      contains('this.maybeHistory!.value?.map((e) => e?.toJson()).toList()'),
    );
  });

  // ---------------------------------------------------------------------------
  // A nested partial-update request must be serialised with toPatch(), NOT toJson().
  //
  // Such a type is presence-tracked exactly like the request enclosing it: every
  // value field is `Optional<T>` with `includeToJson: false`, so json_serializable
  // emits `_$XToJson(...) => <String, dynamic>{}` — a literal empty map. Using
  // toJson() therefore wrote `{}` and BLANKED the nested field rather than patching
  // it: silent, and with no analyzer complaint. Affected 23 fields across the
  // generated novus surface (`request_state`, `brand_assets`, `privacy_settings`,
  // `push_preferences`, `options`, `grants`, …).
  // ---------------------------------------------------------------------------

  test('a nested update_*_request is converted via toPatch()', () {
    expect(patchLine('badge'), contains('this.badge!.value?.toNestedPatch()'));
    expect(patchLine('badge'), isNot(contains('toJson')));
  });

  test('a nested managed_update_*_request is converted via toPatch()', () {
    expect(
      patchLine('managed_badge'),
      contains('this.managedBadge!.value?.toNestedPatch()'),
    );
    expect(patchLine('managed_badge'), isNot(contains('toJson')));
  });

  test('a list of nested update requests is toPatch()-ed element-wise', () {
    expect(
      patchLine('badges'),
      contains('this.badges!.value?.map((e) => e.toNestedPatch()).toList()'),
    );
  });

  test('a nested value object keeps toJson() — it is not a request', () {
    // `UpdateThingRequestState` ends in `_state`, not `_request`, so it never gets a
    // `toPatch()`. Serialising it with one would not compile. This is the same
    // partition `_partialUpdateRequestName` draws for the classes that GET a
    // toPatch(), which is why the two can't disagree.
    expect(
      patchLine('nested_state'),
      contains('this.nestedState!.value?.toJson()'),
    );
    expect(patchLine('nested_state'), isNot(contains('toPatch')));
  });

  test('every present-Optional field still produces a patch line', () {
    for (final key in [
      'title',
      'count',
      'seen_at',
      'labels',
      'extra',
      'tone',
      'request_state',
      'history',
      'maybe_history',
      'badge',
      'managed_badge',
      'badges',
      'nested_state',
    ]) {
      expect(
        patchLine(key),
        isNot(startsWith('<no toPatch line')),
        reason: '$key lost its toPatch entry',
      );
    }
  });
}
