// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'other_results.dart';
import 'predicted_organs.dart';
import 'query_model.dart';
import 'results.dart';

part 'identification_result.freezed.dart';
part 'identification_result.g.dart';

@Freezed()
abstract class IdentificationResult with _$IdentificationResult {
  const factory IdentificationResult({
    QueryModel? query,
    String? language,
    String? preferedReferential,
    String? switchToProject,
    String? bestMatch,
    Results? results,
    num? remainingIdentificationRequests,
    String? version,
    PredictedOrgans? predictedOrgans,
    OtherResults? otherResults,
  }) = _IdentificationResult;

  Map<String, dynamic> toJson() =>
      _$IdentificationResultToJson(this as _IdentificationResult);
  factory IdentificationResult.fromJson(Map<String, Object?> json) =>
      _$IdentificationResultFromJson(json);
}

extension IdentificationResultMergeX on IdentificationResult {
  /// Returns a new [IdentificationResult] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  IdentificationResult merge(IdentificationResult other) {
    return copyWith(
      query: other.query,
      language: other.language,
      preferedReferential: other.preferedReferential,
      switchToProject: other.switchToProject,
      bestMatch: other.bestMatch,
      results: other.results,
      remainingIdentificationRequests: other.remainingIdentificationRequests,
      version: other.version,
      predictedOrgans: other.predictedOrgans,
      otherResults: other.otherResults,
    );
  }
}
