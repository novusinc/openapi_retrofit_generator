// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_session_updated_properties.dart';

part 'event_session_updated.freezed.dart';
part 'event_session_updated.g.dart';

@Freezed()
abstract class EventSessionUpdated with _$EventSessionUpdated {
  const factory EventSessionUpdated({
    required String type,
    required EventSessionUpdatedProperties properties,
  }) = _EventSessionUpdated;

  Map<String, dynamic> toJson() =>
      _$EventSessionUpdatedToJson(this as _EventSessionUpdated);
  factory EventSessionUpdated.fromJson(Map<String, Object?> json) =>
      _$EventSessionUpdatedFromJson(json);
}

extension EventSessionUpdatedMergeX on EventSessionUpdated {
  /// Returns a new [EventSessionUpdated] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionUpdated merge(EventSessionUpdated other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
