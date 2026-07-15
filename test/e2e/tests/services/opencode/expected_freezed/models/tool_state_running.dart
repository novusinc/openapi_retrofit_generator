// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tool_state_running_time.dart';

part 'tool_state_running.freezed.dart';
part 'tool_state_running.g.dart';

@Freezed()
abstract class ToolStateRunning with _$ToolStateRunning {
  const factory ToolStateRunning({
    required String status,
    required dynamic input,
    required ToolStateRunningTime time,
    String? title,
    Map<String, dynamic>? metadata,
  }) = _ToolStateRunning;

  Map<String, dynamic> toJson() =>
      _$ToolStateRunningToJson(this as _ToolStateRunning);
  factory ToolStateRunning.fromJson(Map<String, Object?> json) =>
      _$ToolStateRunningFromJson(json);
}

extension ToolStateRunningMergeX on ToolStateRunning {
  /// Returns a new [ToolStateRunning] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolStateRunning merge(ToolStateRunning other) {
    return copyWith(
      status: other.status,
      input: other.input,
      title: other.title,
      metadata: other.metadata,
      time: other.time,
    );
  }
}
