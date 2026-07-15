// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bad_request_error.freezed.dart';
part 'bad_request_error.g.dart';

@Freezed()
abstract class BadRequestError with _$BadRequestError {
  const factory BadRequestError({
    required dynamic data,
    required List<Map<String, dynamic>> errors,
    required bool success,
  }) = _BadRequestError;

  Map<String, dynamic> toJson() =>
      _$BadRequestErrorToJson(this as _BadRequestError);
  factory BadRequestError.fromJson(Map<String, Object?> json) =>
      _$BadRequestErrorFromJson(json);
}

extension BadRequestErrorMergeX on BadRequestError {
  /// Returns a new [BadRequestError] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  BadRequestError merge(BadRequestError other) {
    return copyWith(
      data: other.data,
      errors: other.errors,
      success: other.success,
    );
  }
}
