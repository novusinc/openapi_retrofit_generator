// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_status_status.dart';

part 'file.freezed.dart';
part 'file.g.dart';

@Freezed()
abstract class File with _$File {
  const factory File({
    required String path,
    required int added,
    required int removed,
    required FileStatusStatus status,
  }) = _File;

  Map<String, dynamic> toJson() => _$FileToJson(this as _File);
  factory File.fromJson(Map<String, Object?> json) => _$FileFromJson(json);
}

extension FileMergeX on File {
  /// Returns a new [File] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  File merge(File other) {
    return copyWith(
      path: other.path,
      added: other.added,
      removed: other.removed,
      status: other.status,
    );
  }
}
