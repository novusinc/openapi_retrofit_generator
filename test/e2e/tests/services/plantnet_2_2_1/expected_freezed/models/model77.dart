// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model76.dart';
import 'type_model.dart';

part 'model77.freezed.dart';
part 'model77.g.dart';

/// Geojson of extent area inside the case study area in epsg:4326, following the right-hand rule
@Freezed()
abstract class Model77 with _$Model77 {
  const factory Model77({
    required TypeModel type,
    required Model76 coordinates,
  }) = _Model77;

  Map<String, dynamic> toJson() => _$Model77ToJson(this as _Model77);
  factory Model77.fromJson(Map<String, Object?> json) =>
      _$Model77FromJson(json);
}

extension Model77MergeX on Model77 {
  /// Returns a new [Model77] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model77 merge(Model77 other) {
    return copyWith(type: other.type, coordinates: other.coordinates);
  }
}
