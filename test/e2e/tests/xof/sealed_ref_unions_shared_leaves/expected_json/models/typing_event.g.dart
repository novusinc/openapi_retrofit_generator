// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typing_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypingEvent _$TypingEventFromJson(Map<String, dynamic> json) => TypingEvent(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  userId: json['user_id'] as String?,
  type: json['type'] as String? ?? 'typing',
);

Map<String, dynamic> _$TypingEventToJson(TypingEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': ?instance.userId,
    };
