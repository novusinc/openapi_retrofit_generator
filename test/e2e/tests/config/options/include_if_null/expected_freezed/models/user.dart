// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';
import 'user_role.dart';
import 'user_settings.dart';
import 'user_status.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
abstract class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String username,
    required UserRole role,
    required DateTime createdAt,
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) int? age,
    @JsonKey(includeIfNull: false) UserStatus? status,
    @JsonKey(includeIfNull: false) String? avatar,
    @JsonKey(includeIfNull: false) String? bio,
    @JsonKey(includeIfNull: false) UserSettings? settings,
    @JsonKey(includeIfNull: false) Map<String, String>? metadata,

    /// Circular reference to User
    @JsonKey(includeIfNull: false) List<User>? friends,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) DateTime? deletedAt,
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
      username: other.username,
      firstName: other.firstName,
      lastName: other.lastName,
      age: other.age,
      role: other.role,
      status: other.status,
      avatar: other.avatar,
      bio: other.bio,
      settings: other.settings,
      metadata: other.metadata,
      friends: other.friends,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      deletedAt: other.deletedAt,
    );
  }
}
