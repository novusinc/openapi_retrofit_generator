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
    String? excerpt,
    User? author,
    List<String>? tags,
    List<Category>? categories,
    DateTime? publishedAt,
    dynamic metadata,
    DateTime? updatedAt,
    List<Comment>? comments,
  }) = _GetPostResponse;

  Map<String, dynamic> toJson() =>
      _$GetPostResponseToJson(this as _GetPostResponse);
  factory GetPostResponse.fromJson(Map<String, Object?> json) =>
      _$GetPostResponseFromJson(json);
  static const int titleMinLength = 1;
  static const int titleMaxLength = 200;
  static const int contentMinLength = 1;
  static const int excerptMaxLength = 300;
  static const int tagsMaxItems = 20;
  static const int viewCountMin = 0;
  static const int likeCountMin = 0;
}

extension GetPostResponseValidationX on GetPostResponse {
  bool validate() {
    try {
      if (title.length < GetPostResponse.titleMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (title.length > GetPostResponse.titleMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (content.length < GetPostResponse.contentMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (excerpt != null &&
          excerpt!.length > GetPostResponse.excerptMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (tags != null && tags!.length > GetPostResponse.tagsMaxItems) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (viewCount < GetPostResponse.viewCountMin) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (likeCount < GetPostResponse.likeCountMin) {
        return false;
      }
    } catch (e) {
      return false;
    }
    return true;
  }
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
