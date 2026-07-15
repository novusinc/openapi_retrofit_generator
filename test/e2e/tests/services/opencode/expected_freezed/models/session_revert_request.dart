// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_revert_request.freezed.dart';
part 'session_revert_request.g.dart';

@Freezed()
abstract class SessionRevertRequest with _$SessionRevertRequest {
  const factory SessionRevertRequest({
    @JsonKey(name: 'messageID') required String messageId,
    @JsonKey(name: 'partID') String? partId,
  }) = _SessionRevertRequest;

  Map<String, dynamic> toJson() =>
      _$SessionRevertRequestToJson(this as _SessionRevertRequest);
  factory SessionRevertRequest.fromJson(Map<String, Object?> json) =>
      _$SessionRevertRequestFromJson(json);
}

extension SessionRevertRequestMergeX on SessionRevertRequest {
  /// Returns a new [SessionRevertRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionRevertRequest merge(SessionRevertRequest other) {
    return copyWith(messageId: other.messageId, partId: other.partId);
  }
}
