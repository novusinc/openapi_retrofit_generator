// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'gbif.dart';
import 'images.dart';
import 'model20.dart';

part 'model21.freezed.dart';
part 'model21.g.dart';

@Freezed()
abstract class Model21 with _$Model21 {
  const factory Model21({
    num? score,
    Model20? family,
    Gbif? gbif,
    Images? images,
  }) = _Model21;

  Map<String, dynamic> toJson() => _$Model21ToJson(this as _Model21);
  factory Model21.fromJson(Map<String, Object?> json) =>
      _$Model21FromJson(json);
}

extension Model21MergeX on Model21 {
  /// Returns a new [Model21] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model21 merge(Model21 other) {
    return copyWith(
      score: other.score,
      family: other.family,
      gbif: other.gbif,
      images: other.images,
    );
  }
}
