// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_message_part_updated_properties.dart';

part 'event_message_part_updated.freezed.dart';
part 'event_message_part_updated.g.dart';

@Freezed()
abstract class EventMessagePartUpdated with _$EventMessagePartUpdated {
  const factory EventMessagePartUpdated({
    required String type,
    required EventMessagePartUpdatedProperties properties,
  }) = _EventMessagePartUpdated;

  Map<String, dynamic> toJson() =>
      _$EventMessagePartUpdatedToJson(this as _EventMessagePartUpdated);
  factory EventMessagePartUpdated.fromJson(Map<String, Object?> json) =>
      _$EventMessagePartUpdatedFromJson(json);
}

extension EventMessagePartUpdatedMergeX on EventMessagePartUpdated {
  /// Returns a new [EventMessagePartUpdated] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventMessagePartUpdated merge(EventMessagePartUpdated other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
