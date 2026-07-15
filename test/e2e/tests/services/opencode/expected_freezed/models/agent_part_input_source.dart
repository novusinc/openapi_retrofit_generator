// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_part_input_source.freezed.dart';
part 'agent_part_input_source.g.dart';

@Freezed()
abstract class AgentPartInputSource with _$AgentPartInputSource {
  const factory AgentPartInputSource({
    required String value,
    required int start,
    required int end,
  }) = _AgentPartInputSource;

  Map<String, dynamic> toJson() =>
      _$AgentPartInputSourceToJson(this as _AgentPartInputSource);
  factory AgentPartInputSource.fromJson(Map<String, Object?> json) =>
      _$AgentPartInputSourceFromJson(json);
}

extension AgentPartInputSourceMergeX on AgentPartInputSource {
  /// Returns a new [AgentPartInputSource] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentPartInputSource merge(AgentPartInputSource other) {
    return copyWith(value: other.value, start: other.start, end: other.end);
  }
}
