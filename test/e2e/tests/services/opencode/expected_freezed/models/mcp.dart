// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'mcp.g.dart';

class Mcp {
  final Map<String, dynamic> _json;

  const Mcp(this._json);

  factory Mcp.fromJson(Map<String, dynamic> json) => Mcp(json);

  Map<String, dynamic> toJson() => _json;

  McpMcpLocalConfig toMcpLocalConfig() => McpMcpLocalConfig.fromJson(_json);
  McpMcpRemoteConfig toMcpRemoteConfig() => McpMcpRemoteConfig.fromJson(_json);
}

@JsonSerializable()
class McpMcpLocalConfig {
  final String type;
  final List<String> command;
  final Map<String, String>? environment;
  final bool? enabled;

  const McpMcpLocalConfig({
    required this.type,
    required this.command,
    required this.environment,
    required this.enabled,
  });

  factory McpMcpLocalConfig.fromJson(Map<String, Object?> json) =>
      _$McpMcpLocalConfigFromJson(json);

  Map<String, Object?> toJson() => _$McpMcpLocalConfigToJson(this);
}

@JsonSerializable()
class McpMcpRemoteConfig {
  final String type;
  final String url;
  final bool? enabled;
  final Map<String, String>? headers;

  const McpMcpRemoteConfig({
    required this.type,
    required this.url,
    required this.enabled,
    required this.headers,
  });

  factory McpMcpRemoteConfig.fromJson(Map<String, Object?> json) =>
      _$McpMcpRemoteConfigFromJson(json);

  Map<String, Object?> toJson() => _$McpMcpRemoteConfigToJson(this);
}
