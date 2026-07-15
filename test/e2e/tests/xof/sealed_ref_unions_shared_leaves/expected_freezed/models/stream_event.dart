// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_event.freezed.dart';
part 'stream_event.g.dart';

/// All events; shares its typing and presence leaves with EphemeralEvent.
sealed class StreamEvent {
  /// The `message` variant; returns a [MessageEvent] instance.
  const factory StreamEvent.message({
    required String id,
    required DateTime createdAt,
    required String text,
  }) = MessageEvent;

  /// The `typing` variant; returns a [TypingEvent] instance.
  const factory StreamEvent.typing({
    required String id,
    required DateTime createdAt,
    String? userId,
  }) = TypingEvent;

  /// The `presence` variant; returns a [PresenceEvent] instance.
  const factory StreamEvent.presence({
    required String id,
    required DateTime createdAt,
    bool online,
  }) = PresenceEvent;

  /// Deserializes by switching on `type`; unrecognized values yield a
  /// [StreamEventUnknown] carrying the raw JSON instead of throwing.
  factory StreamEvent.fromJson(Map<String, dynamic> json) =>
      switch (json['type']) {
        'message' => MessageEvent.fromJson(json),
        'typing' => TypingEvent.fromJson(json),
        'presence' => PresenceEvent.fromJson(json),
        _ => StreamEventUnknown(Map<String, dynamic>.from(json)),
      };

  // Fields shared by every variant.
  String get id;
  DateTime get createdAt;

  Map<String, dynamic> toJson();
}

/// The strict subset of events that are never persisted.
sealed class EphemeralEvent {
  /// The `typing` variant; returns a [TypingEvent] instance.
  const factory EphemeralEvent.typing({
    required String id,
    required DateTime createdAt,
    String? userId,
  }) = TypingEvent;

  /// The `presence` variant; returns a [PresenceEvent] instance.
  const factory EphemeralEvent.presence({
    required String id,
    required DateTime createdAt,
    bool online,
  }) = PresenceEvent;

  /// Deserializes by switching on `type`; unrecognized values yield a
  /// [EphemeralEventUnknown] carrying the raw JSON instead of throwing.
  factory EphemeralEvent.fromJson(Map<String, dynamic> json) =>
      switch (json['type']) {
        'typing' => TypingEvent.fromJson(json),
        'presence' => PresenceEvent.fromJson(json),
        _ => EphemeralEventUnknown(Map<String, dynamic>.from(json)),
      };

  // Fields shared by every variant.
  String get id;
  DateTime get createdAt;

  Map<String, dynamic> toJson();
}

/// Fallback [StreamEvent] variant for unrecognized `type` values.
///
/// Preserves the raw wire payload losslessly: [toJson] returns it unchanged,
/// so unknown variants survive persistence and re-serialization. Common
/// fields are decoded lazily from the raw JSON.
final class StreamEventUnknown implements StreamEvent {
  const StreamEventUnknown(this.json);

  /// The raw wire payload.
  final Map<String, dynamic> json;

  @override
  Map<String, dynamic> toJson() => json;

  @override
  String get id => json['id'] as String;

  @override
  DateTime get createdAt => DateTime.parse(json['created_at'] as String);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StreamEventUnknown &&
          const DeepCollectionEquality().equals(json, other.json);

  @override
  int get hashCode => const DeepCollectionEquality().hash(json);

  @override
  String toString() => 'StreamEventUnknown(json: $json)';
}

/// Fallback [EphemeralEvent] variant for unrecognized `type` values.
///
/// Preserves the raw wire payload losslessly: [toJson] returns it unchanged,
/// so unknown variants survive persistence and re-serialization. Common
/// fields are decoded lazily from the raw JSON.
final class EphemeralEventUnknown implements EphemeralEvent {
  const EphemeralEventUnknown(this.json);

  /// The raw wire payload.
  final Map<String, dynamic> json;

  @override
  Map<String, dynamic> toJson() => json;

  @override
  String get id => json['id'] as String;

