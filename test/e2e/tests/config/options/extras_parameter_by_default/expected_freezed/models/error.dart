// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'error_details.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@Freezed()
abstract class Error with _$Error {
  const factory Error({
    required String code,
    required String message,
    List<ErrorDetails>? details,
    DateTime? timestamp,
    String? requestId,
  }) = _Error;

  Map<String, dynamic> toJson() => _$ErrorToJson(this as _Error);
  factory Error.fromJson(Map<String, Object?> json) => _$ErrorFromJson(json);
}

extension ErrorMergeX on Error {
  /// Returns a new [Error] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Error merge(Error other) {
    return copyWith(
      code: other.code,
      message: other.message,
      details: other.details,
      timestamp: other.timestamp,
      requestId: other.requestId,
    );
  }
}
