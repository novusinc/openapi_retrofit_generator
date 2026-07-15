// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'post_status.dart';
import 'user.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@Freezed()
abstract class PostModel with _$PostModel {
  const factory PostModel({
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
  }) = _PostModel;

  Map<String, dynamic> toJson() => _$PostModelToJson(this as _PostModel);
  factory PostModel.fromJson(Map<String, Object?> json) =>
      _$PostModelFromJson(json);
  static const int titleMinLength = 1;
  static const int titleMaxLength = 200;
  static const int contentMinLength = 1;
  static const int excerptMaxLength = 300;
  static const int tagsMaxItems = 20;
  static const int viewCountMin = 0;
  static const int likeCountMin = 0;
}

extension PostModelValidationX on PostModel {
  bool validate() {
    try {
      if (title.length < PostModel.titleMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (title.length > PostModel.titleMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (content.length < PostModel.contentMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (excerpt != null && excerpt!.length > PostModel.excerptMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (tags != null && tags!.length > PostModel.tagsMaxItems) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (viewCount < PostModel.viewCountMin) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (likeCount < PostModel.likeCountMin) {
        return false;
      }
    } catch (e) {
      return false;
    }
    return true;
  }
}

extension PostModelMergeX on PostModel {
  /// Returns a new [PostModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PostModel merge(PostModel other) {
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
    );
  }
}
