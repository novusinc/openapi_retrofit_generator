// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_installation_updated_properties.freezed.dart';
part 'event_installation_updated_properties.g.dart';

@Freezed()
abstract class EventInstallationUpdatedProperties
    with _$EventInstallationUpdatedProperties {
  const factory EventInstallationUpdatedProperties({required String version}) =
      _EventInstallationUpdatedProperties;

  Map<String, dynamic> toJson() => _$EventInstallationUpdatedPropertiesToJson(
    this as _EventInstallationUpdatedProperties,
  );
  factory EventInstallationUpdatedProperties.fromJson(
    Map<String, Object?> json,
  ) => _$EventInstallationUpdatedPropertiesFromJson(json);
}

extension EventInstallationUpdatedPropertiesMergeX
    on EventInstallationUpdatedProperties {
  /// Returns a new [EventInstallationUpdatedProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventInstallationUpdatedProperties merge(
    EventInstallationUpdatedProperties other,
  ) {
    return copyWith(version: other.version);
  }
}
