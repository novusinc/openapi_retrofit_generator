// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'legacy_user.freezed.dart';
part 'legacy_user.g.dart';

@Freezed()
abstract class LegacyUser with _$LegacyUser {
  const factory LegacyUser({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) String? email,
  }) = _LegacyUser;

  Map<String, dynamic> toJson() => _$LegacyUserToJson(this as _LegacyUser);
  factory LegacyUser.fromJson(Map<String, Object?> json) =>
      _$LegacyUserFromJson(json);
}

extension LegacyUserMergeX on LegacyUser {
  /// Returns a new [LegacyUser] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  LegacyUser merge(LegacyUser other) {
    return copyWith(id: other.id, name: other.name, email: other.email);
  }
}
