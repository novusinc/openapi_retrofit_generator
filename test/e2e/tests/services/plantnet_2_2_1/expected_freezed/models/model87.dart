// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'point.dart';

part 'model87.freezed.dart';
part 'model87.g.dart';

@Freezed()
abstract class Model87 with _$Model87 {
  const factory Model87({required Point point}) = _Model87;

  Map<String, dynamic> toJson() => _$Model87ToJson(this as _Model87);
  factory Model87.fromJson(Map<String, Object?> json) =>
      _$Model87FromJson(json);
}

extension Model87MergeX on Model87 {
  /// Returns a new [Model87] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model87 merge(Model87 other) {
    return copyWith(point: other.point);
  }
}
