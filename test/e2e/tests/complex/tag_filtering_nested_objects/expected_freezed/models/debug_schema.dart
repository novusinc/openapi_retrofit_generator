// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'debug_schema_data.dart';

part 'debug_schema.freezed.dart';
part 'debug_schema.g.dart';

@Freezed()
abstract class DebugSchema with _$DebugSchema {
  const factory DebugSchema({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? message,
    @JsonKey(includeIfNull: false) DebugSchemaData? data,
  }) = _DebugSchema;

  Map<String, dynamic> toJson() => _$DebugSchemaToJson(this as _DebugSchema);
  factory DebugSchema.fromJson(Map<String, Object?> json) =>
      _$DebugSchemaFromJson(json);
}

extension DebugSchemaMergeX on DebugSchema {
  /// Returns a new [DebugSchema] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DebugSchema merge(DebugSchema other) {
    return copyWith(id: other.id, message: other.message, data: other.data);
  }
}
