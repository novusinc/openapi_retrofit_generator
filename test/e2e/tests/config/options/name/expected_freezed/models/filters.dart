// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'filters_date_range.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

@Freezed()
abstract class Filters with _$Filters {
  const factory Filters({
    String? authorId,
    List<String>? tags,
    FiltersDateRange? dateRange,
  }) = _Filters;

  Map<String, dynamic> toJson() => _$FiltersToJson(this as _Filters);
  factory Filters.fromJson(Map<String, Object?> json) =>
      _$FiltersFromJson(json);
}

extension FiltersMergeX on Filters {
  /// Returns a new [Filters] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Filters merge(Filters other) {
    return copyWith(
      authorId: other.authorId,
      tags: other.tags,
      dateRange: other.dateRange,
    );
  }
}
