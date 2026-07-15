// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user2_response.freezed.dart';
part 'create_user2_response.g.dart';

@Freezed()
abstract class CreateUser2Response with _$CreateUser2Response {
  const factory CreateUser2Response({int? id, bool? created}) =
      _CreateUser2Response;

  Map<String, dynamic> toJson() =>
      _$CreateUser2ResponseToJson(this as _CreateUser2Response);
  factory CreateUser2Response.fromJson(Map<String, Object?> json) =>
      _$CreateUser2ResponseFromJson(json);
}

extension CreateUser2ResponseMergeX on CreateUser2Response {
  /// Returns a new [CreateUser2Response] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateUser2Response merge(CreateUser2Response other) {
    return copyWith(id: other.id, created: other.created);
  }
}
