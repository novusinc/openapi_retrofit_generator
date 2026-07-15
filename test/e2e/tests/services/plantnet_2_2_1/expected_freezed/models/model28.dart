// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'score.dart';

part 'model28.freezed.dart';
part 'model28.g.dart';

@Freezed()
abstract class Model28 with _$Model28 {
  const factory Model28({
    String? name,
    num? count,
    Score? score,
    bool? selected,
  }) = _Model28;

  Map<String, dynamic> toJson() => _$Model28ToJson(this as _Model28);
  factory Model28.fromJson(Map<String, Object?> json) =>
      _$Model28FromJson(json);
}

extension Model28MergeX on Model28 {
  /// Returns a new [Model28] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model28 merge(Model28 other) {
    return copyWith(
      name: other.name,
      count: other.count,
      score: other.score,
      selected: other.selected,
    );
  }
}
