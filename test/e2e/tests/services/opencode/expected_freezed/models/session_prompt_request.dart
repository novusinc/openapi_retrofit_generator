// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'session_prompt_request_model.dart';
import 'session_prompt_request_acp_connection.dart';
import 'session_prompt_request_parts.dart';

part 'session_prompt_request.freezed.dart';
part 'session_prompt_request.g.dart';

@Freezed()
abstract class SessionPromptRequest with _$SessionPromptRequest {
  const factory SessionPromptRequest({
    required List<SessionPromptRequestParts> parts,
    @JsonKey(name: 'messageID') String? messageId,
    SessionPromptRequestModel? model,
    String? agent,
    String? system,
    Map<String, bool>? tools,
    SessionPromptRequestAcpConnection? acpConnection,
  }) = _SessionPromptRequest;

  Map<String, dynamic> toJson() =>
      _$SessionPromptRequestToJson(this as _SessionPromptRequest);
  factory SessionPromptRequest.fromJson(Map<String, Object?> json) =>
      _$SessionPromptRequestFromJson(json);
}

extension SessionPromptRequestMergeX on SessionPromptRequest {
  /// Returns a new [SessionPromptRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionPromptRequest merge(SessionPromptRequest other) {
    return copyWith(
      messageId: other.messageId,
      model: other.model,
      agent: other.agent,
      system: other.system,
      tools: other.tools,
      acpConnection: other.acpConnection,
      parts: other.parts,
    );
  }
}
