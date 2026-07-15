// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'post_model.dart';
import 'post_search_result_type_type.dart';
import 'search_result.dart';

part 'post_search_result.freezed.dart';
part 'post_search_result.g.dart';

@Freezed()
abstract class PostSearchResult with _$PostSearchResult {
  const factory PostSearchResult({
    required PostSearchResultTypeType type,
    required PostModel post,
    double? score,
    List<String>? highlights,
  }) = _PostSearchResult;

  Map<String, dynamic> toJson() =>
      _$PostSearchResultToJson(this as _PostSearchResult);
  factory PostSearchResult.fromJson(Map<String, Object?> json) =>
      _$PostSearchResultFromJson(json);
}

extension PostSearchResultMergeX on PostSearchResult {
  /// Returns a new [PostSearchResult] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PostSearchResult merge(PostSearchResult other) {
    return copyWith(
      type: other.type,
      post: other.post,
      score: other.score,
      highlights: other.highlights,
    );
  }
}
