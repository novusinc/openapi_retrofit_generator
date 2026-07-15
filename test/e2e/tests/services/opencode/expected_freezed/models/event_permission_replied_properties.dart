// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_permission_replied_properties.freezed.dart';
part 'event_permission_replied_properties.g.dart';

@Freezed()
abstract class EventPermissionRepliedProperties
    with _$EventPermissionRepliedProperties {
  const factory EventPermissionRepliedProperties({
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'permissionID') required String permissionId,
    required String response,
  }) = _EventPermissionRepliedProperties;

  Map<String, dynamic> toJson() => _$EventPermissionRepliedPropertiesToJson(
    this as _EventPermissionRepliedProperties,
  );
  factory EventPermissionRepliedProperties.fromJson(
    Map<String, Object?> json,
  ) => _$EventPermissionRepliedPropertiesFromJson(json);
}

extension EventPermissionRepliedPropertiesMergeX
    on EventPermissionRepliedProperties {
  /// Returns a new [EventPermissionRepliedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventPermissionRepliedProperties merge(
    EventPermissionRepliedProperties other,
  ) {
    return copyWith(
      sessionId: other.sessionId,
      permissionId: other.permissionId,
      response: other.response,
    );
  }
}
