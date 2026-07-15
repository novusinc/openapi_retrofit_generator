// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_part_dto.dart';

part 'tool_part_dto.freezed.dart';
part 'tool_part_dto.g.dart';

@Freezed()
abstract class ToolPartDto with _$ToolPartDto {
  const factory ToolPartDto({
    /// The name of the tool
    required String toolName,

    /// The arguments for the tool
    @JsonKey(includeIfNull: false) dynamic toolArgs,
  }) = _ToolPartDto;

  Map<String, dynamic> toJson() => _$ToolPartDtoToJson(this as _ToolPartDto);
  factory ToolPartDto.fromJson(Map<String, Object?> json) =>
      _$ToolPartDtoFromJson(json);
}

extension ToolPartDtoMergeX on ToolPartDto {
  /// Returns a new [ToolPartDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolPartDto merge(ToolPartDto other) {
    return copyWith(toolName: other.toolName, toolArgs: other.toolArgs);
  }
}
