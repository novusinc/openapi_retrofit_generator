// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user2_request.freezed.dart';
part 'create_user2_request.g.dart';

@Freezed()
abstract class CreateUser2Request with _$CreateUser2Request {
  const factory CreateUser2Request({
    required String username,
    required String role,
  }) = _CreateUser2Request;

  Map<String, dynamic> toJson() =>
      _$CreateUser2RequestToJson(this as _CreateUser2Request);
  factory CreateUser2Request.fromJson(Map<String, Object?> json) =>
      _$CreateUser2RequestFromJson(json);
}

extension CreateUser2RequestMergeX on CreateUser2Request {
  /// Returns a new [CreateUser2Request] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateUser2Request merge(CreateUser2Request other) {
    return copyWith(username: other.username, role: other.role);
  }
}
