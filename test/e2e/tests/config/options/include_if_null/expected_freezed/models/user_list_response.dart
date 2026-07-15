// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'user_list_response.freezed.dart';
part 'user_list_response.g.dart';

@Freezed()
abstract class UserListResponse with _$UserListResponse {
  const factory UserListResponse({
    required List<User> users,
    required int total,
    @JsonKey(includeIfNull: false) int? page,
    @JsonKey(includeIfNull: false) int? limit,
  }) = _UserListResponse;

  Map<String, dynamic> toJson() =>
      _$UserListResponseToJson(this as _UserListResponse);
  factory UserListResponse.fromJson(Map<String, Object?> json) =>
      _$UserListResponseFromJson(json);
}

extension UserListResponseMergeX on UserListResponse {
  /// Returns a new [UserListResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserListResponse merge(UserListResponse other) {
    return copyWith(
      users: other.users,
      total: other.total,
      page: other.page,
      limit: other.limit,
    );
  }
}
