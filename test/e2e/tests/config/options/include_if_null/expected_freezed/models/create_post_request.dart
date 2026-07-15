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
    @JsonKey(includeIfNull: false) List<String>? tags,
    @JsonKey(includeIfNull: false) DateTime? publishAt,
    @JsonKey(includeIfNull: false) dynamic metadata,
  }) = _CreatePostRequest;

  Map<String, dynamic> toJson() =>
      _$CreatePostRequestToJson(this as _CreatePostRequest);
  factory CreatePostRequest.fromJson(Map<String, Object?> json) =>
      _$CreatePostRequestFromJson(json);
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
