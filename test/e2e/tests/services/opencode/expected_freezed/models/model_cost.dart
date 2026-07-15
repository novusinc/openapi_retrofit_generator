// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_cost.freezed.dart';
part 'model_cost.g.dart';

@Freezed()
abstract class ModelCost with _$ModelCost {
  const factory ModelCost({
    required num input,
    required num output,
    @JsonKey(name: 'cache_read') num? cacheRead,
    @JsonKey(name: 'cache_write') num? cacheWrite,
  }) = _ModelCost;

  Map<String, dynamic> toJson() => _$ModelCostToJson(this as _ModelCost);
  factory ModelCost.fromJson(Map<String, Object?> json) =>
      _$ModelCostFromJson(json);
}

extension ModelCostMergeX on ModelCost {
  /// Returns a new [ModelCost] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelCost merge(ModelCost other) {
    return copyWith(
      input: other.input,
      output: other.output,
      cacheRead: other.cacheRead,
      cacheWrite: other.cacheWrite,
    );
  }
}
