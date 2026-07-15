// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_part_source.dart';

part 'agent_part.freezed.dart';
part 'agent_part.g.dart';

@Freezed()
abstract class AgentPart with _$AgentPart {
  const factory AgentPart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    required String name,
    AgentPartSource? source,
  }) = _AgentPart;

  Map<String, dynamic> toJson() => _$AgentPartToJson(this as _AgentPart);
  factory AgentPart.fromJson(Map<String, Object?> json) =>
      _$AgentPartFromJson(json);
}

extension AgentPartMergeX on AgentPart {
  /// Returns a new [AgentPart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentPart merge(AgentPart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      name: other.name,
      source: other.source,
    );
  }
}
