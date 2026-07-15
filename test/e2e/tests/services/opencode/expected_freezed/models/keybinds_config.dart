// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'keybinds_config.freezed.dart';
part 'keybinds_config.g.dart';

/// Custom keybind configurations
@Freezed()
abstract class KeybindsConfig with _$KeybindsConfig {
  const factory KeybindsConfig({
    /// Cycle to next child session
    @JsonKey(name: 'session_child_cycle')
    @Default('ctrl+right')
    String sessionChildCycle,

    /// Show help dialog
    @JsonKey(name: 'app_help') @Default('<leader>h') String appHelp,

    /// Exit the application
    @JsonKey(name: 'app_exit') @Default('ctrl+c,<leader>q') String appExit,

    /// Open external editor
    @JsonKey(name: 'editor_open') @Default('<leader>e') String editorOpen,

    /// List available themes
    @JsonKey(name: 'theme_list') @Default('<leader>t') String themeList,

    /// Create/update AGENTS.md
    @JsonKey(name: 'project_init') @Default('<leader>i') String projectInit,

    /// Toggle tool details
    @JsonKey(name: 'tool_details') @Default('<leader>d') String toolDetails,

    /// Toggle thinking blocks
    @JsonKey(name: 'thinking_blocks')
    @Default('<leader>b')
    String thinkingBlocks,

    /// Export session to editor
    @JsonKey(name: 'session_export') @Default('<leader>x') String sessionExport,

    /// Create a new session
    @JsonKey(name: 'session_new') @Default('<leader>n') String sessionNew,

    /// List all sessions
    @JsonKey(name: 'session_list') @Default('<leader>l') String sessionList,

    /// Show session timeline
    @JsonKey(name: 'session_timeline')
    @Default('<leader>g')
    String sessionTimeline,

    /// Share current session
    @JsonKey(name: 'session_share') @Default('<leader>s') String sessionShare,

    /// Unshare current session
    @JsonKey(name: 'session_unshare') @Default('none') String sessionUnshare,

    /// Interrupt current session
    @JsonKey(name: 'session_interrupt') @Default('esc') String sessionInterrupt,

    /// Compact the session
    @JsonKey(name: 'session_compact')
    @Default('<leader>c')
    String sessionCompact,

    /// Leader key for keybind combinations
    @Default('ctrl+x') String leader,

    /// Cycle to previous child session
    @JsonKey(name: 'session_child_cycle_reverse')
    @Default('ctrl+left')
    String sessionChildCycleReverse,

    /// Scroll messages up by one page
    @JsonKey(name: 'messages_page_up') @Default('pgup') String messagesPageUp,

    /// Scroll messages down by one page
    @JsonKey(name: 'messages_page_down')
    @Default('pgdown')
    String messagesPageDown,

    /// Scroll messages up by half page
    @JsonKey(name: 'messages_half_page_up')
    @Default('ctrl+alt+u')
    String messagesHalfPageUp,

    /// Scroll messages down by half page
    @JsonKey(name: 'messages_half_page_down')
    @Default('ctrl+alt+d')
    String messagesHalfPageDown,

    /// Navigate to first message
    @JsonKey(name: 'messages_first') @Default('ctrl+g') String messagesFirst,

    /// Navigate to last message
    @JsonKey(name: 'messages_last') @Default('ctrl+alt+g') String messagesLast,

    /// Copy message
    @JsonKey(name: 'messages_copy') @Default('<leader>y') String messagesCopy,

    /// Undo message
    @JsonKey(name: 'messages_undo') @Default('<leader>u') String messagesUndo,

    /// Redo message
    @JsonKey(name: 'messages_redo') @Default('<leader>r') String messagesRedo,

    /// List available models
    @JsonKey(name: 'model_list') @Default('<leader>m') String modelList,

    /// Next recent model
    @JsonKey(name: 'model_cycle_recent') @Default('f2') String modelCycleRecent,

    /// Previous recent model
    @JsonKey(name: 'model_cycle_recent_reverse')
    @Default('shift+f2')
    String modelCycleRecentReverse,

    /// List agents
    @JsonKey(name: 'agent_list') @Default('<leader>a') String agentList,

    /// Next agent
    @JsonKey(name: 'agent_cycle') @Default('tab') String agentCycle,

    /// @deprecated use messages_undo. Revert message
    @JsonKey(name: 'messages_revert') @Default('none') String messagesRevert,

    /// Clear input field
    @JsonKey(name: 'input_clear') @Default('ctrl+c') String inputClear,

    /// Paste from clipboard
    @JsonKey(name: 'input_paste') @Default('ctrl+v') String inputPaste,

    /// Submit input
    @JsonKey(name: 'input_submit') @Default('enter') String inputSubmit,

    /// Insert newline in input
    @JsonKey(name: 'input_newline')
    @Default('shift+enter,ctrl+j')
    String inputNewline,

    /// @deprecated use agent_cycle. Next mode
    @JsonKey(name: 'switch_mode') @Default('none') String switchMode,

    /// @deprecated use agent_cycle_reverse. Previous mode
    @JsonKey(name: 'switch_mode_reverse')
    @Default('none')
    String switchModeReverse,

    /// @deprecated use agent_cycle. Next agent
    @JsonKey(name: 'switch_agent') @Default('tab') String switchAgent,

    /// @deprecated use agent_cycle_reverse. Previous agent
    @JsonKey(name: 'switch_agent_reverse')
    @Default('shift+tab')
    String switchAgentReverse,

    /// @deprecated Currently not available. List files
    @JsonKey(name: 'file_list') @Default('none') String fileList,

    /// @deprecated Close file
    @JsonKey(name: 'file_close') @Default('none') String fileClose,

    /// @deprecated Search file
    @JsonKey(name: 'file_search') @Default('none') String fileSearch,

    /// @deprecated Split/unified diff
    @JsonKey(name: 'file_diff_toggle') @Default('none') String fileDiffToggle,

    /// @deprecated Navigate to previous message
    @JsonKey(name: 'messages_previous')
    @Default('none')
    String messagesPrevious,

    /// @deprecated Navigate to next message
    @JsonKey(name: 'messages_next') @Default('none') String messagesNext,

    /// @deprecated Toggle layout
    @JsonKey(name: 'messages_layout_toggle')
    @Default('none')
    String messagesLayoutToggle,

    /// Previous agent
    @JsonKey(name: 'agent_cycle_reverse')
    @Default('shift+tab')
    String agentCycleReverse,
  }) = _KeybindsConfig;

