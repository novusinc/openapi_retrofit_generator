// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_request.freezed.dart';
part 'create_user_request.g.dart';

@Freezed()
abstract class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({required String name, String? email}) =
      _CreateUserRequest;

  Map<String, dynamic> toJson() =>
      _$CreateUserRequestToJson(this as _CreateUserRequest);
  factory CreateUserRequest.fromJson(Map<String, Object?> json) =>
      _$CreateUserRequestFromJson(json);
}

extension CreateUserRequestMergeX on CreateUserRequest {
  /// Returns a new [CreateUserRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateUserRequest merge(CreateUserRequest other) {
    return copyWith(name: other.name, email: other.email);
  }
}
