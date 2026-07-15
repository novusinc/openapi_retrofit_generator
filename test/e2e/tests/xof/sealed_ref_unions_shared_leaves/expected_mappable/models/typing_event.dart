// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'ephemeral_event.dart';
import 'stream_event.dart';

part 'typing_event.mapper.dart';

@MappableClass()
class TypingEvent with TypingEventMappable {
  const TypingEvent({
    required this.id,
    required this.createdAt,
    this.userId,
    this.type = 'typing',
  });

  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  @MappableField(key: 'user_id')
  final String? userId;
  final String type;

  static TypingEvent fromJson(Map<String, dynamic> json) =>
      TypingEventMapper.fromJson(json);

  /// Returns a new [TypingEvent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TypingEvent merge(TypingEvent other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      userId: other.userId,
    );
  }
}
