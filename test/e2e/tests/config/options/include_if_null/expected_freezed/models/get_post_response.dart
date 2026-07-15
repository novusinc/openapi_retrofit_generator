// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'comment.dart';
import 'post_model.dart';
import 'post_status.dart';
import 'user.dart';

part 'get_post_response.freezed.dart';
part 'get_post_response.g.dart';

@Freezed()
abstract class GetPostResponse with _$GetPostResponse {
  const factory GetPostResponse({
    required String id,
    required String title,
    required String content,
    required String authorId,
    required PostStatus status,
    required DateTime createdAt,
    @Default(0) int viewCount,
    @Default(0) int likeCount,
    @JsonKey(includeIfNull: false) String? excerpt,
    @JsonKey(includeIfNull: false) User? author,
    @JsonKey(includeIfNull: false) List<String>? tags,
    @JsonKey(includeIfNull: false) List<Category>? categories,
    @JsonKey(includeIfNull: false) DateTime? publishedAt,
    @JsonKey(includeIfNull: false) dynamic metadata,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) List<Comment>? comments,
  }) = _GetPostResponse;

  Map<String, dynamic> toJson() =>
      _$GetPostResponseToJson(this as _GetPostResponse);
  factory GetPostResponse.fromJson(Map<String, Object?> json) =>
      _$GetPostResponseFromJson(json);
}

extension GetPostResponseMergeX on GetPostResponse {
  /// Returns a new [GetPostResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetPostResponse merge(GetPostResponse other) {
    return copyWith(
      id: other.id,
      title: other.title,
      content: other.content,
      excerpt: other.excerpt,
      authorId: other.authorId,
      author: other.author,
      status: other.status,
      tags: other.tags,
      categories: other.categories,
      publishedAt: other.publishedAt,
      viewCount: other.viewCount,
      likeCount: other.likeCount,
      metadata: other.metadata,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      comments: other.comments,
    );
  }
}
