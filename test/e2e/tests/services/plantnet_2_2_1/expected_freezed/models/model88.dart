// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'point.dart';

part 'model88.freezed.dart';
part 'model88.g.dart';

@Freezed()
abstract class Model88 with _$Model88 {
  const factory Model88({required Point point}) = _Model88;

  Map<String, dynamic> toJson() => _$Model88ToJson(this as _Model88);
  factory Model88.fromJson(Map<String, Object?> json) =>
      _$Model88FromJson(json);
}

extension Model88MergeX on Model88 {
  /// Returns a new [Model88] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model88 merge(Model88 other) {
    return copyWith(point: other.point);
  }
}
