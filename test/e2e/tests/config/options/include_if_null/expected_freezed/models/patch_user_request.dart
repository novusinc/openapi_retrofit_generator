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
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? username,
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) int? age,
    @JsonKey(includeIfNull: false) String? bio,
    @JsonKey(includeIfNull: false) UserSettings? settings,
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
