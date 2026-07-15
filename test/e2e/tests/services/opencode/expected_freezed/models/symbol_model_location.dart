// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'range.dart';

part 'symbol_model_location.freezed.dart';
part 'symbol_model_location.g.dart';

@Freezed()
abstract class SymbolModelLocation with _$SymbolModelLocation {
  const factory SymbolModelLocation({
    required String uri,
    required Range range,
  }) = _SymbolModelLocation;

  Map<String, dynamic> toJson() =>
      _$SymbolModelLocationToJson(this as _SymbolModelLocation);
  factory SymbolModelLocation.fromJson(Map<String, Object?> json) =>
      _$SymbolModelLocationFromJson(json);
}

extension SymbolModelLocationMergeX on SymbolModelLocation {
  /// Returns a new [SymbolModelLocation] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SymbolModelLocation merge(SymbolModelLocation other) {
    return copyWith(uri: other.uri, range: other.range);
  }
}
