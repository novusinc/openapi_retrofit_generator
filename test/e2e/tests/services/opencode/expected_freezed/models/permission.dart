// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'permission_time.dart';

part 'permission.freezed.dart';
part 'permission.g.dart';

@Freezed()
abstract class Permission with _$Permission {
  const factory Permission({
    required String id,
    required String type,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String title,
    required Map<String, dynamic> metadata,
    required PermissionTime time,
    dynamic pattern,
    @JsonKey(name: 'callID') String? callId,
  }) = _Permission;

  Map<String, dynamic> toJson() => _$PermissionToJson(this as _Permission);
  factory Permission.fromJson(Map<String, Object?> json) =>
      _$PermissionFromJson(json);
}

extension PermissionMergeX on Permission {
  /// Returns a new [Permission] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Permission merge(Permission other) {
    return copyWith(
      id: other.id,
      type: other.type,
      pattern: other.pattern,
      sessionId: other.sessionId,
      messageId: other.messageId,
      callId: other.callId,
      title: other.title,
      metadata: other.metadata,
      time: other.time,
    );
  }
}
