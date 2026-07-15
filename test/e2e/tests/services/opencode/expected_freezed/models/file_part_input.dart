// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_part_source.dart';

part 'file_part_input.freezed.dart';
part 'file_part_input.g.dart';

@Freezed()
abstract class FilePartInput with _$FilePartInput {
  const factory FilePartInput({
    required String type,
    required String mime,
    required String url,
    String? id,
    String? filename,
    FilePartSource? source,
  }) = _FilePartInput;

  Map<String, dynamic> toJson() =>
      _$FilePartInputToJson(this as _FilePartInput);
  factory FilePartInput.fromJson(Map<String, Object?> json) =>
      _$FilePartInputFromJson(json);
}

extension FilePartInputMergeX on FilePartInput {
  /// Returns a new [FilePartInput] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FilePartInput merge(FilePartInput other) {
    return copyWith(
      id: other.id,
      type: other.type,
      mime: other.mime,
      filename: other.filename,
      url: other.url,
      source: other.source,
    );
  }
}
