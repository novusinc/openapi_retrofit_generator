// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@Freezed()
abstract class Result with _$Result {
  const factory Result({
    @JsonKey(includeIfNull: false) bool? success,
    @JsonKey(includeIfNull: false) dynamic data,
    @JsonKey(includeIfNull: false) Status? status,
  }) = _Result;

  Map<String, dynamic> toJson() => _$ResultToJson(this as _Result);
  factory Result.fromJson(Map<String, Object?> json) => _$ResultFromJson(json);
}

extension ResultMergeX on Result {
  /// Returns a new [Result] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Result merge(Result other) {
    return copyWith(
      success: other.success,
      data: other.data,
      status: other.status,
    );
  }
}
