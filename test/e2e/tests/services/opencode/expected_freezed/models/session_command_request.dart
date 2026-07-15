// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_command_request.freezed.dart';
part 'session_command_request.g.dart';

@Freezed()
abstract class SessionCommandRequest with _$SessionCommandRequest {
  const factory SessionCommandRequest({
    required String arguments,
    required String command,
    @JsonKey(name: 'messageID') String? messageId,
    String? agent,
    String? model,
  }) = _SessionCommandRequest;

  Map<String, dynamic> toJson() =>
      _$SessionCommandRequestToJson(this as _SessionCommandRequest);
  factory SessionCommandRequest.fromJson(Map<String, Object?> json) =>
      _$SessionCommandRequestFromJson(json);
}

extension SessionCommandRequestMergeX on SessionCommandRequest {
  /// Returns a new [SessionCommandRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionCommandRequest merge(SessionCommandRequest other) {
    return copyWith(
      messageId: other.messageId,
      agent: other.agent,
      model: other.model,
      arguments: other.arguments,
      command: other.command,
    );
  }
}
