// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_session_compacted_properties.dart';

part 'event_session_compacted.freezed.dart';
part 'event_session_compacted.g.dart';

@Freezed()
abstract class EventSessionCompacted with _$EventSessionCompacted {
  const factory EventSessionCompacted({
    required String type,
    required EventSessionCompactedProperties properties,
  }) = _EventSessionCompacted;

  Map<String, dynamic> toJson() =>
      _$EventSessionCompactedToJson(this as _EventSessionCompacted);
  factory EventSessionCompacted.fromJson(Map<String, Object?> json) =>
      _$EventSessionCompactedFromJson(json);
}

extension EventSessionCompactedMergeX on EventSessionCompacted {
  /// Returns a new [EventSessionCompacted] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionCompacted merge(EventSessionCompacted other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
