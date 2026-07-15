// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unknown_error_data.freezed.dart';
part 'unknown_error_data.g.dart';

@Freezed()
abstract class UnknownErrorData with _$UnknownErrorData {
  const factory UnknownErrorData({required String message}) = _UnknownErrorData;

  Map<String, dynamic> toJson() =>
      _$UnknownErrorDataToJson(this as _UnknownErrorData);
  factory UnknownErrorData.fromJson(Map<String, Object?> json) =>
      _$UnknownErrorDataFromJson(json);
}

extension UnknownErrorDataMergeX on UnknownErrorData {
  /// Returns a new [UnknownErrorData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UnknownErrorData merge(UnknownErrorData other) {
    return copyWith(message: other.message);
  }
}
