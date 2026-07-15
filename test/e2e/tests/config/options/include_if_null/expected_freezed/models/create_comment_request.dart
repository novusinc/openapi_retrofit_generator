// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_request.freezed.dart';
part 'create_comment_request.g.dart';

@Freezed()
abstract class CreateCommentRequest with _$CreateCommentRequest {
  const factory CreateCommentRequest({
    required String content,
    required String authorId,
    @JsonKey(includeIfNull: false) String? postId,
    @JsonKey(includeIfNull: false) String? parentId,
  }) = _CreateCommentRequest;

  Map<String, dynamic> toJson() =>
      _$CreateCommentRequestToJson(this as _CreateCommentRequest);
  factory CreateCommentRequest.fromJson(Map<String, Object?> json) =>
      _$CreateCommentRequestFromJson(json);
}

extension CreateCommentRequestMergeX on CreateCommentRequest {
  /// Returns a new [CreateCommentRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateCommentRequest merge(CreateCommentRequest other) {
    return copyWith(
      content: other.content,
      authorId: other.authorId,
      postId: other.postId,
      parentId: other.parentId,
    );
  }
}
