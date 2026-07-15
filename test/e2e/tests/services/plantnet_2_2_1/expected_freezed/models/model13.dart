// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'species.dart';

part 'model13.freezed.dart';
part 'model13.g.dart';

@Freezed()
abstract class Model13 with _$Model13 {
  const factory Model13({Species? species, num? total}) = _Model13;

  Map<String, dynamic> toJson() => _$Model13ToJson(this as _Model13);
  factory Model13.fromJson(Map<String, Object?> json) =>
      _$Model13FromJson(json);
}

extension Model13MergeX on Model13 {
  /// Returns a new [Model13] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model13 merge(Model13 other) {
    return copyWith(species: other.species, total: other.total);
  }
}
