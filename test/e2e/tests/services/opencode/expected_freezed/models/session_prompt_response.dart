// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'assistant_message.dart';
import 'part_model.dart';

part 'session_prompt_response.freezed.dart';
part 'session_prompt_response.g.dart';

@Freezed()
abstract class SessionPromptResponse with _$SessionPromptResponse {
  const factory SessionPromptResponse({
    required AssistantMessage info,
    required List<PartModel> parts,
  }) = _SessionPromptResponse;

  Map<String, dynamic> toJson() =>
      _$SessionPromptResponseToJson(this as _SessionPromptResponse);
  factory SessionPromptResponse.fromJson(Map<String, Object?> json) =>
      _$SessionPromptResponseFromJson(json);
}

extension SessionPromptResponseMergeX on SessionPromptResponse {
  /// Returns a new [SessionPromptResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionPromptResponse merge(SessionPromptResponse other) {
    return copyWith(info: other.info, parts: other.parts);
  }
}
