// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_fork_request.freezed.dart';
part 'session_fork_request.g.dart';

@Freezed()
abstract class SessionForkRequest with _$SessionForkRequest {
  const factory SessionForkRequest({
    @JsonKey(name: 'messageID') String? messageId,
  }) = _SessionForkRequest;

  Map<String, dynamic> toJson() =>
      _$SessionForkRequestToJson(this as _SessionForkRequest);
  factory SessionForkRequest.fromJson(Map<String, Object?> json) =>
      _$SessionForkRequestFromJson(json);
}

extension SessionForkRequestMergeX on SessionForkRequest {
  /// Returns a new [SessionForkRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionForkRequest merge(SessionForkRequest other) {
    return copyWith(messageId: other.messageId);
  }
}
