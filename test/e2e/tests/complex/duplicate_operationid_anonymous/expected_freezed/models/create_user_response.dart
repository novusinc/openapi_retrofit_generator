// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_response.freezed.dart';
part 'create_user_response.g.dart';

@Freezed()
abstract class CreateUserResponse with _$CreateUserResponse {
  const factory CreateUserResponse({int? id}) = _CreateUserResponse;

  Map<String, dynamic> toJson() =>
      _$CreateUserResponseToJson(this as _CreateUserResponse);
  factory CreateUserResponse.fromJson(Map<String, Object?> json) =>
      _$CreateUserResponseFromJson(json);
}

extension CreateUserResponseMergeX on CreateUserResponse {
  /// Returns a new [CreateUserResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateUserResponse merge(CreateUserResponse other) {
    return copyWith(id: other.id);
  }
}
