// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model7.freezed.dart';
part 'model7.g.dart';

@Freezed()
abstract class Model7 with _$Model7 {
  const factory Model7({String? code, String? name, num? id, num? level}) =
      _Model7;

  Map<String, dynamic> toJson() => _$Model7ToJson(this as _Model7);
  factory Model7.fromJson(Map<String, Object?> json) => _$Model7FromJson(json);
}

extension Model7MergeX on Model7 {
  /// Returns a new [Model7] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model7 merge(Model7 other) {
    return copyWith(
      code: other.code,
      name: other.name,
      id: other.id,
      level: other.level,
    );
  }
}
