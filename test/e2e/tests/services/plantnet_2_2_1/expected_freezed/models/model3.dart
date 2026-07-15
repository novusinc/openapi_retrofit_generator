// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'above_quota.dart';
import 'count.dart';

part 'model3.freezed.dart';
part 'model3.g.dart';

@Freezed()
abstract class Model3 with _$Model3 {
  const factory Model3({
    String? period,
    String? startDate,
    String? endDate,
    String? status,
    Count? count,
    AboveQuota? aboveQuota,
    bool? discount,
  }) = _Model3;

  Map<String, dynamic> toJson() => _$Model3ToJson(this as _Model3);
  factory Model3.fromJson(Map<String, Object?> json) => _$Model3FromJson(json);
}

extension Model3MergeX on Model3 {
  /// Returns a new [Model3] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model3 merge(Model3 other) {
    return copyWith(
      period: other.period,
      startDate: other.startDate,
      endDate: other.endDate,
      status: other.status,
      count: other.count,
      aboveQuota: other.aboveQuota,
      discount: other.discount,
    );
  }
}
