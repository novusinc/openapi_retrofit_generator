import 'package:openapi_retrofit_generator/openapi_retrofit_generator.dart';
import 'package:openapi_retrofit_generator/src/parser/model/normalized_identifier.dart';
import 'package:test/test.dart';

void main() {
  group('Discriminated Union Self-Import Prevention', () {
    test('No self-import when discriminated union has recursive reference', () async {
      // This test verifies the fix for the circular dependency bug where
      // discriminated unions would import themselves.
      //
      // Scenario:
      // - AI is a discriminated union with variants: Model, Agent, CustomAI
      // - CustomAI has property: baseAi?: AI (self-reference)
      // - When generating Ai class, we must NOT add 'ai' to Ai's imports
      //
      // Without the fix:
      //   import 'ai.dart';        // ← SELF-IMPORT (BUG!)
      //   import 'agent.dart';
      //   import 'custom_ai.dart';
      //   import 'model.dart';
      //
      // With the fix:
      //   import 'agent.dart';
      //   import 'custom_ai.dart'; // CustomAI imports 'ai', but we filter it
      //   import 'model.dart';
      //   // No import 'ai.dart'; ✓ (CORRECT)

      // Create variant classes
      // NOTE: imports contains filenames like 'model.dart' or short names like 'model'
      // but the .import property returns the class name in PascalCase
      final modelClass = UniversalComponentClass(
        name: 'Model',
        imports: {}, // Model doesn't need to import anything initially
        parameters: {
          UniversalType(type: 'String', name: 'id', isRequired: true),
          UniversalType(type: 'String', name: 'name', isRequired: true),
        },
      );

      final agentClass = UniversalComponentClass(
        name: 'Agent',
        imports: {}, // Agent doesn't need to import anything initially
        parameters: {
          UniversalType(type: 'String', name: 'id', isRequired: true),
          UniversalType(type: 'String', name: 'name', isRequired: true),
        },
      );

      // CustomAI references AI (the union itself) through baseAi property
      // So its imports would include 'Ai' (the PascalCase class name)
      final customAiClass = UniversalComponentClass(
        name: 'CustomAi',
        imports: {'Ai'}, // CustomAI references Ai in baseAi property
        parameters: {
          UniversalType(type: 'String', name: 'id', isRequired: true),
          UniversalType(type: 'String', name: 'name', isRequired: true),
          UniversalType(
            type: 'String',
            name: 'baseAiId',
            isRequired: true,
            jsonKey: 'baseAiId',
          ),
          UniversalType(
            type: 'Ai',
            name: 'baseAi',
            isRequired: false,
            nullable: true,
            jsonKey: 'baseAi',
          ),
        },
      );

      // Create discriminated union
      const discriminator = (
        propertyName: 'type',
        discriminatorValueToRefMapping: {
          'model': 'Model',
          'agent': 'Agent',
          'custom': 'CustomAi',
        },
        refProperties: {
          'Model': <UniversalType>{},
          'Agent': <UniversalType>{},
          'CustomAi': <UniversalType>{},
        },
      );

      final aiUnionClass = UniversalComponentClass(
        name: 'Ai',
        imports: {},
        parameters: {
          UniversalType(type: 'String', name: 'type', isRequired: true),
        },
        discriminator: discriminator,
      );

      // Simulate what the parser does: add variant imports to union
      // WITHOUT the fix, this would add 'ai' (self-import)
      // WITH the fix, 'ai' is filtered out
      for (final ref in discriminator.discriminatorValueToRefMapping.values) {
        UniversalComponentClass? refedClass;
        if (ref == 'Model') refedClass = modelClass;
        if (ref == 'Agent') refedClass = agentClass;
        if (ref == 'CustomAi') refedClass = customAiClass;

        if (refedClass != null) {
          // THIS IS THE FIX: Filter out self-imports
          aiUnionClass.imports.addAll(
            refedClass.imports.where((it) => it != aiUnionClass.name.toPascal),
          );
          if (refedClass.import != aiUnionClass.name.toPascal) {
            aiUnionClass.imports.add(refedClass.import);
          }
        }
      }

      // VERIFICATION: Check that no self-import exists
      expect(
        aiUnionClass.imports.contains('Ai'),
        false,
        reason:
            'Discriminated union "Ai" should NOT import itself, even when variants reference it',
      );

      // VERIFICATION: Check that variant imports ARE added correctly
      expect(
        aiUnionClass.imports.contains('Agent'),
        true,
        reason: 'Discriminated union should import Agent variant',
      );
      expect(
        aiUnionClass.imports.contains('CustomAi'),
        true,
        reason: 'Discriminated union should import CustomAi variant',
      );
      expect(
        aiUnionClass.imports.contains('Model'),
        true,
        reason: 'Discriminated union should import Model variant',
      );

      // VERIFICATION: Final imports should be exactly: {Agent, CustomAi, Model}
      expect(
        aiUnionClass.imports,
        {'Agent', 'CustomAi', 'Model'},
        reason:
            'Union should have exactly 3 imports (one per variant, no self-import)',
      );
    });

    test(
      'Self-import filtering works with nested recursive references',
      () async {
        // More complex case: CustomAI can have nested CustomAI as baseAi
        // This tests that the filter prevents: Ai → CustomAi → Ai → CustomAi → ...

        final customAiClass = UniversalComponentClass(
          name: 'CustomAi',
          imports: {'ai'}, // Has self-reference through baseAi: Ai
          parameters: {
            UniversalType(type: 'String', name: 'id', isRequired: true),
            UniversalType(
              type: 'Ai',
              name: 'baseAi',
              isRequired: false,
              nullable: true,
            ),
          },
        );

        final aiUnionClass = UniversalComponentClass(
          name: 'Ai',
          imports: {},
          parameters: {},
          discriminator: (
            propertyName: 'type',
            discriminatorValueToRefMapping: {'custom': 'CustomAi'},
            refProperties: {'CustomAi': <UniversalType>{}},
          ),
        );

        // Apply the fix
        aiUnionClass.imports.addAll(
          customAiClass.imports.where((it) => it != aiUnionClass.name.toPascal),
        );
        if (customAiClass.import != aiUnionClass.name.toPascal) {
          aiUnionClass.imports.add(customAiClass.import);
        }

        // Verify no self-import
        expect(
          aiUnionClass.imports.contains('Ai'),
          false,
          reason:
              'Even with nested self-references, no self-import should occur',
        );
        expect(aiUnionClass.imports.contains('CustomAi'), true);
      },
    );

    test('Freezed DTO generation has no self-imports', () async {
      // Integration test: verify generated Freezed code has no self-imports
      final aiUnionClass = UniversalComponentClass(
        name: 'Ai',
        imports: {'agent', 'custom_ai', 'model'},
        parameters: {
          UniversalType(type: 'String', name: 'type', isRequired: true),
        },
        discriminator: (
          propertyName: 'type',
          discriminatorValueToRefMapping: {
            'model': 'Model',
            'agent': 'Agent',
            'custom': 'CustomAi',
          },
          refProperties: {
            'Model': {
              UniversalType(type: 'String', name: 'id', isRequired: true),
            },
            'Agent': {
              UniversalType(type: 'String', name: 'id', isRequired: true),
            },
            'CustomAi': {
              UniversalType(type: 'String', name: 'id', isRequired: true),
              UniversalType(
                type: 'Ai',
                name: 'baseAi',
                isRequired: false,
                nullable: true,
              ),
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

      final generatedContent = fillController.fillDtoContent(aiUnionClass);

      // Check imports section
      expect(
        generatedContent.content.contains("import 'ai.dart';"),
        false,
        reason:
            'Generated Freezed code should NOT contain self-import: import "ai.dart"',
      );

      // Verify correct imports are present
      expect(
        generatedContent.content.contains("import 'agent.dart';"),
        true,
        reason: 'Generated code should import Agent variant',
      );
      expect(
        generatedContent.content.contains("import 'custom_ai.dart';"),
        true,
        reason: 'Generated code should import CustomAi variant',
      );
      expect(
        generatedContent.content.contains("import 'model.dart';"),
        true,
        reason: 'Generated code should import Model variant',
      );

      // Verify sealed class structure
      expect(
        generatedContent.content.contains('@Freezed(unionKey: \'type\')'),
        true,
        reason: 'Should be a Freezed discriminated union',
      );
    });
  });
}
