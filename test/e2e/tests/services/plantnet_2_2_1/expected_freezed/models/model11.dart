// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model11.freezed.dart';
part 'model11.g.dart';

@Freezed()
abstract class Model11 with _$Model11 {
  const factory Model11({String? id, String? o, String? m, String? s}) =
      _Model11;

  Map<String, dynamic> toJson() => _$Model11ToJson(this as _Model11);
  factory Model11.fromJson(Map<String, Object?> json) =>
      _$Model11FromJson(json);
}

extension Model11MergeX on Model11 {
  /// Returns a new [Model11] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model11 merge(Model11 other) {
    return copyWith(id: other.id, o: other.o, m: other.m, s: other.s);
  }
}
