// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'center.dart';

part 'model50.freezed.dart';
part 'model50.g.dart';

@Freezed()
abstract class Model50 with _$Model50 {
  const factory Model50({
    Center? center,
    num? size,
    num? score,
    String? organ,
  }) = _Model50;

  Map<String, dynamic> toJson() => _$Model50ToJson(this as _Model50);
  factory Model50.fromJson(Map<String, Object?> json) =>
      _$Model50FromJson(json);
}

extension Model50MergeX on Model50 {
  /// Returns a new [Model50] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model50 merge(Model50 other) {
    return copyWith(
      center: other.center,
      size: other.size,
      score: other.score,
      organ: other.organ,
    );
  }
}
