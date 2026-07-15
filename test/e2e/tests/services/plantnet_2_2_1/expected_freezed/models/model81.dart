// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model80.dart';

part 'model81.freezed.dart';
part 'model81.g.dart';

@Freezed()
abstract class Model81 with _$Model81 {
  const factory Model81({Model80? indicators, num? total}) = _Model81;

  Map<String, dynamic> toJson() => _$Model81ToJson(this as _Model81);
  factory Model81.fromJson(Map<String, Object?> json) =>
      _$Model81FromJson(json);
}

extension Model81MergeX on Model81 {
  /// Returns a new [Model81] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model81 merge(Model81 other) {
    return copyWith(indicators: other.indicators, total: other.total);
  }
}
