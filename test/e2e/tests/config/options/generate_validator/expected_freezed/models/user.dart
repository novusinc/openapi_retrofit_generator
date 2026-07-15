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
    String? firstName,
    String? lastName,
    int? age,
    UserStatus? status,
    String? avatar,
    String? bio,
    UserSettings? settings,
    Map<String, String>? metadata,

    /// Circular reference to User
    List<User>? friends,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  Map<String, dynamic> toJson() => _$UserToJson(this as _User);
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
  static const String emailPattern =
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
  static const int usernameMinLength = 3;
  static const int usernameMaxLength = 30;
  static const String usernamePattern = r"^[a-zA-Z0-9_-]+$";
  static const int firstNameMaxLength = 50;
  static const int lastNameMaxLength = 50;
  static const int ageMin = 18;
  static const int ageMax = 120;
  static const int bioMaxLength = 500;
}

extension UserValidationX on User {
  bool validate() {
    try {
      if (!RegExp(User.emailPattern).hasMatch(email)) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (username.length < User.usernameMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (username.length > User.usernameMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (!RegExp(User.usernamePattern).hasMatch(username)) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (firstName != null && firstName!.length > User.firstNameMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (lastName != null && lastName!.length > User.lastNameMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (age != null && age! < User.ageMin) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (age != null && age! > User.ageMax) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (bio != null && bio!.length > User.bioMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    return true;
  }
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
