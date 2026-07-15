// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'reasoning_part_dto.dart';
import 'text_part_dto.dart';
import 'tool_part_dto.dart';

part 'message_part_dto.freezed.dart';
part 'message_part_dto.g.dart';

/// A content part of a message.
@Freezed(unionKey: 'type')
sealed class MessagePartDto with _$MessagePartDto {
  @FreezedUnionValue('Text')
  const factory MessagePartDto.text({
    /// The text content
    required String content,
  }) = MessagePartDtoText;

  @FreezedUnionValue('Reasoning')
  const factory MessagePartDto.reasoning({
    /// The reasoning content
    required String reasoning,
  }) = MessagePartDtoReasoning;

  @FreezedUnionValue('Tool')
  const factory MessagePartDto.tool({
    /// The name of the tool
    required String toolName,

    /// The arguments for the tool
    @JsonKey(includeIfNull: false) dynamic toolArgs,
  }) = MessagePartDtoTool;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory MessagePartDto.fromJson(Map<String, Object?> json) =>
      _$MessagePartDtoFromJson(json);
}
