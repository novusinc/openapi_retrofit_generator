// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model52.dart';
import 'model56.dart';
import 'model60.dart';
import 'score.dart';

part 'model61.freezed.dart';
part 'model61.g.dart';

@Freezed()
abstract class Model61 with _$Model61 {
  const factory Model61({
    @JsonKey(name: 'nb_sub_queries') num? nbSubQueries,
    @JsonKey(name: 'nb_matching_sub_queries') num? nbMatchingSubQueries,
    num? uncovered,
    @JsonKey(name: 'tile_size') num? tileSize,
    @JsonKey(name: 'tile_stride') num? tileStride,
    Score? image,
    Model52? species,
    Model56? genus,
    Model60? family,
  }) = _Model61;

  Map<String, dynamic> toJson() => _$Model61ToJson(this as _Model61);
  factory Model61.fromJson(Map<String, Object?> json) =>
      _$Model61FromJson(json);
}

extension Model61MergeX on Model61 {
  /// Returns a new [Model61] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model61 merge(Model61 other) {
    return copyWith(
      nbSubQueries: other.nbSubQueries,
      nbMatchingSubQueries: other.nbMatchingSubQueries,
      uncovered: other.uncovered,
      tileSize: other.tileSize,
      tileStride: other.tileStride,
      image: other.image,
      species: other.species,
      genus: other.genus,
      family: other.family,
    );
  }
}
