// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'center.dart';

part 'model53.freezed.dart';
part 'model53.g.dart';

@Freezed()
abstract class Model53 with _$Model53 {
  const factory Model53({
    Center? center,
    num? size,
    num? score,
    String? organ,
  }) = _Model53;

  Map<String, dynamic> toJson() => _$Model53ToJson(this as _Model53);
  factory Model53.fromJson(Map<String, Object?> json) =>
      _$Model53FromJson(json);
}

extension Model53MergeX on Model53 {
  /// Returns a new [Model53] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model53 merge(Model53 other) {
    return copyWith(
      center: other.center,
      size: other.size,
      score: other.score,
      organ: other.organ,
    );
  }
}
