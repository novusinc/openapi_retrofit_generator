// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_content_patch_hunks.dart';

part 'file_content_patch.freezed.dart';
part 'file_content_patch.g.dart';

@Freezed()
abstract class FileContentPatch with _$FileContentPatch {
  const factory FileContentPatch({
    required String oldFileName,
    required String newFileName,
    required List<FileContentPatchHunks> hunks,
    String? oldHeader,
    String? newHeader,
    @JsonKey(name: 'index') String? indexField,
  }) = _FileContentPatch;

  Map<String, dynamic> toJson() =>
      _$FileContentPatchToJson(this as _FileContentPatch);
  factory FileContentPatch.fromJson(Map<String, Object?> json) =>
      _$FileContentPatchFromJson(json);
}

extension FileContentPatchMergeX on FileContentPatch {
  /// Returns a new [FileContentPatch] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileContentPatch merge(FileContentPatch other) {
    return copyWith(
      oldFileName: other.oldFileName,
      newFileName: other.newFileName,
      oldHeader: other.oldHeader,
      newHeader: other.newHeader,
      hunks: other.hunks,
      indexField: other.indexField,
    );
  }
}
