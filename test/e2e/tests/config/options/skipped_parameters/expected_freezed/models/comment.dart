// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'comment.dart';
import 'user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@Freezed()
abstract class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String content,
    required String authorId,
    required DateTime createdAt,
    @Default(0) int depth,
    @Default(0) int likeCount,
    User? author,
    String? postId,

    /// Parent comment ID (for nested replies)
    String? parentId,

    /// Circular reference to parent comment
    Comment? parent,

    /// Nested replies (circular)
    List<Comment>? replies,
    DateTime? updatedAt,
    DateTime? deletedAt,
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
      content: other.content,
      authorId: other.authorId,
      author: other.author,
      postId: other.postId,
      parentId: other.parentId,
      parent: other.parent,
      replies: other.replies,
      depth: other.depth,
      likeCount: other.likeCount,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      deletedAt: other.deletedAt,
    );
  }
}
