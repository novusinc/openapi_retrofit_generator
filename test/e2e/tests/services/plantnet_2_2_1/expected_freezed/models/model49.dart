// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'score.dart';

part 'model49.freezed.dart';
part 'model49.g.dart';

@Freezed()
abstract class Model49 with _$Model49 {
  const factory Model49({
    @JsonKey(name: 'estimated_cost') num? estimatedCost,
    Score? query,
  }) = _Model49;

  Map<String, dynamic> toJson() => _$Model49ToJson(this as _Model49);
  factory Model49.fromJson(Map<String, Object?> json) =>
      _$Model49FromJson(json);
}

extension Model49MergeX on Model49 {
  /// Returns a new [Model49] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model49 merge(Model49 other) {
    return copyWith(estimatedCost: other.estimatedCost, query: other.query);
  }
}
