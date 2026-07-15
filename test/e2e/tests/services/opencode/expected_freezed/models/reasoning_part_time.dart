// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reasoning_part_time.freezed.dart';
part 'reasoning_part_time.g.dart';

@Freezed()
abstract class ReasoningPartTime with _$ReasoningPartTime {
  const factory ReasoningPartTime({required num start, num? end}) =
      _ReasoningPartTime;

  Map<String, dynamic> toJson() =>
      _$ReasoningPartTimeToJson(this as _ReasoningPartTime);
  factory ReasoningPartTime.fromJson(Map<String, Object?> json) =>
      _$ReasoningPartTimeFromJson(json);
}

extension ReasoningPartTimeMergeX on ReasoningPartTime {
  /// Returns a new [ReasoningPartTime] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ReasoningPartTime merge(ReasoningPartTime other) {
    return copyWith(start: other.start, end: other.end);
  }
}
