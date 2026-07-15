// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'event_message_updated_properties.freezed.dart';
part 'event_message_updated_properties.g.dart';

@Freezed()
abstract class EventMessageUpdatedProperties
    with _$EventMessageUpdatedProperties {
  const factory EventMessageUpdatedProperties({required Message info}) =
      _EventMessageUpdatedProperties;

  Map<String, dynamic> toJson() => _$EventMessageUpdatedPropertiesToJson(
    this as _EventMessageUpdatedProperties,
  );
  factory EventMessageUpdatedProperties.fromJson(Map<String, Object?> json) =>
      _$EventMessageUpdatedPropertiesFromJson(json);
}

extension EventMessageUpdatedPropertiesMergeX on EventMessageUpdatedProperties {
  /// Returns a new [EventMessageUpdatedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventMessageUpdatedProperties merge(EventMessageUpdatedProperties other) {
    return copyWith(info: other.info);
  }
}
