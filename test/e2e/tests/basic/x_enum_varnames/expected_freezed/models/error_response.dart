// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_code.dart';
import 'http_status_code.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@Freezed()
abstract class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    required ErrorCode error,
    @JsonKey(name: 'error_description') required String errorDescription,
    @JsonKey(name: 'status_code') HttpStatusCode? statusCode,
  }) = _ErrorResponse;

  Map<String, dynamic> toJson() =>
      _$ErrorResponseToJson(this as _ErrorResponse);
  factory ErrorResponse.fromJson(Map<String, Object?> json) =>
      _$ErrorResponseFromJson(json);
}

extension ErrorResponseMergeX on ErrorResponse {
  /// Returns a new [ErrorResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ErrorResponse merge(ErrorResponse other) {
    return copyWith(
      error: other.error,
      errorDescription: other.errorDescription,
      statusCode: other.statusCode,
    );
  }
}
