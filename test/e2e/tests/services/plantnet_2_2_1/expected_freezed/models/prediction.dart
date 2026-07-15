// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common_names.dart';
import 'gbif.dart';
import 'model45.dart';
import 'model47.dart';
import 'prediction.dart';

part 'prediction.freezed.dart';
part 'prediction.g.dart';

@Freezed()
abstract class Prediction with _$Prediction {
  const factory Prediction({
    required String name,
    required String author,
    required String family,
    required CommonNames commonNames,
    required Model47 images,
    required Prediction prediction,
    String? genus,
    Gbif? gbif,
    Model45? iucn,
    num? observationsCount,
    bool? observed,
  }) = _Prediction;

  Map<String, dynamic> toJson() => _$PredictionToJson(this as _Prediction);
  factory Prediction.fromJson(Map<String, Object?> json) =>
      _$PredictionFromJson(json);
}

extension PredictionMergeX on Prediction {
  /// Returns a new [Prediction] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Prediction merge(Prediction other) {
    return copyWith(
      name: other.name,
      author: other.author,
      family: other.family,
      genus: other.genus,
      gbif: other.gbif,
      iucn: other.iucn,
      commonNames: other.commonNames,
      images: other.images,
      observationsCount: other.observationsCount,
      observed: other.observed,
      prediction: other.prediction,
    );
  }
}
