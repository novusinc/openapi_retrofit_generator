import 'package:openapi_retrofit_generator/src/parser/utils/type_utils.dart';
import 'package:test/test.dart';

void main() {
  group('protectEnumItemsNames', () {
    String nameFor(String raw) => protectEnumItemsNames([raw]).single.name;

    test('separator values normalize to camelCase-able names', () {
      expect(nameFor('health.check'), 'health.check');
      expect(nameFor('ai_indicator.update'), 'ai_indicator.update');
    });

    test('numeric values get the value prefix', () {
      expect(nameFor('42'), 'value  42');
      expect(nameFor('-42'), 'value minus -42');
    });

    test('separator-stripped names that start with a digit get the value '
        'prefix (e.g. hex colors)', () {
      // "#367B9C".toCamel is "367b9c" — not a valid Dart identifier without
      // the prefix. Regression test for the 13942_schema_enum_names e2e case.
      expect(nameFor('#367B9C'), 'value 367b9c');
      // A digit-free hex color stays as-is.
      expect(nameFor('#FFA5A4'), '#FFA5A4');
    });

    test('empty values are replaced with a unique placeholder', () {
      expect(nameFor(''), 'undefined 0');
    });

    test('keyword collisions get the value prefix', () {
      expect(nameFor('default'), 'value default');
    });

    test('jsonKey always preserves the original wire value', () {
      final item = protectEnumItemsNames(['#367B9C']).single;
      expect(item.jsonKey, '#367B9C');
    });
  });
}
