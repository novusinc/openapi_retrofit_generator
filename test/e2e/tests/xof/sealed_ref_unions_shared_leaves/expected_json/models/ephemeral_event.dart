// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'ephemeral_event.g.dart';

/// The strict subset of events that are never persisted.
@JsonSerializable(createFactory: false)
sealed class EphemeralEvent {
  const EphemeralEvent();

  factory EphemeralEvent.fromJson(Map<String, dynamic> json) =>
      EphemeralEventUnionDeserializer.tryDeserialize(json);

  Map<String, dynamic> toJson();
}

extension EphemeralEventUnionDeserializer on EphemeralEvent {
  static EphemeralEvent tryDeserialize(
    Map<String, dynamic> json, {
    String key = 'type',
    Map<Type, Object?>? mapping,
  }) {
    final mappingFallback = const <Type, Object?>{
      EphemeralEventTyping: 'typing',
      EphemeralEventPresence: 'presence',
    };
    final value = json[key];
    final effective = mapping ?? mappingFallback;
    return switch (value) {
      _ when value == effective[EphemeralEventTyping] =>
        EphemeralEventTyping.fromJson(json),
      _ when value == effective[EphemeralEventPresence] =>
        EphemeralEventPresence.fromJson(json),
      _ => throw FormatException(
        'Unknown discriminator value "${json[key]}" for EphemeralEvent',
      ),
    };
  }
}

@JsonSerializable()
class EphemeralEventTyping extends EphemeralEvent {
  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'user_id')
  final String? userId;

  const EphemeralEventTyping({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.userId,
  });

  factory EphemeralEventTyping.fromJson(Map<String, dynamic> json) =>
      _$EphemeralEventTypingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EphemeralEventTypingToJson(this);
}

@JsonSerializable()
class EphemeralEventPresence extends EphemeralEvent {
  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final bool online;

  const EphemeralEventPresence({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.online,
  });

  factory EphemeralEventPresence.fromJson(Map<String, dynamic> json) =>
      _$EphemeralEventPresenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EphemeralEventPresenceToJson(this);
}
