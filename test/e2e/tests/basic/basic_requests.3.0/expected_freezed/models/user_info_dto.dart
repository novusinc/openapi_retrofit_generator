// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_dto.freezed.dart';
part 'user_info_dto.g.dart';

@Freezed()
abstract class UserInfoDto with _$UserInfoDto {
  const factory UserInfoDto({
    required String email,
    required String name,
    required String phone,
  }) = _UserInfoDto;

  Map<String, dynamic> toJson() => _$UserInfoDtoToJson(this as _UserInfoDto);
  factory UserInfoDto.fromJson(Map<String, Object?> json) =>
      _$UserInfoDtoFromJson(json);
}

extension UserInfoDtoMergeX on UserInfoDto {
  /// Returns a new [UserInfoDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserInfoDto merge(UserInfoDto other) {
    return copyWith(email: other.email, name: other.name, phone: other.phone);
  }
}
