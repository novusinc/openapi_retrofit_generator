// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'stream_event.dart';

part 'message_event.mapper.dart';

@MappableClass()
class MessageEvent with MessageEventMappable {
  const MessageEvent({
    required this.id,
    required this.createdAt,
    required this.text,
    this.type = 'message',
  });

  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  final String text;
  final String type;

  static MessageEvent fromJson(Map<String, dynamic> json) =>
      MessageEventMapper.fromJson(json);

  /// Returns a new [MessageEvent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  MessageEvent merge(MessageEvent other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      text: other.text,
    );
  }
}
