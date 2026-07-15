// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_text_response_submatches_match.freezed.dart';
part 'find_text_response_submatches_match.g.dart';

@Freezed()
abstract class FindTextResponseSubmatchesMatch
    with _$FindTextResponseSubmatchesMatch {
  const factory FindTextResponseSubmatchesMatch({required String text}) =
      _FindTextResponseSubmatchesMatch;

  Map<String, dynamic> toJson() => _$FindTextResponseSubmatchesMatchToJson(
    this as _FindTextResponseSubmatchesMatch,
  );
  factory FindTextResponseSubmatchesMatch.fromJson(Map<String, Object?> json) =>
      _$FindTextResponseSubmatchesMatchFromJson(json);
}

extension FindTextResponseSubmatchesMatchMergeX
    on FindTextResponseSubmatchesMatch {
  /// Returns a new [FindTextResponseSubmatchesMatch] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FindTextResponseSubmatchesMatch merge(FindTextResponseSubmatchesMatch other) {
    return copyWith(text: other.text);
  }
}
