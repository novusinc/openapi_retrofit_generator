// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_nested_data.freezed.dart';
part 'data_nested_data.g.dart';

@Freezed()
abstract class DataNestedData with _$DataNestedData {
  const factory DataNestedData({int? id, String? name}) = _DataNestedData;

  Map<String, dynamic> toJson() =>
      _$DataNestedDataToJson(this as _DataNestedData);
  factory DataNestedData.fromJson(Map<String, Object?> json) =>
      _$DataNestedDataFromJson(json);
}

extension DataNestedDataMergeX on DataNestedData {
  /// Returns a new [DataNestedData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DataNestedData merge(DataNestedData other) {
    return copyWith(id: other.id, name: other.name);
  }
}
