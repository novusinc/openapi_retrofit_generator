// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'post_model.dart';
import 'user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@Freezed()
abstract class Comment with _$Comment {
  const factory Comment({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? text,
    @JsonKey(includeIfNull: false) User? author,
    @JsonKey(includeIfNull: false) PostModel? post,
  }) = _Comment;

  Map<String, dynamic> toJson() => _$CommentToJson(this as _Comment);
  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}

extension CommentMergeX on Comment {
  /// Returns a new [Comment] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Comment merge(Comment other) {
    return copyWith(
      id: other.id,
      text: other.text,
      author: other.author,
      post: other.post,
    );
  }
}
