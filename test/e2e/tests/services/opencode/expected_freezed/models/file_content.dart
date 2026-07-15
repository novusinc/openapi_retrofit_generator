// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_content_patch.dart';

part 'file_content.freezed.dart';
part 'file_content.g.dart';

@Freezed()
abstract class FileContent with _$FileContent {
  const factory FileContent({
    required String type,
    required String content,
    String? diff,
    FileContentPatch? patch,
    String? encoding,
    String? mimeType,
  }) = _FileContent;

  Map<String, dynamic> toJson() => _$FileContentToJson(this as _FileContent);
  factory FileContent.fromJson(Map<String, Object?> json) =>
      _$FileContentFromJson(json);
}

extension FileContentMergeX on FileContent {
  /// Returns a new [FileContent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileContent merge(FileContent other) {
    return copyWith(
      type: other.type,
      content: other.content,
      diff: other.diff,
      patch: other.patch,
      encoding: other.encoding,
      mimeType: other.mimeType,
    );
  }
}
