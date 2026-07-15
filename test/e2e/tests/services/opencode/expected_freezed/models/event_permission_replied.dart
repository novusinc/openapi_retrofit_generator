// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_permission_replied_properties.dart';

part 'event_permission_replied.freezed.dart';
part 'event_permission_replied.g.dart';

@Freezed()
abstract class EventPermissionReplied with _$EventPermissionReplied {
  const factory EventPermissionReplied({
    required String type,
    required EventPermissionRepliedProperties properties,
  }) = _EventPermissionReplied;

  Map<String, dynamic> toJson() =>
      _$EventPermissionRepliedToJson(this as _EventPermissionReplied);
  factory EventPermissionReplied.fromJson(Map<String, Object?> json) =>
      _$EventPermissionRepliedFromJson(json);
}

extension EventPermissionRepliedMergeX on EventPermissionReplied {
  /// Returns a new [EventPermissionReplied] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventPermissionReplied merge(EventPermissionReplied other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
