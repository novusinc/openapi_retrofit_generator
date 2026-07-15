// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation.freezed.dart';
part 'geolocation.g.dart';

@Freezed()
abstract class Geolocation with _$Geolocation {
  const factory Geolocation({
    required num lat,
    required num lon,
    required String place,
    num? accuracy,
  }) = _Geolocation;

  Map<String, dynamic> toJson() => _$GeolocationToJson(this as _Geolocation);
  factory Geolocation.fromJson(Map<String, Object?> json) =>
      _$GeolocationFromJson(json);
}

extension GeolocationMergeX on Geolocation {
  /// Returns a new [Geolocation] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Geolocation merge(Geolocation other) {
    return copyWith(
      lat: other.lat,
      lon: other.lon,
      place: other.place,
      accuracy: other.accuracy,
    );
  }
}
