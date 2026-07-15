// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model35.freezed.dart';
part 'model35.g.dart';

@Freezed()
abstract class Model35 with _$Model35 {
  const factory Model35({
    String? determination,
    num? count,
    num? score,
    bool? selected,
  }) = _Model35;

  Map<String, dynamic> toJson() => _$Model35ToJson(this as _Model35);
  factory Model35.fromJson(Map<String, Object?> json) =>
      _$Model35FromJson(json);
}

extension Model35MergeX on Model35 {
  /// Returns a new [Model35] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model35 merge(Model35 other) {
    return copyWith(
      determination: other.determination,
      count: other.count,
      score: other.score,
      selected: other.selected,
    );
  }
}
