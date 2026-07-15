// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_type_type.dart';
import 'ai.dart';

part 'agent.freezed.dart';
part 'agent.g.dart';

/// AI agent variant
@Freezed()
abstract class Agent with _$Agent {
  const factory Agent({
    /// Discriminator value for Agent
    required AgentTypeType type,

    /// Agent ID
    required String id,

    /// Agent name
    required String name,
  }) = _Agent;

  Map<String, dynamic> toJson() => _$AgentToJson(this as _Agent);
  factory Agent.fromJson(Map<String, Object?> json) => _$AgentFromJson(json);
}

extension AgentMergeX on Agent {
  /// Returns a new [Agent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Agent merge(Agent other) {
    return copyWith(type: other.type, id: other.id, name: other.name);
  }
}
