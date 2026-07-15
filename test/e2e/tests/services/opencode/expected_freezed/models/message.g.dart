// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageUserMessage _$MessageUserMessageFromJson(Map<String, dynamic> json) =>
    MessageUserMessage(
      id: json['id'] as String,
      sessionId: json['sessionID'] as String,
      role: json['role'] as String,
      time: UserMessageTime.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageUserMessageToJson(MessageUserMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionID': instance.sessionId,
      'role': instance.role,
      'time': instance.time,
    };

MessageAssistantMessage _$MessageAssistantMessageFromJson(
  Map<String, dynamic> json,
) => MessageAssistantMessage(
  id: json['id'] as String,
  sessionId: json['sessionID'] as String,
  role: json['role'] as String,
  time: AssistantMessageTime.fromJson(json['time'] as Map<String, dynamic>),
  error: json['error'] == null
      ? null
      : AssistantMessageError.fromJson(json['error'] as Map<String, dynamic>),
  system: (json['system'] as List<dynamic>).map((e) => e as String).toList(),
  modelId: json['modelID'] as String,
  providerId: json['providerID'] as String,
  mode: json['mode'] as String,
  path: AssistantMessagePath.fromJson(json['path'] as Map<String, dynamic>),
  summary: json['summary'] as bool?,
  cost: json['cost'] as num,
  tokens: AssistantMessageTokens.fromJson(
    json['tokens'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$MessageAssistantMessageToJson(
  MessageAssistantMessage instance,
) => <String, dynamic>{
  'id': instance.id,
  'sessionID': instance.sessionId,
  'role': instance.role,
  'time': instance.time,
  'error': instance.error,
  'system': instance.system,
  'modelID': instance.modelId,
  'providerID': instance.providerId,
  'mode': instance.mode,
  'path': instance.path,
  'summary': instance.summary,
  'cost': instance.cost,
  'tokens': instance.tokens,
};
