// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_session_error_properties_error.dart';

part 'event_session_error_properties.freezed.dart';
part 'event_session_error_properties.g.dart';

@Freezed()
abstract class EventSessionErrorProperties with _$EventSessionErrorProperties {
  const factory EventSessionErrorProperties({
    @JsonKey(name: 'sessionID') String? sessionId,
    EventSessionErrorPropertiesError? error,
  }) = _EventSessionErrorProperties;

  Map<String, dynamic> toJson() =>
      _$EventSessionErrorPropertiesToJson(this as _EventSessionErrorProperties);
  factory EventSessionErrorProperties.fromJson(Map<String, Object?> json) =>
      _$EventSessionErrorPropertiesFromJson(json);
}

extension EventSessionErrorPropertiesMergeX on EventSessionErrorProperties {
  /// Returns a new [EventSessionErrorProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionErrorProperties merge(EventSessionErrorProperties other) {
    return copyWith(sessionId: other.sessionId, error: other.error);
  }
}
