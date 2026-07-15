// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'status.dart';

part 'model1.freezed.dart';
part 'model1.g.dart';

@Freezed()
abstract class Model1 with _$Model1 {
  const factory Model1({Status? status}) = _Model1;

  Map<String, dynamic> toJson() => _$Model1ToJson(this as _Model1);
  factory Model1.fromJson(Map<String, Object?> json) => _$Model1FromJson(json);
}

extension Model1MergeX on Model1 {
  /// Returns a new [Model1] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model1 merge(Model1 other) {
    return copyWith(status: other.status);
  }
}
