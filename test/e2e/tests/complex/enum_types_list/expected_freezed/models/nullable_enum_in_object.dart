// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'nullable_enum_in_object_fruits_fruits.dart';

part 'nullable_enum_in_object.freezed.dart';
part 'nullable_enum_in_object.g.dart';

@Freezed()
abstract class NullableEnumInObject with _$NullableEnumInObject {
  const factory NullableEnumInObject({
    @JsonKey(includeIfNull: false) NullableEnumInObjectFruitsFruits? fruits,
  }) = _NullableEnumInObject;

  Map<String, dynamic> toJson() =>
      _$NullableEnumInObjectToJson(this as _NullableEnumInObject);
  factory NullableEnumInObject.fromJson(Map<String, Object?> json) =>
      _$NullableEnumInObjectFromJson(json);
}

extension NullableEnumInObjectMergeX on NullableEnumInObject {
  /// Returns a new [NullableEnumInObject] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  NullableEnumInObject merge(NullableEnumInObject other) {
    return copyWith(fruits: other.fruits);
  }
}
