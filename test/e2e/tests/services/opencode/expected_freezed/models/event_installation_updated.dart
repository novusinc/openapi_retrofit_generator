// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_installation_updated_properties.dart';

part 'event_installation_updated.freezed.dart';
part 'event_installation_updated.g.dart';

@Freezed()
abstract class EventInstallationUpdated with _$EventInstallationUpdated {
  const factory EventInstallationUpdated({
    required String type,
    required EventInstallationUpdatedProperties properties,
  }) = _EventInstallationUpdated;

  Map<String, dynamic> toJson() =>
      _$EventInstallationUpdatedToJson(this as _EventInstallationUpdated);
  factory EventInstallationUpdated.fromJson(Map<String, Object?> json) =>
      _$EventInstallationUpdatedFromJson(json);
}

extension EventInstallationUpdatedMergeX on EventInstallationUpdated {
  /// Returns a new [EventInstallationUpdated] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventInstallationUpdated merge(EventInstallationUpdated other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
