// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_prompt_request_parts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionPromptRequestPartsTextPartInput
_$SessionPromptRequestPartsTextPartInputFromJson(Map<String, dynamic> json) =>
    SessionPromptRequestPartsTextPartInput(
      id: json['id'] as String?,
      type: json['type'] as String,
      text: json['text'] as String,
      synthetic: json['synthetic'] as bool?,
      time: json['time'] == null
          ? null
          : TextPartInputTime.fromJson(json['time'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SessionPromptRequestPartsTextPartInputToJson(
  SessionPromptRequestPartsTextPartInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'text': instance.text,
  'synthetic': instance.synthetic,
  'time': instance.time,
  'metadata': instance.metadata,
};

SessionPromptRequestPartsFilePartInput
_$SessionPromptRequestPartsFilePartInputFromJson(Map<String, dynamic> json) =>
    SessionPromptRequestPartsFilePartInput(
      id: json['id'] as String?,
      type: json['type'] as String,
      mime: json['mime'] as String,
      filename: json['filename'] as String?,
      url: json['url'] as String,
      source: json['source'] == null
          ? null
          : FilePartSource.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SessionPromptRequestPartsFilePartInputToJson(
  SessionPromptRequestPartsFilePartInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'mime': instance.mime,
  'filename': instance.filename,
  'url': instance.url,
  'source': instance.source,
};

SessionPromptRequestPartsAgentPartInput
_$SessionPromptRequestPartsAgentPartInputFromJson(Map<String, dynamic> json) =>
    SessionPromptRequestPartsAgentPartInput(
      id: json['id'] as String?,
      type: json['type'] as String,
      name: json['name'] as String,
      source: json['source'] == null
          ? null
          : AgentPartInputSource.fromJson(
              json['source'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SessionPromptRequestPartsAgentPartInputToJson(
  SessionPromptRequestPartsAgentPartInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'name': instance.name,
  'source': instance.source,
};
