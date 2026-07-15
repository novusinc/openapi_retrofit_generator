// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'assistant_message.dart';
import 'part_model.dart';

part 'session_command_response.freezed.dart';
part 'session_command_response.g.dart';

@Freezed()
abstract class SessionCommandResponse with _$SessionCommandResponse {
  const factory SessionCommandResponse({
    required AssistantMessage info,
    required List<PartModel> parts,
  }) = _SessionCommandResponse;

  Map<String, dynamic> toJson() =>
      _$SessionCommandResponseToJson(this as _SessionCommandResponse);
  factory SessionCommandResponse.fromJson(Map<String, Object?> json) =>
      _$SessionCommandResponseFromJson(json);
}

extension SessionCommandResponseMergeX on SessionCommandResponse {
  /// Returns a new [SessionCommandResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionCommandResponse merge(SessionCommandResponse other) {
    return copyWith(info: other.info, parts: other.parts);
  }
}
