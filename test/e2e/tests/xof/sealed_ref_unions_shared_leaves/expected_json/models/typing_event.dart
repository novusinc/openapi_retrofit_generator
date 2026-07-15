// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'ephemeral_event.dart';
import 'stream_event.dart';

part 'typing_event.g.dart';

@JsonSerializable()
class TypingEvent {
  const TypingEvent({
    required this.id,
    required this.createdAt,
    this.userId,
    this.type = 'typing',
  });

  factory TypingEvent.fromJson(Map<String, Object?> json) =>
      _$TypingEventFromJson(json);

  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(includeIfNull: false, name: 'user_id')
  final String? userId;

  Map<String, Object?> toJson() => _$TypingEventToJson(this);
}
