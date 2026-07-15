// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model72.dart';

part 'model73.freezed.dart';
part 'model73.g.dart';

@Freezed()
abstract class Model73 with _$Model73 {
  const factory Model73({Model72? species, num? total}) = _Model73;

  Map<String, dynamic> toJson() => _$Model73ToJson(this as _Model73);
  factory Model73.fromJson(Map<String, Object?> json) =>
      _$Model73FromJson(json);
}

extension Model73MergeX on Model73 {
  /// Returns a new [Model73] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model73 merge(Model73 other) {
    return copyWith(species: other.species, total: other.total);
  }
}
