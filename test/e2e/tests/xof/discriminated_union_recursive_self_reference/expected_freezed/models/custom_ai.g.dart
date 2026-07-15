// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_ai.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomAi _$CustomAiFromJson(Map<String, dynamic> json) => _CustomAi(
  type: CustomAiTypeType.fromJson(json['type'] as String),
  id: json['id'] as String,
  name: json['name'] as String,
  baseAiId: json['baseAiId'] as String,
  baseAi: json['baseAi'] == null
      ? null
      : Ai.fromJson(json['baseAi'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CustomAiToJson(_CustomAi instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'name': instance.name,
  'baseAiId': instance.baseAiId,
  'baseAi': ?instance.baseAi,
};
