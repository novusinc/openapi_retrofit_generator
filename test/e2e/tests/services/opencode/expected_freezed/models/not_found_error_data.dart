// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'not_found_error_data.freezed.dart';
part 'not_found_error_data.g.dart';

@Freezed()
abstract class NotFoundErrorData with _$NotFoundErrorData {
  const factory NotFoundErrorData({required String message}) =
      _NotFoundErrorData;

  Map<String, dynamic> toJson() =>
      _$NotFoundErrorDataToJson(this as _NotFoundErrorData);
  factory NotFoundErrorData.fromJson(Map<String, Object?> json) =>
      _$NotFoundErrorDataFromJson(json);
}

extension NotFoundErrorDataMergeX on NotFoundErrorData {
  /// Returns a new [NotFoundErrorData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  NotFoundErrorData merge(NotFoundErrorData other) {
    return copyWith(message: other.message);
  }
}
