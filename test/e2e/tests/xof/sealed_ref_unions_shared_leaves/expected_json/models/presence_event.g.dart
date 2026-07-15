// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PresenceEvent _$PresenceEventFromJson(Map<String, dynamic> json) =>
    PresenceEvent(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      type: json['type'] as String? ?? 'presence',
      online: json['online'] as bool? ?? false,
    );

Map<String, dynamic> _$PresenceEventToJson(PresenceEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'online': instance.online,
    };
