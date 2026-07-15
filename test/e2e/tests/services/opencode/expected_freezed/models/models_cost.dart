// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models_cost.freezed.dart';
part 'models_cost.g.dart';

@Freezed()
abstract class ModelsCost with _$ModelsCost {
  const factory ModelsCost({
    required num input,
    required num output,
    @JsonKey(name: 'cache_read') num? cacheRead,
    @JsonKey(name: 'cache_write') num? cacheWrite,
  }) = _ModelsCost;

  Map<String, dynamic> toJson() => _$ModelsCostToJson(this as _ModelsCost);
  factory ModelsCost.fromJson(Map<String, Object?> json) =>
      _$ModelsCostFromJson(json);
}

extension ModelsCostMergeX on ModelsCost {
  /// Returns a new [ModelsCost] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelsCost merge(ModelsCost other) {
    return copyWith(
      input: other.input,
      output: other.output,
      cacheRead: other.cacheRead,
      cacheWrite: other.cacheWrite,
    );
  }
}
