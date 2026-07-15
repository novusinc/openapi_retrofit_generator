// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_nested_data.dart';

part 'data_nested.freezed.dart';
part 'data_nested.g.dart';

@Freezed()
abstract class DataNested with _$DataNested {
  const factory DataNested({
    @JsonKey(includeIfNull: false) List<DataNestedData>? data,
  }) = _DataNested;

  Map<String, dynamic> toJson() => _$DataNestedToJson(this as _DataNested);
  factory DataNested.fromJson(Map<String, Object?> json) =>
      _$DataNestedFromJson(json);
}

extension DataNestedMergeX on DataNested {
  /// Returns a new [DataNested] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DataNested merge(DataNested other) {
    return copyWith(data: other.data);
  }
}
