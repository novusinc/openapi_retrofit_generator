// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'ephemeral_event.dart';
import 'stream_event.dart';

part 'presence_event.g.dart';

@JsonSerializable()
class PresenceEvent {
  const PresenceEvent({
    required this.id,
    required this.createdAt,
    this.type = 'presence',
    this.online = false,
  });

  factory PresenceEvent.fromJson(Map<String, Object?> json) =>
      _$PresenceEventFromJson(json);

  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final bool online;

  Map<String, Object?> toJson() => _$PresenceEventToJson(this);
}
