// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_log_request_level_level.dart';

part 'app_log_request.freezed.dart';
part 'app_log_request.g.dart';

@Freezed()
abstract class AppLogRequest with _$AppLogRequest {
  const factory AppLogRequest({
    /// Service name for the log entry
    required String service,

    /// Log level
    required AppLogRequestLevelLevel level,

    /// Log message
    required String message,

    /// Additional metadata for the log entry
    Map<String, dynamic>? extra,
  }) = _AppLogRequest;

  Map<String, dynamic> toJson() =>
      _$AppLogRequestToJson(this as _AppLogRequest);
  factory AppLogRequest.fromJson(Map<String, Object?> json) =>
      _$AppLogRequestFromJson(json);
}

extension AppLogRequestMergeX on AppLogRequest {
  /// Returns a new [AppLogRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AppLogRequest merge(AppLogRequest other) {
    return copyWith(
      service: other.service,
      level: other.level,
      message: other.message,
      extra: other.extra,
    );
  }
}
