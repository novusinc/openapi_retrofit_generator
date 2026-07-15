// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'range_end.dart';
import 'range_start.dart';

part 'range.freezed.dart';
part 'range.g.dart';

@Freezed()
abstract class Range with _$Range {
  const factory Range({required RangeStart start, required RangeEnd end}) =
      _Range;

  Map<String, dynamic> toJson() => _$RangeToJson(this as _Range);
  factory Range.fromJson(Map<String, Object?> json) => _$RangeFromJson(json);
}

extension RangeMergeX on Range {
  /// Returns a new [Range] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Range merge(Range other) {
    return copyWith(start: other.start, end: other.end);
  }
}
