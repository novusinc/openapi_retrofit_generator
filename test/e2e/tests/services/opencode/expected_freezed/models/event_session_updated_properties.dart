// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'session.dart';

part 'event_session_updated_properties.freezed.dart';
part 'event_session_updated_properties.g.dart';

@Freezed()
abstract class EventSessionUpdatedProperties
    with _$EventSessionUpdatedProperties {
  const factory EventSessionUpdatedProperties({required Session info}) =
      _EventSessionUpdatedProperties;

  Map<String, dynamic> toJson() => _$EventSessionUpdatedPropertiesToJson(
    this as _EventSessionUpdatedProperties,
  );
  factory EventSessionUpdatedProperties.fromJson(Map<String, Object?> json) =>
      _$EventSessionUpdatedPropertiesFromJson(json);
}

extension EventSessionUpdatedPropertiesMergeX on EventSessionUpdatedProperties {
  /// Returns a new [EventSessionUpdatedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionUpdatedProperties merge(EventSessionUpdatedProperties other) {
    return copyWith(info: other.info);
  }
}
