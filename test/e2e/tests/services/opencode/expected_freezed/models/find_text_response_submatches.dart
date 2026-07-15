// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'find_text_response_submatches_match.dart';

part 'find_text_response_submatches.freezed.dart';
part 'find_text_response_submatches.g.dart';

@Freezed()
abstract class FindTextResponseSubmatches with _$FindTextResponseSubmatches {
  const factory FindTextResponseSubmatches({
    required FindTextResponseSubmatchesMatch match,
    required num start,
    required num end,
  }) = _FindTextResponseSubmatches;

  Map<String, dynamic> toJson() =>
      _$FindTextResponseSubmatchesToJson(this as _FindTextResponseSubmatches);
  factory FindTextResponseSubmatches.fromJson(Map<String, Object?> json) =>
      _$FindTextResponseSubmatchesFromJson(json);
}

extension FindTextResponseSubmatchesMergeX on FindTextResponseSubmatches {
  /// Returns a new [FindTextResponseSubmatches] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FindTextResponseSubmatches merge(FindTextResponseSubmatches other) {
    return copyWith(match: other.match, start: other.start, end: other.end);
  }
}
