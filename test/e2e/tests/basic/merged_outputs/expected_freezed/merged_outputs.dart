// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';

import 'package:dio/dio.dart' hide Headers;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'merged_outputs.freezed.dart';
part 'merged_outputs.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  /// null.
  ///
  /// Name not received - field will be skipped.
  @Headers(<String, String>{'Content-Type': 'text/json'})
  @POST('/api/Auth/register')
  Future<String> postApiAuthRegister({@Body() RegisterUserDto? body});
}

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String? baseUrl}) = _UserClient;

  /// [tags] - tags to filter by.
  ///
  /// [limit] - maximum number of results to return.
  ///
  /// Name not received - field will be skipped.
  @GET('/api/User/info')
  Future<UserInfoDto> getApiUserInfo({
    @Query('tags') List<String>? tags,
    @Query('limit') int? limit,
  });

  /// null.
  ///
  /// Name not received - field will be skipped.
  @MultiPart()
  @PATCH('/api/User/{id}/avatar')
  Future<void> patchApiUserIdAvatar({
    @Part(name: 'avatar') MultipartFile? avatar,
    @Path('id') int? id,
  });
}

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

class RestClient {
  RestClient(Dio dio, {String? baseUrl}) : _dio = dio, _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '';

  AuthClient? _auth;
  UserClient? _user;

  AuthClient get auth => _auth ??= AuthClient(_dio, baseUrl: _baseUrl);

  UserClient get user => _user ??= UserClient(_dio, baseUrl: _baseUrl);
}
