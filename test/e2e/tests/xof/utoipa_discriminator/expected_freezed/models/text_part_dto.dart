// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_part_dto.dart';

part 'text_part_dto.freezed.dart';
part 'text_part_dto.g.dart';

@Freezed()
abstract class TextPartDto with _$TextPartDto {
  const factory TextPartDto({
    /// The text content
    required String content,
  }) = _TextPartDto;

  Map<String, dynamic> toJson() => _$TextPartDtoToJson(this as _TextPartDto);
  factory TextPartDto.fromJson(Map<String, Object?> json) =>
      _$TextPartDtoFromJson(json);
}

extension TextPartDtoMergeX on TextPartDto {
  /// Returns a new [TextPartDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TextPartDto merge(TextPartDto other) {
    return copyWith(content: other.content);
  }
}
