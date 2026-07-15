// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'quota.dart';

part 'model2.freezed.dart';
part 'model2.g.dart';

@Freezed()
abstract class Model2 with _$Model2 {
  const factory Model2({Quota? quota}) = _Model2;

  Map<String, dynamic> toJson() => _$Model2ToJson(this as _Model2);
  factory Model2.fromJson(Map<String, Object?> json) => _$Model2FromJson(json);
}

extension Model2MergeX on Model2 {
  /// Returns a new [Model2] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model2 merge(Model2 other) {
    return copyWith(quota: other.quota);
  }
}
