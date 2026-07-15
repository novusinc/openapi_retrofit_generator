// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_schedule_detail.freezed.dart';
part 'api_schedule_detail.g.dart';

@Freezed()
abstract class ApiScheduleDetail with _$ApiScheduleDetail {
  const factory ApiScheduleDetail({
    required String startTime,
    required String endTime,
  }) = _ApiScheduleDetail;

  Map<String, dynamic> toJson() =>
      _$ApiScheduleDetailToJson(this as _ApiScheduleDetail);
  factory ApiScheduleDetail.fromJson(Map<String, Object?> json) =>
      _$ApiScheduleDetailFromJson(json);
}

extension ApiScheduleDetailMergeX on ApiScheduleDetail {
  /// Returns a new [ApiScheduleDetail] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiScheduleDetail merge(ApiScheduleDetail other) {
    return copyWith(startTime: other.startTime, endTime: other.endTime);
  }
}
