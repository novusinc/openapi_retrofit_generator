// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_class1.dart';

part 'data_class2.freezed.dart';
part 'data_class2.g.dart';

@Freezed()
abstract class DataClass2 with _$DataClass2 {
  const factory DataClass2({
    required String title,
    required List<Map<String, List<List<Map<String, DataClass1>>>>> errors,
  }) = _DataClass2;

  Map<String, dynamic> toJson() => _$DataClass2ToJson(this as _DataClass2);
  factory DataClass2.fromJson(Map<String, Object?> json) =>
      _$DataClass2FromJson(json);
}

extension DataClass2MergeX on DataClass2 {
  /// Returns a new [DataClass2] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DataClass2 merge(DataClass2 other) {
    return copyWith(title: other.title, errors: other.errors);
  }
}
