// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_part.dart';
import 'tool_state_completed_time.dart';

part 'tool_state_completed.freezed.dart';
part 'tool_state_completed.g.dart';

@Freezed()
abstract class ToolStateCompleted with _$ToolStateCompleted {
  const factory ToolStateCompleted({
    required String status,
    required Map<String, dynamic> input,
    required String output,
    required String title,
    required Map<String, dynamic> metadata,
    required ToolStateCompletedTime time,
    List<FilePart>? attachments,
  }) = _ToolStateCompleted;

  Map<String, dynamic> toJson() =>
      _$ToolStateCompletedToJson(this as _ToolStateCompleted);
  factory ToolStateCompleted.fromJson(Map<String, Object?> json) =>
      _$ToolStateCompletedFromJson(json);
}

extension ToolStateCompletedMergeX on ToolStateCompleted {
  /// Returns a new [ToolStateCompleted] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolStateCompleted merge(ToolStateCompleted other) {
    return copyWith(
      status: other.status,
      input: other.input,
      output: other.output,
      title: other.title,
      metadata: other.metadata,
      time: other.time,
      attachments: other.attachments,
    );
  }
}
