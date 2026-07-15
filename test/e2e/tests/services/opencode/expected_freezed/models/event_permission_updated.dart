// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'permission.dart';

part 'event_permission_updated.freezed.dart';
part 'event_permission_updated.g.dart';

@Freezed()
abstract class EventPermissionUpdated with _$EventPermissionUpdated {
  const factory EventPermissionUpdated({
    required String type,
    required Permission properties,
  }) = _EventPermissionUpdated;

  Map<String, dynamic> toJson() =>
      _$EventPermissionUpdatedToJson(this as _EventPermissionUpdated);
  factory EventPermissionUpdated.fromJson(Map<String, Object?> json) =>
      _$EventPermissionUpdatedFromJson(json);
}

extension EventPermissionUpdatedMergeX on EventPermissionUpdated {
  /// Returns a new [EventPermissionUpdated] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventPermissionUpdated merge(EventPermissionUpdated other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
