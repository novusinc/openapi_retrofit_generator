// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_with_nullable_types_p3_n.freezed.dart';
part 'class_with_nullable_types_p3_n.g.dart';

@Freezed()
abstract class ClassWithNullableTypesP3N with _$ClassWithNullableTypesP3N {
  const factory ClassWithNullableTypesP3N({String? p1, List<String?>? p2}) =
      _ClassWithNullableTypesP3N;

  Map<String, dynamic> toJson() =>
      _$ClassWithNullableTypesP3NToJson(this as _ClassWithNullableTypesP3N);
  factory ClassWithNullableTypesP3N.fromJson(Map<String, Object?> json) =>
      _$ClassWithNullableTypesP3NFromJson(json);
}

extension ClassWithNullableTypesP3NMergeX on ClassWithNullableTypesP3N {
  /// Returns a new [ClassWithNullableTypesP3N] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ClassWithNullableTypesP3N merge(ClassWithNullableTypesP3N other) {
    return copyWith(p1: other.p1, p2: other.p2);
  }
}
