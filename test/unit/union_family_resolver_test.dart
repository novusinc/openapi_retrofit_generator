import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:test/test.dart';

/// Builds a plain leaf component class.
UniversalComponentClass leaf(
  String name, {
  Set<String> imports = const {},
  DiscriminatorValue? discriminatorValue,
}) {
  return UniversalComponentClass(
    name: name,
    imports: imports,
    parameters: {
      const UniversalType(
        type: 'String',
        name: 'type',
        jsonKey: 'type',
        isRequired: true,
      ),
      const UniversalType(
        type: 'String',
        name: 'id',
        jsonKey: 'id',
        isRequired: true,
      ),
    },
    discriminatorValue: discriminatorValue,
  );
}

/// Builds a discriminated union over [refs] keyed by lowercased ref name.
///
/// [withRefProperties] mirrors the parser's discriminator resolution step;
/// pass false to simulate an unresolved (ineligible) mapping.
UniversalComponentClass union(
  String name,
  List<String> refs, {
  bool withRefProperties = true,
}) {
  return UniversalComponentClass(
    name: name,
    imports: refs.toSet(),
    parameters: const {},
    discriminator: (
      propertyName: 'type',
      discriminatorValueToRefMapping: {
        for (final ref in refs) ref.toLowerCase(): ref,
      },
      refProperties: {
        if (withRefProperties)
          for (final ref in refs)
            ref: {
              const UniversalType(
                type: 'String',
                name: 'type',
                jsonKey: 'type',
                isRequired: true,
              ),
              const UniversalType(
                type: 'String',
                name: 'id',
                jsonKey: 'id',
                isRequired: true,
              ),
            },
      },
    ),
  );
}

void main() {
  group('resolveUnionFamilies', () {
    test('an exclusive union forms a single-union family', () {
      final resolution = resolveUnionFamilies([
        union('ChannelMember', ['HumanChannelMember', 'AiChannelMember']),
        leaf('HumanChannelMember'),
        leaf('AiChannelMember'),
      ]);

      expect(resolution.families, hasLength(1));
      final family = resolution.families.single;
      expect(family.primary.name, 'ChannelMember');
      expect(family.fileBaseName, 'channel_member');
      expect(
        family.leaves.map((l) => l.name),
        ['AiChannelMember', 'HumanChannelMember'],
      );
      expect(
        resolution.familyMemberNames,
        {'ChannelMember', 'HumanChannelMember', 'AiChannelMember'},
      );
      expect(resolution.classFileOverrides, {
        'human_channel_member': 'channel_member',
        'ai_channel_member': 'channel_member',
      });
    });

    test('unions sharing leaves merge into one family, largest first', () {
      final resolution = resolveUnionFamilies([
        union('EphemeralEvent', ['TypingEvent', 'PresenceEvent']),
        union('Event', ['MessageEvent', 'TypingEvent', 'PresenceEvent']),
        leaf('MessageEvent'),
        leaf('TypingEvent'),
        leaf('PresenceEvent'),
      ]);

      expect(resolution.families, hasLength(1));
      final family = resolution.families.single;
      expect(family.unions.map((u) => u.name), ['Event', 'EphemeralEvent']);
      expect(family.fileBaseName, 'event');
      expect(family.leaves, hasLength(3));
      expect(resolution.classFileOverrides['ephemeral_event'], 'event');
      expect(resolution.classFileOverrides['typing_event'], 'event');
      expect(resolution.classFileOverrides.containsKey('event'), isFalse);
    });

    test('unions without shared leaves stay separate families', () {
      final resolution = resolveUnionFamilies([
        union('ChannelMember', ['HumanChannelMember']),
        union('File', ['AudioFile']),
        leaf('HumanChannelMember'),
        leaf('AudioFile'),
      ]);

      expect(resolution.families, hasLength(2));
      expect(
        resolution.families.map((f) => f.fileBaseName),
        ['channel_member', 'file'],
      );
    });

    test('a union with an unresolved mapping ref is ineligible', () {
      final resolution = resolveUnionFamilies([
        union('Event', ['MessageEvent', 'MissingEvent']),
        leaf('MessageEvent'),
      ]);

      expect(resolution.families, isEmpty);
      expect(resolution.familyMemberNames, isEmpty);
    });

    test('a union whose variant is an inline (non-top-level) class is '
        'ineligible', () {
      final resolution = resolveUnionFamilies([
        union('Event', ['InlineEvent']),
        leaf(
          'InlineEvent',
          discriminatorValue: (propertyValue: 'inline', parentClass: 'Event'),
        ),
      ]);

      expect(resolution.families, isEmpty);
    });

    test('a union whose variant is itself a union is ineligible', () {
      final resolution = resolveUnionFamilies([
        union('Outer', ['Inner']),
        union('Inner', ['InnerLeaf']),
        leaf('InnerLeaf'),
      ]);

      // Outer is ineligible (its ref is a union); Inner is eligible.
      expect(resolution.families, hasLength(1));
      expect(resolution.families.single.primary.name, 'Inner');
    });

    test('an eligible union sharing a leaf with an ineligible union still '
        'forms its family; the ineligible union stays out', () {
      final resolution = resolveUnionFamilies([
        union('Eligible', ['SharedLeaf', 'OwnLeaf']),
        union('Ineligible', ['SharedLeaf', 'MissingLeaf']),
        leaf('SharedLeaf'),
        leaf('OwnLeaf'),
      ]);

      expect(resolution.families, hasLength(1));
      final family = resolution.families.single;
      expect(family.primary.name, 'Eligible');
      expect(resolution.familyMemberNames, isNot(contains('Ineligible')));
      expect(resolution.familyMemberNames, contains('SharedLeaf'));
    });

    test('an undiscriminated union is ignored', () {
      final undiscriminated = UniversalComponentClass(
        name: 'Loose',
        imports: const {},
        parameters: const {},
        undiscriminatedUnionVariants: {
          'a': {const UniversalType(type: 'String', name: 'x', isRequired: true)},
        },
      );
      final resolution = resolveUnionFamilies([undiscriminated]);

      expect(resolution.families, isEmpty);
    });

    test('a schema named <Union>Unknown fails loudly', () {
      expect(
        () => resolveUnionFamilies([
          union('Event', ['MessageEvent']),
          leaf('MessageEvent'),
          leaf('EventUnknown'),
        ]),
        throwsA(isA<GeneratorException>()),
      );
    });

    test('tie on leaf count breaks lexicographically for the primary', () {
      final resolution = resolveUnionFamilies([
        union('Zulu', ['SharedA', 'SharedB']),
        union('Alpha', ['SharedA', 'SharedB']),
        leaf('SharedA'),
        leaf('SharedB'),
      ]);

      expect(resolution.families.single.primary.name, 'Alpha');
      expect(resolution.classFileOverrides['zulu'], 'alpha');
    });
  });
}
