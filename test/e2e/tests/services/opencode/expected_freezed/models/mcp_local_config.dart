// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mcp_local_config.freezed.dart';
part 'mcp_local_config.g.dart';

@Freezed()
abstract class McpLocalConfig with _$McpLocalConfig {
  const factory McpLocalConfig({
    /// Type of MCP server connection
    required String type,

    /// Command and arguments to run the MCP server
    required List<String> command,

    /// Environment variables to set when running the MCP server
    Map<String, String>? environment,

    /// Enable or disable the MCP server on startup
    bool? enabled,
  }) = _McpLocalConfig;

  Map<String, dynamic> toJson() =>
      _$McpLocalConfigToJson(this as _McpLocalConfig);
  factory McpLocalConfig.fromJson(Map<String, Object?> json) =>
      _$McpLocalConfigFromJson(json);
}

extension McpLocalConfigMergeX on McpLocalConfig {
  /// Returns a new [McpLocalConfig] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  McpLocalConfig merge(McpLocalConfig other) {
    return copyWith(
      type: other.type,
      command: other.command,
      environment: other.environment,
      enabled: other.enabled,
    );
  }
}
