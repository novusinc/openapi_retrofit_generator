// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinates.dart';
import 'type_model.dart';

part 'extent.freezed.dart';
part 'extent.g.dart';

/// Geojson of extent area inside the case study area in epsg:4326, following the right-hand rule
@Freezed()
abstract class Extent with _$Extent {
  const factory Extent({
    required TypeModel type,
    required Coordinates coordinates,
  }) = _Extent;

  Map<String, dynamic> toJson() => _$ExtentToJson(this as _Extent);
  factory Extent.fromJson(Map<String, Object?> json) => _$ExtentFromJson(json);
}

extension ExtentMergeX on Extent {
  /// Returns a new [Extent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Extent merge(Extent other) {
    return copyWith(type: other.type, coordinates: other.coordinates);
  }
}
