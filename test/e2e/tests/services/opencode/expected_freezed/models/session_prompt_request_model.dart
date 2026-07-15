// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_prompt_request_model.freezed.dart';
part 'session_prompt_request_model.g.dart';

@Freezed()
abstract class SessionPromptRequestModel with _$SessionPromptRequestModel {
  const factory SessionPromptRequestModel({
    @JsonKey(name: 'providerID') required String providerId,
    @JsonKey(name: 'modelID') required String modelId,
  }) = _SessionPromptRequestModel;

  Map<String, dynamic> toJson() =>
      _$SessionPromptRequestModelToJson(this as _SessionPromptRequestModel);
  factory SessionPromptRequestModel.fromJson(Map<String, Object?> json) =>
      _$SessionPromptRequestModelFromJson(json);
}

extension SessionPromptRequestModelMergeX on SessionPromptRequestModel {
  /// Returns a new [SessionPromptRequestModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionPromptRequestModel merge(SessionPromptRequestModel other) {
    return copyWith(providerId: other.providerId, modelId: other.modelId);
  }
}
