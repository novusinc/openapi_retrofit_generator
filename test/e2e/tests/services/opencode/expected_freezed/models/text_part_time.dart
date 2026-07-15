// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_part_time.freezed.dart';
part 'text_part_time.g.dart';

@Freezed()
abstract class TextPartTime with _$TextPartTime {
  const factory TextPartTime({required num start, num? end}) = _TextPartTime;

  Map<String, dynamic> toJson() => _$TextPartTimeToJson(this as _TextPartTime);
  factory TextPartTime.fromJson(Map<String, Object?> json) =>
      _$TextPartTimeFromJson(json);
}

extension TextPartTimeMergeX on TextPartTime {
  /// Returns a new [TextPartTime] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TextPartTime merge(TextPartTime other) {
    return copyWith(start: other.start, end: other.end);
  }
}
