// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Agent _$AgentFromJson(Map<String, dynamic> json) => _Agent(
  type: AgentTypeType.fromJson(json['type'] as String),
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$AgentToJson(_Agent instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'name': instance.name,
};
