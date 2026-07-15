// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_model.freezed.dart';
part 'agent_model.g.dart';

@Freezed()
abstract class AgentModel with _$AgentModel {
  const factory AgentModel({
    @JsonKey(name: 'modelID') required String modelId,
    @JsonKey(name: 'providerID') required String providerId,
  }) = _AgentModel;

  Map<String, dynamic> toJson() => _$AgentModelToJson(this as _AgentModel);
  factory AgentModel.fromJson(Map<String, Object?> json) =>
      _$AgentModelFromJson(json);
}

extension AgentModelMergeX on AgentModel {
  /// Returns a new [AgentModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentModel merge(AgentModel other) {
    return copyWith(modelId: other.modelId, providerId: other.providerId);
  }
}
