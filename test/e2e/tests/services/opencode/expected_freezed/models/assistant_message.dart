// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'assistant_message_error.dart';
import 'assistant_message_path.dart';
import 'assistant_message_time.dart';
import 'assistant_message_tokens.dart';

part 'assistant_message.freezed.dart';
part 'assistant_message.g.dart';

@Freezed()
abstract class AssistantMessage with _$AssistantMessage {
  const factory AssistantMessage({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    required String role,
    required AssistantMessageTime time,
    required List<String> system,
    @JsonKey(name: 'modelID') required String modelId,
    @JsonKey(name: 'providerID') required String providerId,
    required String mode,
    required AssistantMessagePath path,
    required num cost,
    required AssistantMessageTokens tokens,
    AssistantMessageError? error,
    bool? summary,
  }) = _AssistantMessage;

  Map<String, dynamic> toJson() =>
      _$AssistantMessageToJson(this as _AssistantMessage);
  factory AssistantMessage.fromJson(Map<String, Object?> json) =>
      _$AssistantMessageFromJson(json);
}

extension AssistantMessageMergeX on AssistantMessage {
  /// Returns a new [AssistantMessage] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AssistantMessage merge(AssistantMessage other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      role: other.role,
      time: other.time,
      error: other.error,
      system: other.system,
      modelId: other.modelId,
      providerId: other.providerId,
      mode: other.mode,
      path: other.path,
      summary: other.summary,
      cost: other.cost,
      tokens: other.tokens,
    );
  }
}
