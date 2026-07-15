// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ephemeral_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$EphemeralEventToJson(EphemeralEvent instance) =>
    <String, dynamic>{};

EphemeralEventTyping _$EphemeralEventTypingFromJson(
  Map<String, dynamic> json,
) => EphemeralEventTyping(
  type: json['type'] as String,
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  userId: json['user_id'] as String?,
);

Map<String, dynamic> _$EphemeralEventTypingToJson(
  EphemeralEventTyping instance,
) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'user_id': instance.userId,
};

EphemeralEventPresence _$EphemeralEventPresenceFromJson(
  Map<String, dynamic> json,
) => EphemeralEventPresence(
  type: json['type'] as String,
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  online: json['online'] as bool,
);

Map<String, dynamic> _$EphemeralEventPresenceToJson(
  EphemeralEventPresence instance,
) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'online': instance.online,
};