  @override
  DateTime get createdAt => DateTime.parse(json['created_at'] as String);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EphemeralEventUnknown &&
          const DeepCollectionEquality().equals(json, other.json);

  @override
  int get hashCode => const DeepCollectionEquality().hash(json);

  @override
  String toString() => 'EphemeralEventUnknown(json: $json)';
}

@Freezed()
abstract class MessageEvent with _$MessageEvent implements StreamEvent {
  const factory MessageEvent({
    required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required String text,
    @Default('message') String type,
  }) = _MessageEvent;

  Map<String, dynamic> toJson() => _$MessageEventToJson(this as _MessageEvent);
  factory MessageEvent.fromJson(Map<String, Object?> json) =>
      _$MessageEventFromJson(json);
}

extension MessageEventMergeX on MessageEvent {
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

@Freezed()
abstract class PresenceEvent
    with _$PresenceEvent
    implements StreamEvent, EphemeralEvent {
  const factory PresenceEvent({
    required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @Default('presence') String type,
    @Default(false) bool online,
  }) = _PresenceEvent;

  Map<String, dynamic> toJson() =>
      _$PresenceEventToJson(this as _PresenceEvent);
  factory PresenceEvent.fromJson(Map<String, Object?> json) =>
      _$PresenceEventFromJson(json);
}

extension PresenceEventMergeX on PresenceEvent {
  /// Returns a new [PresenceEvent] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PresenceEvent merge(PresenceEvent other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      online: other.online,
    );
  }
}

@Freezed()
abstract class TypingEvent
    with _$TypingEvent
    implements StreamEvent, EphemeralEvent {
  const factory TypingEvent({
    required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(includeIfNull: false, name: 'user_id') String? userId,
    @Default('typing') String type,
  }) = _TypingEvent;

  Map<String, dynamic> toJson() => _$TypingEventToJson(this as _TypingEvent);
  factory TypingEvent.fromJson(Map<String, Object?> json) =>
      _$TypingEventFromJson(json);
}

extension TypingEventMergeX on TypingEvent {
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

/// `copyWith` over the fields shared by every [StreamEvent] variant.
extension StreamEventCopyWithX on StreamEvent {
  /// Returns a copy of this variant with the provided common fields replaced.
  ///
  /// Throws [UnsupportedError] for [StreamEventUnknown]: an unknown payload
  /// cannot be reconstructed field-by-field.
  StreamEvent copyWith({Object? id = freezed, Object? createdAt = freezed}) =>
      switch (this) {
        MessageEvent v => v.copyWith(
          id: identical(id, freezed) ? v.id : id as String,
          createdAt: identical(createdAt, freezed)
              ? v.createdAt
              : createdAt as DateTime,
        ),
        TypingEvent v => v.copyWith(
          id: identical(id, freezed) ? v.id : id as String,
          createdAt: identical(createdAt, freezed)
              ? v.createdAt
              : createdAt as DateTime,
        ),
        PresenceEvent v => v.copyWith(
          id: identical(id, freezed) ? v.id : id as String,
          createdAt: identical(createdAt, freezed)
              ? v.createdAt
              : createdAt as DateTime,
        ),
        StreamEventUnknown _ => throw UnsupportedError(
          'Cannot copyWith an unknown StreamEvent variant',
        ),
      };
}

/// Freezed-style `map` dispatch with leaf-typed callbacks.
extension StreamEventMapX on StreamEvent {
  /// Dispatches to the callback matching this variant.
  ///
  /// [unknown] handles [StreamEventUnknown]; when omitted, an unknown variant
  /// throws a [StateError].
  TResult map<TResult extends Object?>({
    required TResult Function(MessageEvent value) message,
    required TResult Function(TypingEvent value) typing,
    required TResult Function(PresenceEvent value) presence,
    TResult Function(StreamEventUnknown value)? unknown,
  }) => switch (this) {
    MessageEvent v => message(v),
    TypingEvent v => typing(v),
    PresenceEvent v => presence(v),
    StreamEventUnknown v =>
      unknown != null
          ? unknown(v)
          : throw StateError('Unhandled unknown StreamEvent variant: $v'),
  };

