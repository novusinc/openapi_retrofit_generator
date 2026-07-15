// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_settings_privacy_profile_visibility_profile_visibility.dart';

part 'user_settings_privacy.freezed.dart';
part 'user_settings_privacy.g.dart';

@Freezed()
abstract class UserSettingsPrivacy with _$UserSettingsPrivacy {
  const factory UserSettingsPrivacy({
    @Default(UserSettingsPrivacyProfileVisibilityProfileVisibility.public)
    UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility,
    @Default(false) bool showEmail,
  }) = _UserSettingsPrivacy;

  Map<String, dynamic> toJson() =>
      _$UserSettingsPrivacyToJson(this as _UserSettingsPrivacy);
  factory UserSettingsPrivacy.fromJson(Map<String, Object?> json) =>
      _$UserSettingsPrivacyFromJson(json);
}

extension UserSettingsPrivacyMergeX on UserSettingsPrivacy {
  /// Returns a new [UserSettingsPrivacy] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserSettingsPrivacy merge(UserSettingsPrivacy other) {
    return copyWith(
      profileVisibility: other.profileVisibility,
      showEmail: other.showEmail,
    );
  }
}
