// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_text_response_lines.freezed.dart';
part 'find_text_response_lines.g.dart';

@Freezed()
abstract class FindTextResponseLines with _$FindTextResponseLines {
  const factory FindTextResponseLines({required String text}) =
      _FindTextResponseLines;

  Map<String, dynamic> toJson() =>
      _$FindTextResponseLinesToJson(this as _FindTextResponseLines);
  factory FindTextResponseLines.fromJson(Map<String, Object?> json) =>
      _$FindTextResponseLinesFromJson(json);
}

extension FindTextResponseLinesMergeX on FindTextResponseLines {
  /// Returns a new [FindTextResponseLines] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FindTextResponseLines merge(FindTextResponseLines other) {
    return copyWith(text: other.text);
  }
}
