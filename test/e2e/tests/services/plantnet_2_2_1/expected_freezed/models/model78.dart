// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model77.dart';

part 'model78.freezed.dart';
part 'model78.g.dart';

@Freezed()
abstract class Model78 with _$Model78 {
  const factory Model78({
    required Model77 extent,

    /// Clip extent from raster if true (slower) else get inside tile only (faster but less accurate
    @JsonKey(name: 'exact_match') @Default(false) bool exactMatch,
  }) = _Model78;

  Map<String, dynamic> toJson() => _$Model78ToJson(this as _Model78);
  factory Model78.fromJson(Map<String, Object?> json) =>
      _$Model78FromJson(json);
}

extension Model78MergeX on Model78 {
  /// Returns a new [Model78] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model78 merge(Model78 other) {
    return copyWith(extent: other.extent, exactMatch: other.exactMatch);
  }
}
