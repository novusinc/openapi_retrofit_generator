// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'taxon.dart';

part 'model34.freezed.dart';
part 'model34.g.dart';

@Freezed()
abstract class Model34 with _$Model34 {
  const factory Model34({
    num? id,
    String? createdAt,
    String? updatedAt,
    Taxon? taxon,
    num? score,
    @JsonKey(name: 'observation_id') String? observationId,
  }) = _Model34;

  Map<String, dynamic> toJson() => _$Model34ToJson(this as _Model34);
  factory Model34.fromJson(Map<String, Object?> json) =>
      _$Model34FromJson(json);
}

extension Model34MergeX on Model34 {
  /// Returns a new [Model34] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model34 merge(Model34 other) {
    return copyWith(
      id: other.id,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      taxon: other.taxon,
      score: other.score,
      observationId: other.observationId,
    );
  }
}
