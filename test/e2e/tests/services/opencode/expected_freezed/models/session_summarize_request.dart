// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_summarize_request.freezed.dart';
part 'session_summarize_request.g.dart';

@Freezed()
abstract class SessionSummarizeRequest with _$SessionSummarizeRequest {
  const factory SessionSummarizeRequest({
    @JsonKey(name: 'providerID') required String providerId,
    @JsonKey(name: 'modelID') required String modelId,
  }) = _SessionSummarizeRequest;

  Map<String, dynamic> toJson() =>
      _$SessionSummarizeRequestToJson(this as _SessionSummarizeRequest);
  factory SessionSummarizeRequest.fromJson(Map<String, Object?> json) =>
      _$SessionSummarizeRequestFromJson(json);
}

extension SessionSummarizeRequestMergeX on SessionSummarizeRequest {
  /// Returns a new [SessionSummarizeRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionSummarizeRequest merge(SessionSummarizeRequest other) {
    return copyWith(providerId: other.providerId, modelId: other.modelId);
  }
}
