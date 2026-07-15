// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'point.dart';

part 'model89.freezed.dart';
part 'model89.g.dart';

@Freezed()
abstract class Model89 with _$Model89 {
  const factory Model89({required Point point}) = _Model89;

  Map<String, dynamic> toJson() => _$Model89ToJson(this as _Model89);
  factory Model89.fromJson(Map<String, Object?> json) =>
      _$Model89FromJson(json);
}

extension Model89MergeX on Model89 {
  /// Returns a new [Model89] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model89 merge(Model89 other) {
    return copyWith(point: other.point);
  }
}
