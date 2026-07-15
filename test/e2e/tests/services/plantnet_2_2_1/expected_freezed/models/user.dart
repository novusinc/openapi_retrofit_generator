// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed()
abstract class User with _$User {
  const factory User({String? id}) = _User;

  Map<String, dynamic> toJson() => _$UserToJson(this as _User);
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

extension UserMergeX on User {
  /// Returns a new [User] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  User merge(User other) {
    return copyWith(id: other.id);
  }
}
