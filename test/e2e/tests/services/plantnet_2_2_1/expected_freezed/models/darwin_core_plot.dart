// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'eunis.dart';
import 'model64.dart';
import 'model66.dart';

part 'darwin_core_plot.freezed.dart';
part 'darwin_core_plot.g.dart';

@Freezed()
abstract class DarwinCorePlot with _$DarwinCorePlot {
  const factory DarwinCorePlot({
    required String id,
    required String eventDate,
    required String observedOn,
    required String title,
    required String ownerInstitutionCodeProperty,
    required String basisOfRecord,
    required String type,
    required String license,
    required String rightsHolder,
    required String occurrenceStatus,
    String? description,
    Eunis? eunis,
    String? accessRight,
    num? decimalLatitude,
    num? decimalLongitude,
    num? elevation,
    num? geolocationAccuracy,
    String? geolocationAccuracyInfo,
    Model64? media,
    Model66? species,
  }) = _DarwinCorePlot;

  Map<String, dynamic> toJson() =>
      _$DarwinCorePlotToJson(this as _DarwinCorePlot);
  factory DarwinCorePlot.fromJson(Map<String, Object?> json) =>
      _$DarwinCorePlotFromJson(json);
}

extension DarwinCorePlotMergeX on DarwinCorePlot {
  /// Returns a new [DarwinCorePlot] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DarwinCorePlot merge(DarwinCorePlot other) {
    return copyWith(
      id: other.id,
      eventDate: other.eventDate,
      observedOn: other.observedOn,
      title: other.title,
      description: other.description,
      eunis: other.eunis,
      ownerInstitutionCodeProperty: other.ownerInstitutionCodeProperty,
      basisOfRecord: other.basisOfRecord,
      type: other.type,
      accessRight: other.accessRight,
      license: other.license,
      rightsHolder: other.rightsHolder,
      occurrenceStatus: other.occurrenceStatus,
      decimalLatitude: other.decimalLatitude,
      decimalLongitude: other.decimalLongitude,
      elevation: other.elevation,
      geolocationAccuracy: other.geolocationAccuracy,
      geolocationAccuracyInfo: other.geolocationAccuracyInfo,
      media: other.media,
      species: other.species,
    );
  }
}
