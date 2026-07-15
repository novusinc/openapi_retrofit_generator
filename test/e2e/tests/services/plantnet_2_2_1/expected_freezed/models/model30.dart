// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model29.dart';

part 'model30.freezed.dart';
part 'model30.g.dart';

@Freezed()
abstract class Model30 with _$Model30 {
  const factory Model30({String? day, Model29? quota}) = _Model30;

  Map<String, dynamic> toJson() => _$Model30ToJson(this as _Model30);
  factory Model30.fromJson(Map<String, Object?> json) =>
      _$Model30FromJson(json);
}

extension Model30MergeX on Model30 {
  /// Returns a new [Model30] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model30 merge(Model30 other) {
    return copyWith(day: other.day, quota: other.quota);
  }
}
