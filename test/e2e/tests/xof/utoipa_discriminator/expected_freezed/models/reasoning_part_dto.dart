// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_part_dto.dart';

part 'reasoning_part_dto.freezed.dart';
part 'reasoning_part_dto.g.dart';

@Freezed()
abstract class ReasoningPartDto with _$ReasoningPartDto {
  const factory ReasoningPartDto({
    /// The reasoning content
    required String reasoning,
  }) = _ReasoningPartDto;

  Map<String, dynamic> toJson() =>
      _$ReasoningPartDtoToJson(this as _ReasoningPartDto);
  factory ReasoningPartDto.fromJson(Map<String, Object?> json) =>
      _$ReasoningPartDtoFromJson(json);
}

extension ReasoningPartDtoMergeX on ReasoningPartDto {
  /// Returns a new [ReasoningPartDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ReasoningPartDto merge(ReasoningPartDto other) {
    return copyWith(reasoning: other.reasoning);
  }
}
