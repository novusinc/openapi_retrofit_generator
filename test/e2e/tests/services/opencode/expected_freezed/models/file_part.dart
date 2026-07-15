// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_part_source.dart';

part 'file_part.freezed.dart';
part 'file_part.g.dart';

@Freezed()
abstract class FilePart with _$FilePart {
  const factory FilePart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    required String mime,
    required String url,
    String? filename,
    FilePartSource? source,
  }) = _FilePart;

  Map<String, dynamic> toJson() => _$FilePartToJson(this as _FilePart);
  factory FilePart.fromJson(Map<String, Object?> json) =>
      _$FilePartFromJson(json);
}

extension FilePartMergeX on FilePart {
  /// Returns a new [FilePart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FilePart merge(FilePart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      mime: other.mime,
      filename: other.filename,
      url: other.url,
      source: other.source,
    );
  }
}
