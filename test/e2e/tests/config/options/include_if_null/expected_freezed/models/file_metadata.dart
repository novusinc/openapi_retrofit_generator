// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_metadata.freezed.dart';
part 'file_metadata.g.dart';

@Freezed()
abstract class FileMetadata with _$FileMetadata {
  const factory FileMetadata({
    @JsonKey(includeIfNull: false) String? filename,
    @JsonKey(includeIfNull: false) String? mimeType,
    @JsonKey(includeIfNull: false) int? size,
    @JsonKey(includeIfNull: false) List<String>? tags,
  }) = _FileMetadata;

  Map<String, dynamic> toJson() => _$FileMetadataToJson(this as _FileMetadata);
  factory FileMetadata.fromJson(Map<String, Object?> json) =>
      _$FileMetadataFromJson(json);
}

extension FileMetadataMergeX on FileMetadata {
  /// Returns a new [FileMetadata] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileMetadata merge(FileMetadata other) {
    return copyWith(
      filename: other.filename,
      mimeType: other.mimeType,
      size: other.size,
      tags: other.tags,
    );
  }
}
