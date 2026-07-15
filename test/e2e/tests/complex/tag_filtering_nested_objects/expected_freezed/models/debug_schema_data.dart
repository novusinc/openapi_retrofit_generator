// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'debug_schema_data_status_status.dart';
import 'debug_schema_data_metadata.dart';

part 'debug_schema_data.freezed.dart';
part 'debug_schema_data.g.dart';

@Freezed()
abstract class DebugSchemaData with _$DebugSchemaData {
  const factory DebugSchemaData({
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) DebugSchemaDataStatusStatus? status,
    @JsonKey(includeIfNull: false) DebugSchemaDataMetadata? metadata,
  }) = _DebugSchemaData;

  Map<String, dynamic> toJson() =>
      _$DebugSchemaDataToJson(this as _DebugSchemaData);
  factory DebugSchemaData.fromJson(Map<String, Object?> json) =>
      _$DebugSchemaDataFromJson(json);
}

extension DebugSchemaDataMergeX on DebugSchemaData {
  /// Returns a new [DebugSchemaData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DebugSchemaData merge(DebugSchemaData other) {
    return copyWith(
      name: other.name,
      id: other.id,
      status: other.status,
      metadata: other.metadata,
    );
  }
}
