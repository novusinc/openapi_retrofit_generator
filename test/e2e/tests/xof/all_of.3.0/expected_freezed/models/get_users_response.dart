// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cursor_paginated_dto.dart';
import 'user_dto.dart';

part 'get_users_response.freezed.dart';
part 'get_users_response.g.dart';

@Freezed()
abstract class GetUsersResponse with _$GetUsersResponse {
  const factory GetUsersResponse({
    @JsonKey(includeIfNull: true) required num? nextCursor,
    @JsonKey(includeIfNull: true) required String? previousCursor,
    required List<UserDto> data,
  }) = _GetUsersResponse;

  Map<String, dynamic> toJson() =>
      _$GetUsersResponseToJson(this as _GetUsersResponse);
  factory GetUsersResponse.fromJson(Map<String, Object?> json) =>
      _$GetUsersResponseFromJson(json);
}

extension GetUsersResponseMergeX on GetUsersResponse {
  /// Returns a new [GetUsersResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetUsersResponse merge(GetUsersResponse other) {
    return copyWith(
      nextCursor: other.nextCursor,
      previousCursor: other.previousCursor,
      data: other.data,
    );
  }
}
