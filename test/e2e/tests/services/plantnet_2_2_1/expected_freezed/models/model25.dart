// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model25.freezed.dart';
part 'model25.g.dart';

@Freezed()
abstract class Model25 with _$Model25 {
  const factory Model25({String? id, String? title}) = _Model25;

  Map<String, dynamic> toJson() => _$Model25ToJson(this as _Model25);
  factory Model25.fromJson(Map<String, Object?> json) =>
      _$Model25FromJson(json);
}

extension Model25MergeX on Model25 {
  /// Returns a new [Model25] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model25 merge(Model25 other) {
    return copyWith(id: other.id, title: other.title);
  }
}
