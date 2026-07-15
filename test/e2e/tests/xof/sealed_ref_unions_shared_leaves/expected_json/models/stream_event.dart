// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'stream_event.g.dart';

/// All events; shares its typing and presence leaves with EphemeralEvent.
@JsonSerializable(createFactory: false)
sealed class StreamEvent {
  const StreamEvent();

  factory StreamEvent.fromJson(Map<String, dynamic> json) =>
      StreamEventUnionDeserializer.tryDeserialize(json);

  Map<String, dynamic> toJson();
}

extension StreamEventUnionDeserializer on StreamEvent {
  static StreamEvent tryDeserialize(
    Map<String, dynamic> json, {
    String key = 'type',
    Map<Type, Object?>? mapping,
  }) {
    final mappingFallback = const <Type, Object?>{
      StreamEventMessage: 'message',
      StreamEventTyping: 'typing',
      StreamEventPresence: 'presence',
    };
    final value = json[key];
    final effective = mapping ?? mappingFallback;
    return switch (value) {
      _ when value == effective[StreamEventMessage] =>
        StreamEventMessage.fromJson(json),
      _ when value == effective[StreamEventTyping] =>
        StreamEventTyping.fromJson(json),
      _ when value == effective[StreamEventPresence] =>
        StreamEventPresence.fromJson(json),
      _ => throw FormatException(
        'Unknown discriminator value "${json[key]}" for StreamEvent',
      ),
    };
  }
}

@JsonSerializable()
class StreamEventMessage extends StreamEvent {
  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final String text;

  const StreamEventMessage({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.text,
  });

  factory StreamEventMessage.fromJson(Map<String, dynamic> json) =>
      _$StreamEventMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StreamEventMessageToJson(this);
}

@JsonSerializable()
class StreamEventTyping extends StreamEvent {
  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'user_id')
  final String? userId;

  const StreamEventTyping({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.userId,
  });

  factory StreamEventTyping.fromJson(Map<String, dynamic> json) =>
      _$StreamEventTypingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StreamEventTypingToJson(this);
}

@JsonSerializable()
class StreamEventPresence extends StreamEvent {
  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final bool online;

  const StreamEventPresence({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.online,
  });

  factory StreamEventPresence.fromJson(Map<String, dynamic> json) =>
      _$StreamEventPresenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StreamEventPresenceToJson(this);
}
