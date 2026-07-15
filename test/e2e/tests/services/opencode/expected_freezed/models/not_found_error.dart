// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'not_found_error_data.dart';

part 'not_found_error.freezed.dart';
part 'not_found_error.g.dart';

@Freezed()
abstract class NotFoundError with _$NotFoundError {
  const factory NotFoundError({
    required String name,
    required NotFoundErrorData data,
  }) = _NotFoundError;

  Map<String, dynamic> toJson() =>
      _$NotFoundErrorToJson(this as _NotFoundError);
  factory NotFoundError.fromJson(Map<String, Object?> json) =>
      _$NotFoundErrorFromJson(json);
}

extension NotFoundErrorMergeX on NotFoundError {
  /// Returns a new [NotFoundError] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  NotFoundError merge(NotFoundError other) {
    return copyWith(name: other.name, data: other.data);
  }
}
