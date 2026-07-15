// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_request.freezed.dart';
part 'update_user_request.g.dart';

@Freezed()
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required String email,
    required String username,
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) int? age,
    @JsonKey(includeIfNull: false) String? bio,
  }) = _UpdateUserRequest;

  Map<String, dynamic> toJson() =>
      _$UpdateUserRequestToJson(this as _UpdateUserRequest);
  factory UpdateUserRequest.fromJson(Map<String, Object?> json) =>
      _$UpdateUserRequestFromJson(json);
}

extension UpdateUserRequestMergeX on UpdateUserRequest {
  /// Returns a new [UpdateUserRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UpdateUserRequest merge(UpdateUserRequest other) {
    return copyWith(
      email: other.email,
      username: other.username,
      firstName: other.firstName,
      lastName: other.lastName,
      age: other.age,
      bio: other.bio,
    );
  }
}
