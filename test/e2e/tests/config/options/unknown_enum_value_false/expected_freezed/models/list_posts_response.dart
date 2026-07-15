// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'post_model.dart';
import 'list_posts_response_pagination.dart';

part 'list_posts_response.freezed.dart';
part 'list_posts_response.g.dart';

@Freezed()
abstract class ListPostsResponse with _$ListPostsResponse {
  const factory ListPostsResponse({
    List<PostModel>? posts,
    ListPostsResponsePagination? pagination,
    Map<String, String>? metadata,
  }) = _ListPostsResponse;

  Map<String, dynamic> toJson() =>
      _$ListPostsResponseToJson(this as _ListPostsResponse);
  factory ListPostsResponse.fromJson(Map<String, Object?> json) =>
      _$ListPostsResponseFromJson(json);
}

extension ListPostsResponseMergeX on ListPostsResponse {
  /// Returns a new [ListPostsResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ListPostsResponse merge(ListPostsResponse other) {
    return copyWith(
      posts: other.posts,
      pagination: other.pagination,
      metadata: other.metadata,
    );
  }
}
