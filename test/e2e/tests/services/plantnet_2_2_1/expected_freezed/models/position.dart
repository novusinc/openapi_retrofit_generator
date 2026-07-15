// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';
part 'position.g.dart';

@Freezed()
abstract class Position with _$Position {
  const factory Position({required num lat, required num lon}) = _Position;

  Map<String, dynamic> toJson() => _$PositionToJson(this as _Position);
  factory Position.fromJson(Map<String, Object?> json) =>
      _$PositionFromJson(json);
}

extension PositionMergeX on Position {
  /// Returns a new [Position] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Position merge(Position other) {
    return copyWith(lat: other.lat, lon: other.lon);
  }
}
