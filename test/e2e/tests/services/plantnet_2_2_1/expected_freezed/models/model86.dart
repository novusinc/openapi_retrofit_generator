// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model85.dart';

part 'model86.freezed.dart';
part 'model86.g.dart';

@Freezed()
abstract class Model86 with _$Model86 {
  const factory Model86({
    required Model85 extent,

    /// Clip extent from raster if true (slower) else get inside tile only (faster but less accurate
    @JsonKey(name: 'exact_match') @Default(false) bool exactMatch,
  }) = _Model86;

  Map<String, dynamic> toJson() => _$Model86ToJson(this as _Model86);
  factory Model86.fromJson(Map<String, Object?> json) =>
      _$Model86FromJson(json);
}

extension Model86MergeX on Model86 {
  /// Returns a new [Model86] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model86 merge(Model86 other) {
    return copyWith(extent: other.extent, exactMatch: other.exactMatch);
  }
}
