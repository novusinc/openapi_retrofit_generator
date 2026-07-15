// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_session_idle_properties.freezed.dart';
part 'event_session_idle_properties.g.dart';

@Freezed()
abstract class EventSessionIdleProperties with _$EventSessionIdleProperties {
  const factory EventSessionIdleProperties({
    @JsonKey(name: 'sessionID') required String sessionId,
  }) = _EventSessionIdleProperties;

  Map<String, dynamic> toJson() =>
      _$EventSessionIdlePropertiesToJson(this as _EventSessionIdleProperties);
  factory EventSessionIdleProperties.fromJson(Map<String, Object?> json) =>
      _$EventSessionIdlePropertiesFromJson(json);
}

extension EventSessionIdlePropertiesMergeX on EventSessionIdleProperties {
  /// Returns a new [EventSessionIdleProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionIdleProperties merge(EventSessionIdleProperties other) {
    return copyWith(sessionId: other.sessionId);
  }
}
