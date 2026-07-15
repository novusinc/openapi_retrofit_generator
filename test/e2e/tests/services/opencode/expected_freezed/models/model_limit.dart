// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_limit.freezed.dart';
part 'model_limit.g.dart';

@Freezed()
abstract class ModelLimit with _$ModelLimit {
  const factory ModelLimit({required num context, required num output}) =
      _ModelLimit;

  Map<String, dynamic> toJson() => _$ModelLimitToJson(this as _ModelLimit);
  factory ModelLimit.fromJson(Map<String, Object?> json) =>
      _$ModelLimitFromJson(json);
}

extension ModelLimitMergeX on ModelLimit {
  /// Returns a new [ModelLimit] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelLimit merge(ModelLimit other) {
    return copyWith(context: other.context, output: other.output);
  }
}
