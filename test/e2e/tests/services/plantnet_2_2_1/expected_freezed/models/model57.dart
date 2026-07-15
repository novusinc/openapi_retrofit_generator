// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'center.dart';

part 'model57.freezed.dart';
part 'model57.g.dart';

@Freezed()
abstract class Model57 with _$Model57 {
  const factory Model57({
    Center? center,
    num? size,
    num? score,
    String? organ,
  }) = _Model57;

  Map<String, dynamic> toJson() => _$Model57ToJson(this as _Model57);
  factory Model57.fromJson(Map<String, Object?> json) =>
      _$Model57FromJson(json);
}

extension Model57MergeX on Model57 {
  /// Returns a new [Model57] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model57 merge(Model57 other) {
    return copyWith(
      center: other.center,
      size: other.size,
      score: other.score,
      organ: other.organ,
    );
  }
}
