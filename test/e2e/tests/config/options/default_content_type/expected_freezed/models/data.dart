// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_nested.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@Freezed()
abstract class Data with _$Data {
  const factory Data({
    required String id,
    required String value,
    DataNested? nested,
  }) = _Data;

  Map<String, dynamic> toJson() => _$DataToJson(this as _Data);
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

extension DataMergeX on Data {
  /// Returns a new [Data] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Data merge(Data other) {
    return copyWith(id: other.id, value: other.value, nested: other.nested);
  }
}
