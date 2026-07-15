// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_ide_installed_properties.freezed.dart';
part 'event_ide_installed_properties.g.dart';

@Freezed()
abstract class EventIdeInstalledProperties with _$EventIdeInstalledProperties {
  const factory EventIdeInstalledProperties({required String ide}) =
      _EventIdeInstalledProperties;

  Map<String, dynamic> toJson() =>
      _$EventIdeInstalledPropertiesToJson(this as _EventIdeInstalledProperties);
  factory EventIdeInstalledProperties.fromJson(Map<String, Object?> json) =>
      _$EventIdeInstalledPropertiesFromJson(json);
}

extension EventIdeInstalledPropertiesMergeX on EventIdeInstalledProperties {
  /// Returns a new [EventIdeInstalledProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventIdeInstalledProperties merge(EventIdeInstalledProperties other) {
    return copyWith(ide: other.ide);
  }
}
