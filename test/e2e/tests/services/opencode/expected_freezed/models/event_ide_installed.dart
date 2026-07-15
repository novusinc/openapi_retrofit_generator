// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_ide_installed_properties.dart';

part 'event_ide_installed.freezed.dart';
part 'event_ide_installed.g.dart';

@Freezed()
abstract class EventIdeInstalled with _$EventIdeInstalled {
  const factory EventIdeInstalled({
    required String type,
    required EventIdeInstalledProperties properties,
  }) = _EventIdeInstalled;

  Map<String, dynamic> toJson() =>
      _$EventIdeInstalledToJson(this as _EventIdeInstalled);
  factory EventIdeInstalled.fromJson(Map<String, Object?> json) =>
      _$EventIdeInstalledFromJson(json);
}

extension EventIdeInstalledMergeX on EventIdeInstalled {
  /// Returns a new [EventIdeInstalled] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventIdeInstalled merge(EventIdeInstalled other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
