// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'message_event.dart';
import 'presence_event.dart';
import 'typing_event.dart';

part 'stream_event.mapper.dart';

/// All events; shares its typing and presence leaves with EphemeralEvent.
@MappableClass(
  discriminatorKey: 'type',
  includeSubClasses: [
    StreamEventMessage,
    StreamEventTyping,
    StreamEventPresence,
  ],
)
sealed class StreamEvent with StreamEventMappable {
  const StreamEvent();

  static StreamEvent fromJson(Map<String, dynamic> json) =>
      StreamEventMapper.fromJson(json);
}

@MappableClass(discriminatorValue: 'message')
class StreamEventMessage extends StreamEvent with StreamEventMessageMappable {
  final String type;
  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  final String text;

  const StreamEventMessage({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.text,
  });
}

@MappableClass(discriminatorValue: 'typing')
class StreamEventTyping extends StreamEvent with StreamEventTypingMappable {
  final String type;
  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  @MappableField(key: 'user_id')
  final String? userId;

  const StreamEventTyping({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.userId,
  });
}

@MappableClass(discriminatorValue: 'presence')
class StreamEventPresence extends StreamEvent with StreamEventPresenceMappable {
  final String type;
  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  final bool online;

  const StreamEventPresence({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.online,
  });
}
