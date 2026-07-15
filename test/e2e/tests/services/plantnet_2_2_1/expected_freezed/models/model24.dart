// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model24.freezed.dart';
part 'model24.g.dart';

@Freezed()
abstract class Model24 with _$Model24 {
  const factory Model24({required String species, num? score}) = _Model24;

  Map<String, dynamic> toJson() => _$Model24ToJson(this as _Model24);
  factory Model24.fromJson(Map<String, Object?> json) =>
      _$Model24FromJson(json);
}

extension Model24MergeX on Model24 {
  /// Returns a new [Model24] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model24 merge(Model24 other) {
    return copyWith(species: other.species, score: other.score);
  }
}
