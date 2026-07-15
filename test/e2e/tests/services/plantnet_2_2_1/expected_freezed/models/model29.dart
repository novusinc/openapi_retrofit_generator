// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'identify.dart';

part 'model29.freezed.dart';
part 'model29.g.dart';

@Freezed()
abstract class Model29 with _$Model29 {
  const factory Model29({Identify? identify}) = _Model29;

  Map<String, dynamic> toJson() => _$Model29ToJson(this as _Model29);
  factory Model29.fromJson(Map<String, Object?> json) =>
      _$Model29FromJson(json);
}

extension Model29MergeX on Model29 {
  /// Returns a new [Model29] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model29 merge(Model29 other) {
    return copyWith(identify: other.identify);
  }
}
