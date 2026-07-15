// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model43.dart';

part 'model44.freezed.dart';
part 'model44.g.dart';

@Freezed()
abstract class Model44 with _$Model44 {
  const factory Model44({Model43? species, num? total}) = _Model44;

  Map<String, dynamic> toJson() => _$Model44ToJson(this as _Model44);
  factory Model44.fromJson(Map<String, Object?> json) =>
      _$Model44FromJson(json);
}

extension Model44MergeX on Model44 {
  /// Returns a new [Model44] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model44 merge(Model44 other) {
    return copyWith(species: other.species, total: other.total);
  }
}
