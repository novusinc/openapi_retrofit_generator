import 'package:openapi_retrofit_generator/src/parser/utils/type_utils.dart';
import 'package:openapi_retrofit_generator/src/utils/base_utils.dart';
import 'package:test/test.dart';

/// A description becomes a doc comment whose paragraphs end like sentences.
///
/// Before, every line of a multi-line description got its own period, so a
/// sentence wrapped across two lines read "only the." / "fields are applied.".
void main() {
  test('a sentence wrapped across lines ends once', () {
    expect(
      descriptionComment(
        'Only the CLIENT_PROVIDED fields\nsent in the body are applied',
      ),
      '/// Only the CLIENT_PROVIDED fields\n'
      '/// sent in the body are applied.\n',
    );
  });

  test('each paragraph ends with a period', () {
    expect(
      descriptionComment('Update a message\n\nOnly some fields\nare applied'),
      '/// Update a message.\n'
      '///\n'
      '/// Only some fields\n'
      '/// are applied.\n',
    );
  });

  test('existing punctuation is kept', () {
    expect(
      descriptionComment('Is it set?\nYes!'),
      '/// Is it set?\n'
      '/// Yes!\n',
    );
  });

  test('a fenced code block is left as written', () {
    expect(
      descriptionComment('Example\n\n```\nfoo()\n\nbar()\n```'),
      '/// Example.\n'
      '///\n'
      '/// ```\n'
      '/// foo()\n'
      '///\n'
      '/// bar()\n'
      '/// ```\n',
    );
  });

  test('a single line is kept exactly as written', () {
    expect(descriptionComment('Name of the pet'), '/// Name of the pet\n');
  });

  test('indents every line but the first when asked', () {
    expect(
      descriptionComment(
        'First line\nsecond line',
        tab: '  ',
        tabForFirstLine: false,
      ),
      '/// First line\n'
      '  /// second line.\n',
    );
  });

  test("the generator's own note stays a separate sentence", () {
    final (_, description) = protectName(
      null,
      description: 'Avatar image file',
    );

    expect(
      descriptionComment(description),
      '/// Avatar image file.\n'
      '/// Name not received - field will be skipped.\n',
    );
  });
}
