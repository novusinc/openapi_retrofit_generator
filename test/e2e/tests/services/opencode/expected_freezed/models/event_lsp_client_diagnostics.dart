// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_lsp_client_diagnostics_properties.dart';

part 'event_lsp_client_diagnostics.freezed.dart';
part 'event_lsp_client_diagnostics.g.dart';

@Freezed()
abstract class EventLspClientDiagnostics with _$EventLspClientDiagnostics {
  const factory EventLspClientDiagnostics({
    required String type,
    required EventLspClientDiagnosticsProperties properties,
  }) = _EventLspClientDiagnostics;

  Map<String, dynamic> toJson() =>
      _$EventLspClientDiagnosticsToJson(this as _EventLspClientDiagnostics);
  factory EventLspClientDiagnostics.fromJson(Map<String, Object?> json) =>
      _$EventLspClientDiagnosticsFromJson(json);
}

extension EventLspClientDiagnosticsMergeX on EventLspClientDiagnostics {
  /// Returns a new [EventLspClientDiagnostics] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  EventLspClientDiagnostics merge(EventLspClientDiagnostics other) {
    return copyWith(type: other.type, properties: other.properties);
  }
}
