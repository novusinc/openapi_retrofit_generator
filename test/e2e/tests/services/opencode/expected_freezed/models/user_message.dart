// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_message_time.dart';

part 'user_message.freezed.dart';
part 'user_message.g.dart';

@Freezed()
abstract class UserMessage with _$UserMessage {
  const factory UserMessage({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    required String role,
    required UserMessageTime time,
  }) = _UserMessage;

  Map<String, dynamic> toJson() => _$UserMessageToJson(this as _UserMessage);
  factory UserMessage.fromJson(Map<String, Object?> json) =>
      _$UserMessageFromJson(json);
}

extension UserMessageMergeX on UserMessage {
  /// Returns a new [UserMessage] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserMessage merge(UserMessage other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      role: other.role,
      time: other.time,
    );
  }
}
