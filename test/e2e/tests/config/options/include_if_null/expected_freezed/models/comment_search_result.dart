// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment.dart';
import 'comment_search_result_type_type.dart';
import 'search_result.dart';

part 'comment_search_result.freezed.dart';
part 'comment_search_result.g.dart';

@Freezed()
abstract class CommentSearchResult with _$CommentSearchResult {
  const factory CommentSearchResult({
    required CommentSearchResultTypeType type,
    required Comment comment,
    @JsonKey(includeIfNull: false) double? score,
  }) = _CommentSearchResult;

  Map<String, dynamic> toJson() =>
      _$CommentSearchResultToJson(this as _CommentSearchResult);
  factory CommentSearchResult.fromJson(Map<String, Object?> json) =>
      _$CommentSearchResultFromJson(json);
}

extension CommentSearchResultMergeX on CommentSearchResult {
  /// Returns a new [CommentSearchResult] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CommentSearchResult merge(CommentSearchResult other) {
    return copyWith(
      type: other.type,
      comment: other.comment,
      score: other.score,
    );
  }
}
