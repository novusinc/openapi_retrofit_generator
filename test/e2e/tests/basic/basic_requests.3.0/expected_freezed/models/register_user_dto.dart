// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_dto.freezed.dart';
part 'register_user_dto.g.dart';

@Freezed()
abstract class RegisterUserDto with _$RegisterUserDto {
  const factory RegisterUserDto({
    required String email,
    required String name,
    required String password,
  }) = _RegisterUserDto;

  Map<String, dynamic> toJson() =>
      _$RegisterUserDtoToJson(this as _RegisterUserDto);
  factory RegisterUserDto.fromJson(Map<String, Object?> json) =>
      _$RegisterUserDtoFromJson(json);
}

extension RegisterUserDtoMergeX on RegisterUserDto {
  /// Returns a new [RegisterUserDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  RegisterUserDto merge(RegisterUserDto other) {
    return copyWith(
      email: other.email,
      name: other.name,
      password: other.password,
    );
  }
}
