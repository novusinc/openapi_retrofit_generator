// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_message_removed_properties.freezed.dart';
part 'event_message_removed_properties.g.dart';

@Freezed()
abstract class EventMessageRemovedProperties
    with _$EventMessageRemovedProperties {
  const factory EventMessageRemovedProperties({
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
  }) = _EventMessageRemovedProperties;

  Map<String, dynamic> toJson() => _$EventMessageRemovedPropertiesToJson(
    this as _EventMessageRemovedProperties,
  );
  factory EventMessageRemovedProperties.fromJson(Map<String, Object?> json) =>
      _$EventMessageRemovedPropertiesFromJson(json);
}

extension EventMessageRemovedPropertiesMergeX on EventMessageRemovedProperties {
  /// Returns a new [EventMessageRemovedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventMessageRemovedProperties merge(EventMessageRemovedProperties other) {
    return copyWith(sessionId: other.sessionId, messageId: other.messageId);
  }
}
