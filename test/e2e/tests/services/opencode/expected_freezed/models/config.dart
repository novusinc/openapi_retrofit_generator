// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'agent_config.dart';
import 'command.dart';
import 'config_experimental.dart';
import 'config_permission.dart';
import 'config_share_share.dart';
import 'config_tui.dart';
import 'config_watcher.dart';
import 'formatter.dart';
import 'keybinds_config.dart';
import 'layout_config.dart';
import 'lsp.dart';
import 'mcp.dart';
import 'provider.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@Freezed()
abstract class Config with _$Config {
  const factory Config({
    /// JSON schema reference for configuration validation
    @JsonKey(name: '\$schema') String? schema,

    /// Theme name to use for the interface
    String? theme,
    KeybindsConfig? keybinds,

    /// TUI specific settings
    ConfigTui? tui,

    /// Command configuration, see https://opencode.ai/docs/commands
    Map<String, Command>? command,
    ConfigWatcher? watcher,
    List<String>? plugin,
    bool? snapshot,

    /// Control sharing behavior:'manual' allows manual sharing via commands, 'auto' enables automatic sharing, 'disabled' disables all sharing
    ConfigShareShare? share,

    /// @deprecated Use 'share' field instead. Share newly created sessions automatically
    bool? autoshare,

    /// Automatically update to the latest version
    bool? autoupdate,

    /// Disable providers that are loaded automatically
    @JsonKey(name: 'disabled_providers') List<String>? disabledProviders,

    /// Model to use in the format of provider/model, eg anthropic/claude-2
    String? model,

    /// Small model to use for tasks like title generation in the format of provider/model
    @JsonKey(name: 'small_model') String? smallModel,

    /// Custom username to display in conversations instead of system username
    String? username,

    /// @deprecated Use `agent` field instead.
    Map<String, AgentConfig>? mode,

    /// Agent configuration, see https://opencode.ai/docs/agent
    Map<String, AgentConfig>? agent,

    /// Custom provider configurations and model overrides
    Map<String, Provider>? provider,

    /// MCP (Model Context Protocol) server configurations
    Map<String, Mcp>? mcp,
    Map<String, Formatter>? formatter,
    Map<String, Lsp>? lsp,

    /// Additional instruction files or patterns to include
    List<String>? instructions,
    LayoutConfig? layout,
    ConfigPermission? permission,
    Map<String, bool>? tools,
    ConfigExperimental? experimental,
  }) = _Config;

  Map<String, dynamic> toJson() => _$ConfigToJson(this as _Config);
  factory Config.fromJson(Map<String, Object?> json) => _$ConfigFromJson(json);
}

extension ConfigMergeX on Config {
  /// Returns a new [Config] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Config merge(Config other) {
    return copyWith(
      schema: other.schema,
      theme: other.theme,
      keybinds: other.keybinds,
      tui: other.tui,
      command: other.command,
      watcher: other.watcher,
      plugin: other.plugin,
      snapshot: other.snapshot,
      share: other.share,
      autoshare: other.autoshare,
      autoupdate: other.autoupdate,
      disabledProviders: other.disabledProviders,
      model: other.model,
      smallModel: other.smallModel,
      username: other.username,
      mode: other.mode,
      agent: other.agent,
      provider: other.provider,
      mcp: other.mcp,
      formatter: other.formatter,
      lsp: other.lsp,
      instructions: other.instructions,
      layout: other.layout,
      permission: other.permission,
      tools: other.tools,
      experimental: other.experimental,
    );
  }
}
