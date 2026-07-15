// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tool_state_pending.freezed.dart';
part 'tool_state_pending.g.dart';

@Freezed()
abstract class ToolStatePending with _$ToolStatePending {
  const factory ToolStatePending({required String status}) = _ToolStatePending;

  Map<String, dynamic> toJson() =>
      _$ToolStatePendingToJson(this as _ToolStatePending);
  factory ToolStatePending.fromJson(Map<String, Object?> json) =>
      _$ToolStatePendingFromJson(json);
}

extension ToolStatePendingMergeX on ToolStatePending {
  /// Returns a new [ToolStatePending] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolStatePending merge(ToolStatePending other) {
    return copyWith(status: other.status);
  }
}
