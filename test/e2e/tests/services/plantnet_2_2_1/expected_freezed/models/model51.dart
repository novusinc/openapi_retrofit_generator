// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'model51.freezed.dart';
part 'model51.g.dart';

@Freezed()
abstract class Model51 with _$Model51 {
  const factory Model51({
    String? name,
    String? id,
    @JsonKey(name: 'gbif_id') String? gbifId,
    String? binomial,
    String? author,
    String? genus,
    String? family,
    num? coverage,
    @JsonKey(name: 'max_score') num? maxScore,
    num? count,
    Location? location,
    String? reject,
  }) = _Model51;

  Map<String, dynamic> toJson() => _$Model51ToJson(this as _Model51);
  factory Model51.fromJson(Map<String, Object?> json) =>
      _$Model51FromJson(json);
}

extension Model51MergeX on Model51 {
  /// Returns a new [Model51] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model51 merge(Model51 other) {
    return copyWith(
      name: other.name,
      id: other.id,
      gbifId: other.gbifId,
      binomial: other.binomial,
      author: other.author,
      genus: other.genus,
      family: other.family,
      coverage: other.coverage,
      maxScore: other.maxScore,
      count: other.count,
      location: other.location,
      reject: other.reject,
    );
  }
}
