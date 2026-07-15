// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user3_request.freezed.dart';
part 'create_user3_request.g.dart';

@Freezed()
abstract class CreateUser3Request with _$CreateUser3Request {
  const factory CreateUser3Request({String? guestName}) = _CreateUser3Request;

  Map<String, dynamic> toJson() =>
      _$CreateUser3RequestToJson(this as _CreateUser3Request);
  factory CreateUser3Request.fromJson(Map<String, Object?> json) =>
      _$CreateUser3RequestFromJson(json);
}

extension CreateUser3RequestMergeX on CreateUser3Request {
  /// Returns a new [CreateUser3Request] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateUser3Request merge(CreateUser3Request other) {
    return copyWith(guestName: other.guestName);
  }
}
