// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_with_nullable_types_p3.freezed.dart';
part 'class_with_nullable_types_p3.g.dart';

@Freezed()
abstract class ClassWithNullableTypesP3 with _$ClassWithNullableTypesP3 {
  const factory ClassWithNullableTypesP3({
    required String p1,
    required List<String> p2,
  }) = _ClassWithNullableTypesP3;

  Map<String, dynamic> toJson() =>
      _$ClassWithNullableTypesP3ToJson(this as _ClassWithNullableTypesP3);
  factory ClassWithNullableTypesP3.fromJson(Map<String, Object?> json) =>
      _$ClassWithNullableTypesP3FromJson(json);
}

extension ClassWithNullableTypesP3MergeX on ClassWithNullableTypesP3 {
  /// Returns a new [ClassWithNullableTypesP3] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ClassWithNullableTypesP3 merge(ClassWithNullableTypesP3 other) {
    return copyWith(p1: other.p1, p2: other.p2);
  }
}
