// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'unknown_error_data.dart';

part 'unknown_error.freezed.dart';
part 'unknown_error.g.dart';

@Freezed()
abstract class UnknownError with _$UnknownError {
  const factory UnknownError({
    required String name,
    required UnknownErrorData data,
  }) = _UnknownError;

  Map<String, dynamic> toJson() => _$UnknownErrorToJson(this as _UnknownError);
  factory UnknownError.fromJson(Map<String, Object?> json) =>
      _$UnknownErrorFromJson(json);
}

extension UnknownErrorMergeX on UnknownError {
  /// Returns a new [UnknownError] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UnknownError merge(UnknownError other) {
    return copyWith(name: other.name, data: other.data);
  }
}
