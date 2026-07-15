// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_todo_updated_properties.dart';

part 'event_todo_updated.freezed.dart';
part 'event_todo_updated.g.dart';

@Freezed()
abstract class EventTodoUpdated with _$EventTodoUpdated {
  const factory EventTodoUpdated({
    required String type,
    required EventTodoUpdatedProperties properties,
  }) = _EventTodoUpdated;

  Map<String, dynamic> toJson() =>
      _$EventTodoUpdatedToJson(this as _EventTodoUpdated);
  factory EventTodoUpdated.fromJson(Map<String, Object?> json) =>
      _$EventTodoUpdatedFromJson(json);
}

extension EventTodoUpdatedMergeX on EventTodoUpdated {
  /// Returns a new [EventTodoUpdated] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventTodoUpdated merge(EventTodoUpdated other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
