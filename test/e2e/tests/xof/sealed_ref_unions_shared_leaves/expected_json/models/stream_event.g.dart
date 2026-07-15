// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$StreamEventToJson(StreamEvent instance) =>
    <String, dynamic>{};

StreamEventMessage _$StreamEventMessageFromJson(Map<String, dynamic> json) =>
    StreamEventMessage(
      type: json['type'] as String,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      text: json['text'] as String,
    );

Map<String, dynamic> _$StreamEventMessageToJson(StreamEventMessage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'text': instance.text,
    };

StreamEventTyping _$StreamEventTypingFromJson(Map<String, dynamic> json) =>
    StreamEventTyping(
      type: json['type'] as String,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$StreamEventTypingToJson(StreamEventTyping instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
    };

StreamEventPresence _$StreamEventPresenceFromJson(Map<String, dynamic> json) =>
    StreamEventPresence(
      type: json['type'] as String,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      online: json['online'] as bool,
    );

Map<String, dynamic> _$StreamEventPresenceToJson(
  StreamEventPresence instance,
) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'online': instance.online,
};
