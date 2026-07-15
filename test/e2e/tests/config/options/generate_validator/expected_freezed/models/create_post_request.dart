// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_request.freezed.dart';
part 'create_post_request.g.dart';

@Freezed()
abstract class CreatePostRequest with _$CreatePostRequest {
  const factory CreatePostRequest({
    required String title,
    required String content,
    required String authorId,
    List<String>? tags,
    DateTime? publishAt,
    dynamic metadata,
  }) = _CreatePostRequest;

  Map<String, dynamic> toJson() =>
      _$CreatePostRequestToJson(this as _CreatePostRequest);
  factory CreatePostRequest.fromJson(Map<String, Object?> json) =>
      _$CreatePostRequestFromJson(json);
  static const int titleMinLength = 1;
  static const int titleMaxLength = 200;
  static const int contentMinLength = 1;
  static const int tagsMinItems = 0;
  static const int tagsMaxItems = 10;
}

extension CreatePostRequestValidationX on CreatePostRequest {
  bool validate() {
    try {
      if (title.length < CreatePostRequest.titleMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (title.length > CreatePostRequest.titleMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (content.length < CreatePostRequest.contentMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (tags != null && tags!.length < CreatePostRequest.tagsMinItems) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (tags != null && tags!.length > CreatePostRequest.tagsMaxItems) {
        return false;
      }
    } catch (e) {
      return false;
    }
    return true;
  }
}

extension CreatePostRequestMergeX on CreatePostRequest {
  /// Returns a new [CreatePostRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreatePostRequest merge(CreatePostRequest other) {
    return copyWith(
      title: other.title,
      content: other.content,
      authorId: other.authorId,
      tags: other.tags,
      publishAt: other.publishAt,
      metadata: other.metadata,
    );
  }
}
