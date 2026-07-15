// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'habitats.dart';

part 'model8.freezed.dart';
part 'model8.g.dart';

@Freezed()
abstract class Model8 with _$Model8 {
  const factory Model8({Habitats? habitats, num? total}) = _Model8;

  Map<String, dynamic> toJson() => _$Model8ToJson(this as _Model8);
  factory Model8.fromJson(Map<String, Object?> json) => _$Model8FromJson(json);
}

extension Model8MergeX on Model8 {
  /// Returns a new [Model8] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model8 merge(Model8 other) {
    return copyWith(habitats: other.habitats, total: other.total);
  }
}
