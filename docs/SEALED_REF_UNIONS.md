# Sealed Ref Unions

`sealed_ref_unions` changes how discriminated `oneOf`/`anyOf` unions whose
variants are all `$ref`s to existing top-level schemas are emitted in
**freezed** mode: instead of cloning every variant's fields into Freezed union
factory constructors (producing a second, unrelated Dart class per wire
object), the union becomes a plain Dart `sealed` supertype over the existing
leaf classes.

```yaml
openapi_generator:
  json_serializer: freezed
  sealed_ref_unions: true   # default: false
```

## The problem with the legacy emission

Given this contract:

```yaml
ChannelMember:
  oneOf:
    - $ref: '#/components/schemas/HumanChannelMember'
    - $ref: '#/components/schemas/AiChannelMember'
  discriminator:
    propertyName: type
    mapping:
      human: '#/components/schemas/HumanChannelMember'
      ai: '#/components/schemas/AiChannelMember'
```

the legacy freezed emission produces **both** a standalone `HumanChannelMember`
class **and** a `@Freezed(unionKey: 'type')` union whose `ChannelMember.human`
factory re-declares every `HumanChannelMember` field (Freezed unions cannot
adopt an existing class as a variant). The same wire object gets two unrelated
Dart types (`ChannelMemberHuman` vs `HumanChannelMember`), and crossing between
them requires JSON round-trips.

## What gets generated instead

One file per **union family**, holding:

```dart
sealed class ChannelMember {
  // Variant constructors preserved as redirecting factories — construction
  // sites like ChannelMember.human(...) compile unchanged and return the
  // leaf instance itself.
  const factory ChannelMember.human({...leaf params...}) = HumanChannelMember;
  const factory ChannelMember.ai({...}) = AiChannelMember;

  // static const typeX constants for variants constructible without arguments.

  /// Unrecognized discriminator values no longer throw.
  factory ChannelMember.fromJson(Map<String, dynamic> json) =>
      switch (json['type']) {
        'human' => HumanChannelMember.fromJson(json),
        'ai' => AiChannelMember.fromJson(json),
        _ => ChannelMemberUnknown(Map<String, dynamic>.from(json)),
      };

  // Abstract getters for the fields shared by every variant (same name, wire
  // key, type and default), excluding the discriminator itself.
  String get id;
  DateTime get createdAt;

  Map<String, dynamic> toJson();
}

/// Raw-JSON fallback for forward compatibility (server adds a variant before
/// clients update). toJson() returns the payload unchanged, so unknown
/// variants survive persistence and re-serialization.
final class ChannelMemberUnknown implements ChannelMember { ... }

// The leaf classes: unchanged Freezed emission + the implements clause.
@Freezed()
abstract class HumanChannelMember with _$HumanChannelMember
    implements ChannelMember { ... }

// Freezed-style compatibility extensions on the supertype:
//   copyWith over the common fields (UnsupportedError for Unknown), and
//   map / mapOrNull / maybeMap with leaf-typed callbacks named after the
//   discriminator values (plus an optional `unknown` handler).
```

Because the leaf **is** the union variant, `HumanChannelMember` values are
directly assignable to `ChannelMember`, exhaustive `switch`es over the sealed
type are compiler-checked, and no clone classes or conversion shims exist.

## Union families

Dart requires every direct subtype of a `sealed` class to live in the same
library, so a union and its leaves must share one generated file. When two
unions share a leaf (e.g. `EphemeralEvent`'s variants are a subset of
`Event`'s), the whole connected component — both sealed classes, all leaves,
both `Unknown` fallbacks — is emitted into a single file named after the
**primary** union (the one with the most variants; ties break
lexicographically). Shared leaves implement every union that references them.

Imports elsewhere are rewritten automatically: any generated file (models,
retrofit clients, typedefs) that would have imported `human_channel_member.dart`
imports the family file instead.

## Eligibility

A union is eligible when it is discriminated and **every** mapping ref resolves
to an existing top-level component schema that is itself neither a union nor a
typedef/enum. Ineligible unions (inline variants, missing refs,
undiscriminated) keep the legacy clone emission — the two modes coexist in one
output.

## Interactions

- **`fallback_union`** is superseded for eligible unions by the built-in
  `<Union>Unknown` fallback (ineligible unions still honor it).
- **Serializers**: freezed only. With `json_serializer: json_serializable` or
  `dart_mappable` the flag is ignored with a warning.
- **`merge_outputs`**: incompatible (family files rely on per-file `part`
  directives); the combination is rejected with a `ConfigException`.
- **Converters** (`generate_converters`): variant converters accept/return the
  leaf classes; union dispatcher converters switch on leaf types and pass
  unknown variants through losslessly (`DbXUnknown(u.json)`) when both sides
  are families.
- A schema named `<Union>Unknown` collides with the generated fallback class
  and fails generation with a clear error.
