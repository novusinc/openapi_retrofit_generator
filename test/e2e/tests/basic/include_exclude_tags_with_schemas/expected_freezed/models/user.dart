// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_profile.dart';
import 'user_role_role.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
abstract class User with _$User {
  const factory User({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) UserRoleRole? role,
    @JsonKey(includeIfNull: false) UserProfile? profile,
  }) = _User;

  Map<String, dynamic> toJson() => _$UserToJson(this as _User);
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

extension UserMergeX on User {
  /// Returns a new [User] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  User merge(User other) {
    return copyWith(
      id: other.id,
      email: other.email,
      role: other.role,
      profile: other.profile,
    );
  }
}
