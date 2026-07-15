// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_settings.dart';

part 'patch_user_request.freezed.dart';
part 'patch_user_request.g.dart';

@Freezed()
abstract class PatchUserRequest with _$PatchUserRequest {
  const factory PatchUserRequest({
    String? email,
    String? username,
    String? firstName,
    String? lastName,
    int? age,
    String? bio,
    UserSettings? settings,
  }) = _PatchUserRequest;

  Map<String, dynamic> toJson() =>
      _$PatchUserRequestToJson(this as _PatchUserRequest);
  factory PatchUserRequest.fromJson(Map<String, Object?> json) =>
      _$PatchUserRequestFromJson(json);
}

extension PatchUserRequestMergeX on PatchUserRequest {
  /// Returns a new [PatchUserRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PatchUserRequest merge(PatchUserRequest other) {
    return copyWith(
      email: other.email,
      username: other.username,
      firstName: other.firstName,
      lastName: other.lastName,
      age: other.age,
      bio: other.bio,
      settings: other.settings,
    );
  }
}
