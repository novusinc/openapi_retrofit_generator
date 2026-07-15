// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model5.freezed.dart';
part 'model5.g.dart';

@Freezed()
abstract class Model5 with _$Model5 {
  const factory Model5({String? name, String? code}) = _Model5;

  Map<String, dynamic> toJson() => _$Model5ToJson(this as _Model5);
  factory Model5.fromJson(Map<String, Object?> json) => _$Model5FromJson(json);
}

extension Model5MergeX on Model5 {
  /// Returns a new [Model5] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model5 merge(Model5 other) {
    return copyWith(name: other.name, code: other.code);
  }
}
