// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_date_range.freezed.dart';
part 'filters_date_range.g.dart';

@Freezed()
abstract class FiltersDateRange with _$FiltersDateRange {
  const factory FiltersDateRange({DateTime? from, DateTime? to}) =
      _FiltersDateRange;

  Map<String, dynamic> toJson() =>
      _$FiltersDateRangeToJson(this as _FiltersDateRange);
  factory FiltersDateRange.fromJson(Map<String, Object?> json) =>
      _$FiltersDateRangeFromJson(json);
}

extension FiltersDateRangeMergeX on FiltersDateRange {
  /// Returns a new [FiltersDateRange] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FiltersDateRange merge(FiltersDateRange other) {
    return copyWith(from: other.from, to: other.to);
  }
}
