// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_model.dart';
import 'agent_permission.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';

@Freezed()
abstract class Agent with _$Agent {
  const factory Agent({
    required String name,
    required dynamic mode,
    required bool builtIn,
    required AgentPermission permission,
    required Map<String, bool> tools,
    required Map<String, dynamic> options,
    String? description,
    num? topP,
    num? temperature,
    AgentModel? model,
    String? prompt,
  }) = _Agent;

  Map<String, dynamic> toJson() => _$AgentToJson(this as _Agent);
  factory Agent.fromJson(Map<String, Object?> json) => _$AgentFromJson(json);
}

extension AgentMergeX on Agent {
  /// Returns a new [Agent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Agent merge(Agent other) {
    return copyWith(
      name: other.name,
      description: other.description,
      mode: other.mode,
      builtIn: other.builtIn,
      topP: other.topP,
      temperature: other.temperature,
      permission: other.permission,
      model: other.model,
      prompt: other.prompt,
      tools: other.tools,
      options: other.options,
    );
  }
}
