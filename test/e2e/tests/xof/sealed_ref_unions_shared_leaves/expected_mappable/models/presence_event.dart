// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'ephemeral_event.dart';
import 'stream_event.dart';

part 'presence_event.mapper.dart';

@MappableClass()
class PresenceEvent with PresenceEventMappable {
  const PresenceEvent({
    required this.id,
    required this.createdAt,
    this.type = 'presence',
    this.online = false,
  });

  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  final String type;
  final bool online;

  static PresenceEvent fromJson(Map<String, dynamic> json) =>
      PresenceEventMapper.fromJson(json);

  /// Returns a new [PresenceEvent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PresenceEvent merge(PresenceEvent other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      online: other.online,
    );
  }
}
