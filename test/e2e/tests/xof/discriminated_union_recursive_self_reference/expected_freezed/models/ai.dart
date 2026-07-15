// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent.dart';
import 'agent_type_type.dart';
import 'custom_ai.dart';
import 'custom_ai_type_type.dart';
import 'model.dart';
import 'model_type_type.dart';

part 'ai.freezed.dart';
part 'ai.g.dart';

/// Discriminated union representing different AI types (Model, Agent, CustomAI)
@Freezed(unionKey: 'type')
sealed class Ai with _$Ai {
  @FreezedUnionValue('model')
  const factory Ai.model({
    /// Model ID
    required String id,

    /// Model name
    required String name,
  }) = AiModel;

  @FreezedUnionValue('agent')
  const factory Ai.agent({
    /// Agent ID
    required String id,

    /// Agent name
    required String name,
  }) = AiAgent;

  @FreezedUnionValue('custom')
  const factory Ai.custom({
    /// CustomAI ID
    required String id,

    /// CustomAI name
    required String name,

    /// Reference to base AI model/agent ID
    required String baseAiId,

    /// Recursive reference: CustomAI can have a baseAi which is also an AI (SELF-REFERENCE TEST)
    @JsonKey(includeIfNull: false) Ai? baseAi,
  }) = AiCustom;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory Ai.fromJson(Map<String, Object?> json) => _$AiFromJson(json);
}
