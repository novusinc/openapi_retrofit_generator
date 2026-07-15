// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'facets.dart';
import 'model38.dart';

part 'darwin_core_occurrences.freezed.dart';
part 'darwin_core_occurrences.g.dart';

@Freezed()
abstract class DarwinCoreOccurrences with _$DarwinCoreOccurrences {
  const factory DarwinCoreOccurrences({
    required Model38 results,
    required num offset,
    required num limit,
    required bool endOfRecords,
    num? count,
    Facets? facets,
    num? startTime,
  }) = _DarwinCoreOccurrences;

  Map<String, dynamic> toJson() =>
      _$DarwinCoreOccurrencesToJson(this as _DarwinCoreOccurrences);
  factory DarwinCoreOccurrences.fromJson(Map<String, Object?> json) =>
      _$DarwinCoreOccurrencesFromJson(json);
}

extension DarwinCoreOccurrencesMergeX on DarwinCoreOccurrences {
  /// Returns a new [DarwinCoreOccurrences] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DarwinCoreOccurrences merge(DarwinCoreOccurrences other) {
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
