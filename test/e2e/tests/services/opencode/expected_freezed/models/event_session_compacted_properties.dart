// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_session_compacted_properties.freezed.dart';
part 'event_session_compacted_properties.g.dart';

@Freezed()
abstract class EventSessionCompactedProperties
    with _$EventSessionCompactedProperties {
  const factory EventSessionCompactedProperties({
    @JsonKey(name: 'sessionID') required String sessionId,
  }) = _EventSessionCompactedProperties;

  Map<String, dynamic> toJson() => _$EventSessionCompactedPropertiesToJson(
    this as _EventSessionCompactedProperties,
  );
  factory EventSessionCompactedProperties.fromJson(Map<String, Object?> json) =>
      _$EventSessionCompactedPropertiesFromJson(json);
}

extension EventSessionCompactedPropertiesMergeX
    on EventSessionCompactedProperties {
  /// Returns a new [EventSessionCompactedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionCompactedProperties merge(EventSessionCompactedProperties other) {
    return copyWith(sessionId: other.sessionId);
  }
}
