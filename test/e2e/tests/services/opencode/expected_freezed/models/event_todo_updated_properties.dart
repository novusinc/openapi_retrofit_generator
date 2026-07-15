// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'todo.dart';

part 'event_todo_updated_properties.freezed.dart';
part 'event_todo_updated_properties.g.dart';

@Freezed()
abstract class EventTodoUpdatedProperties with _$EventTodoUpdatedProperties {
  const factory EventTodoUpdatedProperties({
    @JsonKey(name: 'sessionID') required String sessionId,
    required List<Todo> todos,
  }) = _EventTodoUpdatedProperties;

  Map<String, dynamic> toJson() =>
      _$EventTodoUpdatedPropertiesToJson(this as _EventTodoUpdatedProperties);
  factory EventTodoUpdatedProperties.fromJson(Map<String, Object?> json) =>
      _$EventTodoUpdatedPropertiesFromJson(json);
}

extension EventTodoUpdatedPropertiesMergeX on EventTodoUpdatedProperties {
  /// Returns a new [EventTodoUpdatedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventTodoUpdatedProperties merge(EventTodoUpdatedProperties other) {
    return copyWith(sessionId: other.sessionId, todos: other.todos);
  }
}
