// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_message_part_removed_properties.dart';

part 'event_message_part_removed.freezed.dart';
part 'event_message_part_removed.g.dart';

@Freezed()
abstract class EventMessagePartRemoved with _$EventMessagePartRemoved {
  const factory EventMessagePartRemoved({
    required String type,
    required EventMessagePartRemovedProperties properties,
  }) = _EventMessagePartRemoved;

  Map<String, dynamic> toJson() =>
      _$EventMessagePartRemovedToJson(this as _EventMessagePartRemoved);
  factory EventMessagePartRemoved.fromJson(Map<String, Object?> json) =>
      _$EventMessagePartRemovedFromJson(json);
}

extension EventMessagePartRemovedMergeX on EventMessagePartRemoved {
  /// Returns a new [EventMessagePartRemoved] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventMessagePartRemoved merge(EventMessagePartRemoved other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
