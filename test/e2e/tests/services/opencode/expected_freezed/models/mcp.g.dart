// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mcp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

McpMcpLocalConfig _$McpMcpLocalConfigFromJson(Map<String, dynamic> json) =>
    McpMcpLocalConfig(
      type: json['type'] as String,
      command: (json['command'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      environment: (json['environment'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$McpMcpLocalConfigToJson(McpMcpLocalConfig instance) =>
    <String, dynamic>{
      'type': instance.type,
      'command': instance.command,
      'environment': instance.environment,
      'enabled': instance.enabled,
    };

McpMcpRemoteConfig _$McpMcpRemoteConfigFromJson(Map<String, dynamic> json) =>
    McpMcpRemoteConfig(
      type: json['type'] as String,
      url: json['url'] as String,
      enabled: json['enabled'] as bool?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$McpMcpRemoteConfigToJson(McpMcpRemoteConfig instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'enabled': instance.enabled,
      'headers': instance.headers,
    };
