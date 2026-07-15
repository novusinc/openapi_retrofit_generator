// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_message_removed_properties.dart';

part 'event_message_removed.freezed.dart';
part 'event_message_removed.g.dart';

@Freezed()
abstract class EventMessageRemoved with _$EventMessageRemoved {
  const factory EventMessageRemoved({
    required String type,
    required EventMessageRemovedProperties properties,
  }) = _EventMessageRemoved;

  Map<String, dynamic> toJson() =>
      _$EventMessageRemovedToJson(this as _EventMessageRemoved);
  factory EventMessageRemoved.fromJson(Map<String, Object?> json) =>
      _$EventMessageRemovedFromJson(json);
}

extension EventMessageRemovedMergeX on EventMessageRemoved {
  /// Returns a new [EventMessageRemoved] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventMessageRemoved merge(EventMessageRemoved other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
