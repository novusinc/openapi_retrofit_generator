// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_create_request.freezed.dart';
part 'session_create_request.g.dart';

@Freezed()
abstract class SessionCreateRequest with _$SessionCreateRequest {
  const factory SessionCreateRequest({
    @JsonKey(name: 'parentID') String? parentId,
    String? title,
  }) = _SessionCreateRequest;

  Map<String, dynamic> toJson() =>
      _$SessionCreateRequestToJson(this as _SessionCreateRequest);
  factory SessionCreateRequest.fromJson(Map<String, Object?> json) =>
      _$SessionCreateRequestFromJson(json);
}

extension SessionCreateRequestMergeX on SessionCreateRequest {
  /// Returns a new [SessionCreateRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionCreateRequest merge(SessionCreateRequest other) {
    return copyWith(parentId: other.parentId, title: other.title);
  }
}
