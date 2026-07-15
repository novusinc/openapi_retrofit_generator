// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model79.freezed.dart';
part 'model79.g.dart';

@Freezed()
abstract class Model79 with _$Model79 {
  const factory Model79({String? alias, num? min, num? max, num? mean}) =
      _Model79;

  Map<String, dynamic> toJson() => _$Model79ToJson(this as _Model79);
  factory Model79.fromJson(Map<String, Object?> json) =>
      _$Model79FromJson(json);
}

extension Model79MergeX on Model79 {
  /// Returns a new [Model79] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model79 merge(Model79 other) {
    return copyWith(
      alias: other.alias,
      min: other.min,
      max: other.max,
      mean: other.mean,
    );
  }
}