  /// Like [map] but returns null for variants without a callback.
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageEvent value)? message,
    TResult? Function(TypingEvent value)? typing,
    TResult? Function(PresenceEvent value)? presence,
    TResult? Function(StreamEventUnknown value)? unknown,
  }) => switch (this) {
    MessageEvent v => message?.call(v),
    TypingEvent v => typing?.call(v),
    PresenceEvent v => presence?.call(v),
    StreamEventUnknown v => unknown?.call(v),
  };

  /// Like [map] but falls back to [orElse] for variants without a callback.
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageEvent value)? message,
    TResult Function(TypingEvent value)? typing,
    TResult Function(PresenceEvent value)? presence,
    TResult Function(StreamEventUnknown value)? unknown,
    required TResult Function() orElse,
  }) => switch (this) {
    MessageEvent v when message != null => message(v),
    TypingEvent v when typing != null => typing(v),
    PresenceEvent v when presence != null => presence(v),
    StreamEventUnknown v when unknown != null => unknown(v),
    _ => orElse(),
  };
}

/// `copyWith` over the fields shared by every [EphemeralEvent] variant.
extension EphemeralEventCopyWithX on EphemeralEvent {
  /// Returns a copy of this variant with the provided common fields replaced.
  ///
  /// Throws [UnsupportedError] for [EphemeralEventUnknown]: an unknown payload
  /// cannot be reconstructed field-by-field.
  EphemeralEvent copyWith({
    Object? id = freezed,
    Object? createdAt = freezed,
  }) => switch (this) {
    TypingEvent v => v.copyWith(
      id: identical(id, freezed) ? v.id : id as String,
      createdAt: identical(createdAt, freezed)
          ? v.createdAt
          : createdAt as DateTime,
    ),
    PresenceEvent v => v.copyWith(
      id: identical(id, freezed) ? v.id : id as String,
      createdAt: identical(createdAt, freezed)
          ? v.createdAt
          : createdAt as DateTime,
    ),
    EphemeralEventUnknown _ => throw UnsupportedError(
      'Cannot copyWith an unknown EphemeralEvent variant',
    ),
  };
}

/// Freezed-style `map` dispatch with leaf-typed callbacks.
extension EphemeralEventMapX on EphemeralEvent {
  /// Dispatches to the callback matching this variant.
  ///
  /// [unknown] handles [EphemeralEventUnknown]; when omitted, an unknown variant
  /// throws a [StateError].
  TResult map<TResult extends Object?>({
    required TResult Function(TypingEvent value) typing,
    required TResult Function(PresenceEvent value) presence,
    TResult Function(EphemeralEventUnknown value)? unknown,
  }) => switch (this) {
    TypingEvent v => typing(v),
    PresenceEvent v => presence(v),
    EphemeralEventUnknown v =>
      unknown != null
          ? unknown(v)
          : throw StateError('Unhandled unknown EphemeralEvent variant: $v'),
  };

  /// Like [map] but returns null for variants without a callback.
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypingEvent value)? typing,
    TResult? Function(PresenceEvent value)? presence,
    TResult? Function(EphemeralEventUnknown value)? unknown,
  }) => switch (this) {
    TypingEvent v => typing?.call(v),
    PresenceEvent v => presence?.call(v),
    EphemeralEventUnknown v => unknown?.call(v),
  };

  /// Like [map] but falls back to [orElse] for variants without a callback.
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypingEvent value)? typing,
    TResult Function(PresenceEvent value)? presence,
    TResult Function(EphemeralEventUnknown value)? unknown,
    required TResult Function() orElse,
  }) => switch (this) {
    TypingEvent v when typing != null => typing(v),
    PresenceEvent v when presence != null => presence(v),
    EphemeralEventUnknown v when unknown != null => unknown(v),
    _ => orElse(),
  };
}
