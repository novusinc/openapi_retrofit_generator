// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'facets.dart';
import 'model67.dart';

part 'darwin_core_plots.freezed.dart';
part 'darwin_core_plots.g.dart';

@Freezed()
abstract class DarwinCorePlots with _$DarwinCorePlots {
  const factory DarwinCorePlots({
    required Model67 results,
    required num offset,
    required num limit,
    required bool endOfRecords,
    num? count,
    Facets? facets,
    num? startTime,
  }) = _DarwinCorePlots;

  Map<String, dynamic> toJson() =>
      _$DarwinCorePlotsToJson(this as _DarwinCorePlots);
  factory DarwinCorePlots.fromJson(Map<String, Object?> json) =>
      _$DarwinCorePlotsFromJson(json);
}

extension DarwinCorePlotsMergeX on DarwinCorePlots {
  /// Returns a new [DarwinCorePlots] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DarwinCorePlots merge(DarwinCorePlots other) {
    return copyWith(
      results: other.results,
      offset: other.offset,
      limit: other.limit,
      endOfRecords: other.endOfRecords,
      count: other.count,
      facets: other.facets,
      startTime: other.startTime,
    );
  }
}
