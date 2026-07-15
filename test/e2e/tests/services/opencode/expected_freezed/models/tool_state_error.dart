// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tool_state_error_time.dart';

part 'tool_state_error.freezed.dart';
part 'tool_state_error.g.dart';

@Freezed()
abstract class ToolStateError with _$ToolStateError {
  const factory ToolStateError({
    required String status,
    required Map<String, dynamic> input,
    required String error,
    required ToolStateErrorTime time,
    Map<String, dynamic>? metadata,
  }) = _ToolStateError;

  Map<String, dynamic> toJson() =>
      _$ToolStateErrorToJson(this as _ToolStateError);
  factory ToolStateError.fromJson(Map<String, Object?> json) =>
      _$ToolStateErrorFromJson(json);
}

extension ToolStateErrorMergeX on ToolStateError {
  /// Returns a new [ToolStateError] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolStateError merge(ToolStateError other) {
    return copyWith(
      status: other.status,
      input: other.input,
      error: other.error,
      metadata: other.metadata,
      time: other.time,
    );
  }
}
