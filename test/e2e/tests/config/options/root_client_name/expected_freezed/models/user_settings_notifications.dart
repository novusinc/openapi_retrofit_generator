// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings_notifications.freezed.dart';
part 'user_settings_notifications.g.dart';

@Freezed()
abstract class UserSettingsNotifications with _$UserSettingsNotifications {
  const factory UserSettingsNotifications({
    @Default(true) bool email,
    @Default(false) bool push,
    @Default(false) bool sms,
  }) = _UserSettingsNotifications;

  Map<String, dynamic> toJson() =>
      _$UserSettingsNotificationsToJson(this as _UserSettingsNotifications);
  factory UserSettingsNotifications.fromJson(Map<String, Object?> json) =>
      _$UserSettingsNotificationsFromJson(json);
}

extension UserSettingsNotificationsMergeX on UserSettingsNotifications {
  /// Returns a new [UserSettingsNotifications] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserSettingsNotifications merge(UserSettingsNotifications other) {
    return copyWith(email: other.email, push: other.push, sms: other.sms);
  }
}
