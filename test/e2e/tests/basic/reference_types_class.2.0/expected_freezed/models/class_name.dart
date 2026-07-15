// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'another_class.dart';

part 'class_name.freezed.dart';
part 'class_name.g.dart';

@Freezed()
abstract class ClassName with _$ClassName {
  const factory ClassName({required int id, required AnotherClass another}) =
      _ClassName;

  Map<String, dynamic> toJson() => _$ClassNameToJson(this as _ClassName);
  factory ClassName.fromJson(Map<String, Object?> json) =>
      _$ClassNameFromJson(json);
}

extension ClassNameMergeX on ClassName {
  /// Returns a new [ClassName] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ClassName merge(ClassName other) {
    return copyWith(id: other.id, another: other.another);
  }
}
