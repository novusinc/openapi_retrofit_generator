// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiModel _$AiModelFromJson(Map<String, dynamic> json) => AiModel(
  id: json['id'] as String,
  name: json['name'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$AiModelToJson(AiModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.$type,
};

AiAgent _$AiAgentFromJson(Map<String, dynamic> json) => AiAgent(
  id: json['id'] as String,
  name: json['name'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$AiAgentToJson(AiAgent instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.$type,
};

AiCustom _$AiCustomFromJson(Map<String, dynamic> json) => AiCustom(
  id: json['id'] as String,
  name: json['name'] as String,
  baseAiId: json['baseAiId'] as String,
  baseAi: json['baseAi'] == null
      ? null
      : Ai.fromJson(json['baseAi'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$AiCustomToJson(AiCustom instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'baseAiId': instance.baseAiId,
  'baseAi': ?instance.baseAi,
  'type': instance.$type,
};
