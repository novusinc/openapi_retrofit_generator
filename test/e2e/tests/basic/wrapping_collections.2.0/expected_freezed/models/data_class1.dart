// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_class1.freezed.dart';
part 'data_class1.g.dart';

@Freezed()
abstract class DataClass1 with _$DataClass1 {
  const factory DataClass1({
    required String type,
    required String instance,
    required Map<String, List<String>> errors,
  }) = _DataClass1;

  Map<String, dynamic> toJson() => _$DataClass1ToJson(this as _DataClass1);
  factory DataClass1.fromJson(Map<String, Object?> json) =>
      _$DataClass1FromJson(json);
}

extension DataClass1MergeX on DataClass1 {
  /// Returns a new [DataClass1] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DataClass1 merge(DataClass1 other) {
    return copyWith(
      type: other.type,
      instance: other.instance,
      errors: other.errors,
    );
  }
}
