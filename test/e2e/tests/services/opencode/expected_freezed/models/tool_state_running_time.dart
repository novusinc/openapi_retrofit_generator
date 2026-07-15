// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tool_state_running_time.freezed.dart';
part 'tool_state_running_time.g.dart';

@Freezed()
abstract class ToolStateRunningTime with _$ToolStateRunningTime {
  const factory ToolStateRunningTime({required num start}) =
      _ToolStateRunningTime;

  Map<String, dynamic> toJson() =>
      _$ToolStateRunningTimeToJson(this as _ToolStateRunningTime);
  factory ToolStateRunningTime.fromJson(Map<String, Object?> json) =>
      _$ToolStateRunningTimeFromJson(json);
}

extension ToolStateRunningTimeMergeX on ToolStateRunningTime {
  /// Returns a new [ToolStateRunningTime] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolStateRunningTime merge(ToolStateRunningTime other) {
    return copyWith(start: other.start);
  }
}
