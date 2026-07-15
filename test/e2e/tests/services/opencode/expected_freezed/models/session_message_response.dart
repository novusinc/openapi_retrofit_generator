// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';
import 'part_model.dart';

part 'session_message_response.freezed.dart';
part 'session_message_response.g.dart';

@Freezed()
abstract class SessionMessageResponse with _$SessionMessageResponse {
  const factory SessionMessageResponse({
    required Message info,
    required List<PartModel> parts,
  }) = _SessionMessageResponse;

  Map<String, dynamic> toJson() =>
      _$SessionMessageResponseToJson(this as _SessionMessageResponse);
  factory SessionMessageResponse.fromJson(Map<String, Object?> json) =>
      _$SessionMessageResponseFromJson(json);
}

extension SessionMessageResponseMergeX on SessionMessageResponse {
  /// Returns a new [SessionMessageResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionMessageResponse merge(SessionMessageResponse other) {
    return copyWith(info: other.info, parts: other.parts);
  }
}
