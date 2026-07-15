// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageEvent _$MessageEventFromJson(Map<String, dynamic> json) => MessageEvent(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  text: json['text'] as String,
  type: json['type'] as String? ?? 'message',
);

Map<String, dynamic> _$MessageEventToJson(MessageEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'text': instance.text,
    };
