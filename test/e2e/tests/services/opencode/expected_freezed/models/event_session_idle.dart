// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_session_idle_properties.dart';

part 'event_session_idle.freezed.dart';
part 'event_session_idle.g.dart';

@Freezed()
abstract class EventSessionIdle with _$EventSessionIdle {
  const factory EventSessionIdle({
    required String type,
    required EventSessionIdleProperties properties,
  }) = _EventSessionIdle;

  Map<String, dynamic> toJson() =>
      _$EventSessionIdleToJson(this as _EventSessionIdle);
  factory EventSessionIdle.fromJson(Map<String, Object?> json) =>
      _$EventSessionIdleFromJson(json);
}

extension EventSessionIdleMergeX on EventSessionIdle {
  /// Returns a new [EventSessionIdle] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionIdle merge(EventSessionIdle other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
