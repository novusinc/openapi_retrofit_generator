// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'agent_part_input_source.dart';
import 'file_part_source.dart';
import 'text_part_input_time.dart';

part 'session_prompt_request_parts.g.dart';

class SessionPromptRequestParts {
  final Map<String, dynamic> _json;

  const SessionPromptRequestParts(this._json);

  factory SessionPromptRequestParts.fromJson(Map<String, dynamic> json) =>
      SessionPromptRequestParts(json);

  Map<String, dynamic> toJson() => _json;

  SessionPromptRequestPartsTextPartInput toTextPartInput() =>
      SessionPromptRequestPartsTextPartInput.fromJson(_json);
  SessionPromptRequestPartsFilePartInput toFilePartInput() =>
      SessionPromptRequestPartsFilePartInput.fromJson(_json);
  SessionPromptRequestPartsAgentPartInput toAgentPartInput() =>
      SessionPromptRequestPartsAgentPartInput.fromJson(_json);
}

@JsonSerializable()
class SessionPromptRequestPartsTextPartInput {
  final String? id;
  final String type;
  final String text;
  final bool? synthetic;
  final TextPartInputTime? time;
  final Map<String, dynamic>? metadata;

  const SessionPromptRequestPartsTextPartInput({
    required this.id,
    required this.type,
    required this.text,
    required this.synthetic,
    required this.time,
    required this.metadata,
  });

  factory SessionPromptRequestPartsTextPartInput.fromJson(
    Map<String, Object?> json,
  ) => _$SessionPromptRequestPartsTextPartInputFromJson(json);

  Map<String, Object?> toJson() =>
      _$SessionPromptRequestPartsTextPartInputToJson(this);
}

@JsonSerializable()
class SessionPromptRequestPartsFilePartInput {
  final String? id;
  final String type;
  final String mime;
  final String? filename;
  final String url;
  final FilePartSource? source;

  const SessionPromptRequestPartsFilePartInput({
    required this.id,
    required this.type,
    required this.mime,
    required this.filename,
    required this.url,
    required this.source,
  });

  factory SessionPromptRequestPartsFilePartInput.fromJson(
    Map<String, Object?> json,
  ) => _$SessionPromptRequestPartsFilePartInputFromJson(json);

  Map<String, Object?> toJson() =>
      _$SessionPromptRequestPartsFilePartInputToJson(this);
}

@JsonSerializable()
class SessionPromptRequestPartsAgentPartInput {
  final String? id;
  final String type;
  final String name;
  final AgentPartInputSource? source;

  const SessionPromptRequestPartsAgentPartInput({
    required this.id,
    required this.type,
    required this.name,
    required this.source,
  });

  factory SessionPromptRequestPartsAgentPartInput.fromJson(
    Map<String, Object?> json,
  ) => _$SessionPromptRequestPartsAgentPartInputFromJson(json);

  Map<String, Object?> toJson() =>
      _$SessionPromptRequestPartsAgentPartInputToJson(this);
}
