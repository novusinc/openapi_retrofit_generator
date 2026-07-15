// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_lsp_client_diagnostics_properties.freezed.dart';
part 'event_lsp_client_diagnostics_properties.g.dart';

@Freezed()
abstract class EventLspClientDiagnosticsProperties
    with _$EventLspClientDiagnosticsProperties {
  const factory EventLspClientDiagnosticsProperties({
    @JsonKey(name: 'serverID') required String serverId,
    required String path,
  }) = _EventLspClientDiagnosticsProperties;

  Map<String, dynamic> toJson() => _$EventLspClientDiagnosticsPropertiesToJson(
    this as _EventLspClientDiagnosticsProperties,
  );
  factory EventLspClientDiagnosticsProperties.fromJson(
    Map<String, Object?> json,
  ) => _$EventLspClientDiagnosticsPropertiesFromJson(json);
}

extension EventLspClientDiagnosticsPropertiesMergeX
    on EventLspClientDiagnosticsProperties {
  /// Returns a new [EventLspClientDiagnosticsProperties] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventLspClientDiagnosticsProperties merge(
    EventLspClientDiagnosticsProperties other,
  ) {
    return copyWith(serverId: other.serverId, path: other.path);
  }
}
