// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';
import 'part_model.dart';

part 'session_messages_response.freezed.dart';
part 'session_messages_response.g.dart';

@Freezed()
abstract class SessionMessagesResponse with _$SessionMessagesResponse {
  const factory SessionMessagesResponse({
    required Message info,
    required List<PartModel> parts,
  }) = _SessionMessagesResponse;

  Map<String, dynamic> toJson() =>
      _$SessionMessagesResponseToJson(this as _SessionMessagesResponse);
  factory SessionMessagesResponse.fromJson(Map<String, Object?> json) =>
      _$SessionMessagesResponseFromJson(json);
}

extension SessionMessagesResponseMergeX on SessionMessagesResponse {
  /// Returns a new [SessionMessagesResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionMessagesResponse merge(SessionMessagesResponse other) {
    return copyWith(info: other.info, parts: other.parts);
  }
}
