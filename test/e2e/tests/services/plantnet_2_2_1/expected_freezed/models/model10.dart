// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'indicators.dart';

part 'model10.freezed.dart';
part 'model10.g.dart';

@Freezed()
abstract class Model10 with _$Model10 {
  const factory Model10({Indicators? indicators, num? total}) = _Model10;

  Map<String, dynamic> toJson() => _$Model10ToJson(this as _Model10);
  factory Model10.fromJson(Map<String, Object?> json) =>
      _$Model10FromJson(json);
}

extension Model10MergeX on Model10 {
  /// Returns a new [Model10] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model10 merge(Model10 other) {
    return copyWith(indicators: other.indicators, total: other.total);
  }
}
