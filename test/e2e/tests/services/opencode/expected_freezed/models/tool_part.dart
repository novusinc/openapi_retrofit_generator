// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tool_state.dart';

part 'tool_part.freezed.dart';
part 'tool_part.g.dart';

@Freezed()
abstract class ToolPart with _$ToolPart {
  const factory ToolPart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    @JsonKey(name: 'callID') required String callId,
    required String tool,
    required ToolState state,
    Map<String, dynamic>? metadata,
  }) = _ToolPart;

  Map<String, dynamic> toJson() => _$ToolPartToJson(this as _ToolPart);
  factory ToolPart.fromJson(Map<String, Object?> json) =>
      _$ToolPartFromJson(json);
}

extension ToolPartMergeX on ToolPart {
  /// Returns a new [ToolPart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ToolPart merge(ToolPart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      callId: other.callId,
      tool: other.tool,
      state: other.state,
      metadata: other.metadata,
    );
  }
}
