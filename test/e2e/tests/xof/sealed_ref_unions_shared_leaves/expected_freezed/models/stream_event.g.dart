// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageEvent _$MessageEventFromJson(Map<String, dynamic> json) =>
    _MessageEvent(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      text: json['text'] as String,
      type: json['type'] as String? ?? 'message',
    );

Map<String, dynamic> _$MessageEventToJson(_MessageEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'text': instance.text,
      'type': instance.type,
    };

_PresenceEvent _$PresenceEventFromJson(Map<String, dynamic> json) =>
    _PresenceEvent(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      type: json['type'] as String? ?? 'presence',
      online: json['online'] as bool? ?? false,
    );

Map<String, dynamic> _$PresenceEventToJson(_PresenceEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'type': instance.type,
      'online': instance.online,
    };

_TypingEvent _$TypingEventFromJson(Map<String, dynamic> json) => _TypingEvent(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  userId: json['user_id'] as String?,
  type: json['type'] as String? ?? 'typing',
);

Map<String, dynamic> _$TypingEventToJson(_TypingEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': ?instance.userId,
      'type': instance.type,
    };
