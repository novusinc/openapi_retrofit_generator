// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_file_edited_properties.freezed.dart';
part 'event_file_edited_properties.g.dart';

@Freezed()
abstract class EventFileEditedProperties with _$EventFileEditedProperties {
  const factory EventFileEditedProperties({required String file}) =
      _EventFileEditedProperties;

  Map<String, dynamic> toJson() =>
      _$EventFileEditedPropertiesToJson(this as _EventFileEditedProperties);
  factory EventFileEditedProperties.fromJson(Map<String, Object?> json) =>
      _$EventFileEditedPropertiesFromJson(json);
}

extension EventFileEditedPropertiesMergeX on EventFileEditedProperties {
  /// Returns a new [EventFileEditedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventFileEditedProperties merge(EventFileEditedProperties other) {
    return copyWith(file: other.file);
  }
}
