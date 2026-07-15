// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tool_state_completed_time.freezed.dart';
part 'tool_state_completed_time.g.dart';

@Freezed()
abstract class ToolStateCompletedTime with _$ToolStateCompletedTime {
  const factory ToolStateCompletedTime({
    required num start,
    required num end,
    num? compacted,
  }) = _ToolStateCompletedTime;

  Map<String, dynamic> toJson() =>
      _$ToolStateCompletedTimeToJson(this as _ToolStateCompletedTime);
  factory ToolStateCompletedTime.fromJson(Map<String, Object?> json) =>
      _$ToolStateCompletedTimeFromJson(json);
}

extension ToolStateCompletedTimeMergeX on ToolStateCompletedTime {
  /// Returns a new [ToolStateCompletedTime] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolStateCompletedTime merge(ToolStateCompletedTime other) {
    return copyWith(
      start: other.start,
      end: other.end,
      compacted: other.compacted,
    );
  }
}
