// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_part_source.freezed.dart';
part 'agent_part_source.g.dart';

@Freezed()
abstract class AgentPartSource with _$AgentPartSource {
  const factory AgentPartSource({
    required String value,
    required int start,
    required int end,
  }) = _AgentPartSource;

  Map<String, dynamic> toJson() =>
      _$AgentPartSourceToJson(this as _AgentPartSource);
  factory AgentPartSource.fromJson(Map<String, Object?> json) =>
      _$AgentPartSourceFromJson(json);
}

extension AgentPartSourceMergeX on AgentPartSource {
  /// Returns a new [AgentPartSource] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentPartSource merge(AgentPartSource other) {
    return copyWith(value: other.value, start: other.start, end: other.end);
  }
}
