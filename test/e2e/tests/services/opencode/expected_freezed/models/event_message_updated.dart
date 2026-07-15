// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_message_updated_properties.dart';

part 'event_message_updated.freezed.dart';
part 'event_message_updated.g.dart';

@Freezed()
abstract class EventMessageUpdated with _$EventMessageUpdated {
  const factory EventMessageUpdated({
    required String type,
    required EventMessageUpdatedProperties properties,
  }) = _EventMessageUpdated;

  Map<String, dynamic> toJson() =>
      _$EventMessageUpdatedToJson(this as _EventMessageUpdated);
  factory EventMessageUpdated.fromJson(Map<String, Object?> json) =>
      _$EventMessageUpdatedFromJson(json);
}

extension EventMessageUpdatedMergeX on EventMessageUpdated {
  /// Returns a new [EventMessageUpdated] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventMessageUpdated merge(EventMessageUpdated other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
