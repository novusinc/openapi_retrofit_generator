// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mcp_remote_config.freezed.dart';
part 'mcp_remote_config.g.dart';

@Freezed()
abstract class McpRemoteConfig with _$McpRemoteConfig {
  const factory McpRemoteConfig({
    /// Type of MCP server connection
    required String type,

    /// URL of the remote MCP server
    required String url,

    /// Enable or disable the MCP server on startup
    bool? enabled,

    /// Headers to send with the request
    Map<String, String>? headers,
  }) = _McpRemoteConfig;

  Map<String, dynamic> toJson() =>
      _$McpRemoteConfigToJson(this as _McpRemoteConfig);
  factory McpRemoteConfig.fromJson(Map<String, Object?> json) =>
      _$McpRemoteConfigFromJson(json);
}

extension McpRemoteConfigMergeX on McpRemoteConfig {
  /// Returns a new [McpRemoteConfig] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  McpRemoteConfig merge(McpRemoteConfig other) {
    return copyWith(
      type: other.type,
      url: other.url,
      enabled: other.enabled,
      headers: other.headers,
    );
  }
}
