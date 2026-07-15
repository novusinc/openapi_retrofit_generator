// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@Freezed()
abstract class UserDto with _$UserDto {
  const factory UserDto({
    /// The id of the user
    required String id,

    /// The username of the user, can be null.
    @JsonKey(includeIfNull: true) required String? username,
  }) = _UserDto;

  Map<String, dynamic> toJson() => _$UserDtoToJson(this as _UserDto);
  factory UserDto.fromJson(Map<String, Object?> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoMergeX on UserDto {
  /// Returns a new [UserDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserDto merge(UserDto other) {
    return copyWith(id: other.id, username: other.username);
  }
}
