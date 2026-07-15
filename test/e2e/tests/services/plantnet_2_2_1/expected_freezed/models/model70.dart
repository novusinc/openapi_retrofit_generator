// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'extent.dart';

part 'model70.freezed.dart';
part 'model70.g.dart';

@Freezed()
abstract class Model70 with _$Model70 {
  const factory Model70({
    required Extent extent,

    /// Clip extent from raster if true (slower) else get inside tile only (faster but less accurate
    @JsonKey(name: 'exact_match') @Default(false) bool exactMatch,
  }) = _Model70;

  Map<String, dynamic> toJson() => _$Model70ToJson(this as _Model70);
  factory Model70.fromJson(Map<String, Object?> json) =>
      _$Model70FromJson(json);
}

extension Model70MergeX on Model70 {
  /// Returns a new [Model70] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model70 merge(Model70 other) {
    return copyWith(extent: other.extent, exactMatch: other.exactMatch);
  }
}
