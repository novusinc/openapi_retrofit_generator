// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'session.dart';

part 'event_session_deleted_properties.freezed.dart';
part 'event_session_deleted_properties.g.dart';

@Freezed()
abstract class EventSessionDeletedProperties
    with _$EventSessionDeletedProperties {
  const factory EventSessionDeletedProperties({required Session info}) =
      _EventSessionDeletedProperties;

  Map<String, dynamic> toJson() => _$EventSessionDeletedPropertiesToJson(
    this as _EventSessionDeletedProperties,
  );
  factory EventSessionDeletedProperties.fromJson(Map<String, Object?> json) =>
      _$EventSessionDeletedPropertiesFromJson(json);
}

extension EventSessionDeletedPropertiesMergeX on EventSessionDeletedProperties {
  /// Returns a new [EventSessionDeletedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventSessionDeletedProperties merge(EventSessionDeletedProperties other) {
    return copyWith(info: other.info);
  }
}
