import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:test/test.dart';

void main() {
  group('Freezed union default constants', () {
    test('emits constants only for factories callable without arguments', () {
      final dataClass = UniversalComponentClass(
        name: 'NotificationEvent',
        imports: const {},
        parameters: {
          const UniversalType(
            type: 'String',
            name: 'type',
            jsonKey: 'type',
            isRequired: true,
          ),
        },
        discriminator: (
          propertyName: 'type',
          discriminatorValueToRefMapping: const {
            'empty': 'EmptyEvent',
            'optional': 'OptionalEvent',
            'defaulted': 'DefaultedEvent',
            'required': 'RequiredEvent',
          },
          refProperties: {
            'EmptyEvent': {
              const UniversalType(
                type: 'String',
                name: 'type',
                jsonKey: 'type',
                isRequired: true,
              ),
            },
            'OptionalEvent': {
              const UniversalType(
                type: 'String',
                name: 'type',
                jsonKey: 'type',
                isRequired: true,
              ),
              const UniversalType(
                type: 'String',
                name: 'message',
                isRequired: false,
              ),
            },
            'DefaultedEvent': {
              const UniversalType(
                type: 'String',
                name: 'type',
                jsonKey: 'type',
                isRequired: true,
              ),
              const UniversalType(
                type: 'String',
                name: 'state',
                defaultValue: 'ready',
                isRequired: true,
              ),
            },
            'RequiredEvent': {
              const UniversalType(
                type: 'String',
                name: 'type',
                jsonKey: 'type',
                isRequired: true,
              ),
              const UniversalType(type: 'String', name: 'id', isRequired: true),
            },
          },
        ),
      );

      final fillController = FillController(
        config: const GeneratorConfig(
          name: '',
          outputDirectory: '.',
          jsonSerializer: JsonSerializer.freezed,
        ),
      );

      final generatedContent = fillController.fillDtoContent(dataClass).content;

      expect(
        generatedContent,
        contains('  static const typeEmpty = NotificationEvent.empty();'),
      );
      expect(
        generatedContent,
        contains('  static const typeOptional = NotificationEvent.optional();'),
      );
      expect(
        generatedContent,
        contains(
          '  static const typeDefaulted = NotificationEvent.defaulted();',
        ),
      );
      expect(generatedContent, isNot(contains('  static const typeRequired')));
    });
  });
}
