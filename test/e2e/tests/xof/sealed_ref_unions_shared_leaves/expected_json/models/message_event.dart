// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'stream_event.dart';

part 'message_event.g.dart';

@JsonSerializable()
class MessageEvent {
  const MessageEvent({
    required this.id,
    required this.createdAt,
    required this.text,
    this.type = 'message',
  });

  factory MessageEvent.fromJson(Map<String, Object?> json) =>
      _$MessageEventFromJson(json);

  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final String text;

  Map<String, Object?> toJson() => _$MessageEventToJson(this);
}
