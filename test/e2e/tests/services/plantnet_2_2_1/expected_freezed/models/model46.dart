// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model46.freezed.dart';
part 'model46.g.dart';

@Freezed()
abstract class Model46 with _$Model46 {
  const factory Model46({
    required String id,
    required String o,
    required String m,
    required String s,
  }) = _Model46;

  Map<String, dynamic> toJson() => _$Model46ToJson(this as _Model46);
  factory Model46.fromJson(Map<String, Object?> json) =>
      _$Model46FromJson(json);
}

extension Model46MergeX on Model46 {
  /// Returns a new [Model46] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model46 merge(Model46 other) {
    return copyWith(id: other.id, o: other.o, m: other.m, s: other.s);
  }
}
