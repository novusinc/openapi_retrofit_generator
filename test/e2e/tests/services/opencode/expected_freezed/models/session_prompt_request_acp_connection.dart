// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_prompt_request_acp_connection.freezed.dart';
part 'session_prompt_request_acp_connection.g.dart';

@Freezed()
abstract class SessionPromptRequestAcpConnection
    with _$SessionPromptRequestAcpConnection {
  const factory SessionPromptRequestAcpConnection({
    required dynamic connection,
    required String sessionId,
  }) = _SessionPromptRequestAcpConnection;

  Map<String, dynamic> toJson() => _$SessionPromptRequestAcpConnectionToJson(
    this as _SessionPromptRequestAcpConnection,
  );
  factory SessionPromptRequestAcpConnection.fromJson(
    Map<String, Object?> json,
  ) => _$SessionPromptRequestAcpConnectionFromJson(json);
}

extension SessionPromptRequestAcpConnectionMergeX
    on SessionPromptRequestAcpConnection {
  /// Returns a new [SessionPromptRequestAcpConnection] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionPromptRequestAcpConnection merge(
    SessionPromptRequestAcpConnection other,
  ) {
    return copyWith(connection: other.connection, sessionId: other.sessionId);
  }
}
