// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_session_deleted_properties.dart';

part 'event_session_deleted.freezed.dart';
part 'event_session_deleted.g.dart';

@Freezed()
abstract class EventSessionDeleted with _$EventSessionDeleted {
  const factory EventSessionDeleted({
    required String type,
    required EventSessionDeletedProperties properties,
  }) = _EventSessionDeleted;

  Map<String, dynamic> toJson() =>
      _$EventSessionDeletedToJson(this as _EventSessionDeleted);
  factory EventSessionDeleted.fromJson(Map<String, Object?> json) =>
      _$EventSessionDeletedFromJson(json);
}

extension EventSessionDeletedMergeX on EventSessionDeleted {
  /// Returns a new [EventSessionDeleted] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionDeleted merge(EventSessionDeleted other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