  Map<String, dynamic> toJson() =>
      _$KeybindsConfigToJson(this as _KeybindsConfig);
  factory KeybindsConfig.fromJson(Map<String, Object?> json) =>
      _$KeybindsConfigFromJson(json);
}

extension KeybindsConfigMergeX on KeybindsConfig {
  /// Returns a new [KeybindsConfig] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  KeybindsConfig merge(KeybindsConfig other) {
    return copyWith(
      leader: other.leader,
      appHelp: other.appHelp,
      appExit: other.appExit,
      editorOpen: other.editorOpen,
      themeList: other.themeList,
      projectInit: other.projectInit,
      toolDetails: other.toolDetails,
      thinkingBlocks: other.thinkingBlocks,
      sessionExport: other.sessionExport,
      sessionNew: other.sessionNew,
      sessionList: other.sessionList,
      sessionTimeline: other.sessionTimeline,
      sessionShare: other.sessionShare,
      sessionUnshare: other.sessionUnshare,
      sessionInterrupt: other.sessionInterrupt,
      sessionCompact: other.sessionCompact,
      sessionChildCycle: other.sessionChildCycle,
      sessionChildCycleReverse: other.sessionChildCycleReverse,
      messagesPageUp: other.messagesPageUp,
      messagesPageDown: other.messagesPageDown,
      messagesHalfPageUp: other.messagesHalfPageUp,
      messagesHalfPageDown: other.messagesHalfPageDown,
      messagesFirst: other.messagesFirst,
      messagesLast: other.messagesLast,
      messagesCopy: other.messagesCopy,
      messagesUndo: other.messagesUndo,
      messagesRedo: other.messagesRedo,
      modelList: other.modelList,
      modelCycleRecent: other.modelCycleRecent,
      modelCycleRecentReverse: other.modelCycleRecentReverse,
      agentList: other.agentList,
      agentCycle: other.agentCycle,
      agentCycleReverse: other.agentCycleReverse,
      inputClear: other.inputClear,
      inputPaste: other.inputPaste,
      inputSubmit: other.inputSubmit,
      inputNewline: other.inputNewline,
      switchMode: other.switchMode,
      switchModeReverse: other.switchModeReverse,
      switchAgent: other.switchAgent,
      switchAgentReverse: other.switchAgentReverse,
      fileList: other.fileList,
      fileClose: other.fileClose,
      fileSearch: other.fileSearch,
      fileDiffToggle: other.fileDiffToggle,
      messagesPrevious: other.messagesPrevious,
      messagesNext: other.messagesNext,
      messagesLayoutToggle: other.messagesLayoutToggle,
      messagesRevert: other.messagesRevert,
    );
  }
}
