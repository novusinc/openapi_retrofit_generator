// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'presence_event.dart';
import 'stream_event.dart';
import 'typing_event.dart';

part 'ephemeral_event.mapper.dart';

/// The strict subset of events that are never persisted.
@MappableClass(
  discriminatorKey: 'type',
  includeSubClasses: [EphemeralEventTyping, EphemeralEventPresence],
)
sealed class EphemeralEvent with EphemeralEventMappable {
  const EphemeralEvent();

  static EphemeralEvent fromJson(Map<String, dynamic> json) =>
      EphemeralEventMapper.fromJson(json);
}

@MappableClass(discriminatorValue: 'typing')
class EphemeralEventTyping extends EphemeralEvent
    with EphemeralEventTypingMappable {
  final String type;
  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  @MappableField(key: 'user_id')
  final String? userId;

  const EphemeralEventTyping({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.userId,
  });
}

@MappableClass(discriminatorValue: 'presence')
class EphemeralEventPresence extends EphemeralEvent
    with EphemeralEventPresenceMappable {
  final String type;
  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  final bool online;

  const EphemeralEventPresence({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.online,
  });
}
