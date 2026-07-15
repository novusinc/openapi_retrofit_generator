// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_upload_response.freezed.dart';
part 'file_upload_response.g.dart';

@Freezed()
abstract class FileUploadResponse with _$FileUploadResponse {
  const factory FileUploadResponse({
    required String id,
    required String url,
    required String filename,
    required int size,
    String? mimeType,
    DateTime? uploadedAt,
  }) = _FileUploadResponse;

  Map<String, dynamic> toJson() =>
      _$FileUploadResponseToJson(this as _FileUploadResponse);
  factory FileUploadResponse.fromJson(Map<String, Object?> json) =>
      _$FileUploadResponseFromJson(json);
}

extension FileUploadResponseMergeX on FileUploadResponse {
  /// Returns a new [FileUploadResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileUploadResponse merge(FileUploadResponse other) {
    return copyWith(
      id: other.id,
      url: other.url,
      filename: other.filename,
      mimeType: other.mimeType,
      size: other.size,
      uploadedAt: other.uploadedAt,
    );
  }
}
