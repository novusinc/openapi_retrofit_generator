// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_part_input_source.dart';

part 'agent_part_input.freezed.dart';
part 'agent_part_input.g.dart';

@Freezed()
abstract class AgentPartInput with _$AgentPartInput {
  const factory AgentPartInput({
    required String type,
    required String name,
    String? id,
    AgentPartInputSource? source,
  }) = _AgentPartInput;

  Map<String, dynamic> toJson() =>
      _$AgentPartInputToJson(this as _AgentPartInput);
  factory AgentPartInput.fromJson(Map<String, Object?> json) =>
      _$AgentPartInputFromJson(json);
}

extension AgentPartInputMergeX on AgentPartInput {
  /// Returns a new [AgentPartInput] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentPartInput merge(AgentPartInput other) {
    return copyWith(
      id: other.id,
      type: other.type,
      name: other.name,
      source: other.source,
    );
  }
}
