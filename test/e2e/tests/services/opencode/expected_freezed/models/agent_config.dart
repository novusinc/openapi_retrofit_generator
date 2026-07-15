// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_config_permission.dart';

part 'agent_config.freezed.dart';
part 'agent_config.g.dart';

@Freezed()
abstract class AgentConfig with _$AgentConfig {
  const factory AgentConfig({
    String? model,
    num? temperature,
    @JsonKey(name: 'top_p') num? topP,
    String? prompt,
    Map<String, bool>? tools,
    bool? disable,

    /// Description of when to use the agent
    String? description,
    dynamic mode,
    AgentConfigPermission? permission,
  }) = _AgentConfig;

  Map<String, dynamic> toJson() => _$AgentConfigToJson(this as _AgentConfig);
  factory AgentConfig.fromJson(Map<String, Object?> json) =>
      _$AgentConfigFromJson(json);
}

extension AgentConfigMergeX on AgentConfig {
  /// Returns a new [AgentConfig] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentConfig merge(AgentConfig other) {
    return copyWith(
      model: other.model,
      temperature: other.temperature,
      topP: other.topP,
      prompt: other.prompt,
      tools: other.tools,
      disable: other.disable,
      description: other.description,
      mode: other.mode,
      permission: other.permission,
    );
  }
}
