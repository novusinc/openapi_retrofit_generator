// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@Freezed()
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
  }) = _UserProfile;

  Map<String, dynamic> toJson() => _$UserProfileToJson(this as _UserProfile);
  factory UserProfile.fromJson(Map<String, Object?> json) =>
      _$UserProfileFromJson(json);
}

extension UserProfileMergeX on UserProfile {
  /// Returns a new [UserProfile] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserProfile merge(UserProfile other) {
    return copyWith(firstName: other.firstName, lastName: other.lastName);
  }
}
