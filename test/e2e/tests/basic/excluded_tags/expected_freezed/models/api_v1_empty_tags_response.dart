// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_v1_empty_tags_response.freezed.dart';
part 'api_v1_empty_tags_response.g.dart';

@Freezed()
abstract class ApiV1EmptyTagsResponse with _$ApiV1EmptyTagsResponse {
  const factory ApiV1EmptyTagsResponse({
    @JsonKey(includeIfNull: false) String? emptyTagsField,
  }) = _ApiV1EmptyTagsResponse;

  Map<String, dynamic> toJson() =>
      _$ApiV1EmptyTagsResponseToJson(this as _ApiV1EmptyTagsResponse);
  factory ApiV1EmptyTagsResponse.fromJson(Map<String, Object?> json) =>
      _$ApiV1EmptyTagsResponseFromJson(json);
}

extension ApiV1EmptyTagsResponseMergeX on ApiV1EmptyTagsResponse {
  /// Returns a new [ApiV1EmptyTagsResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1EmptyTagsResponse merge(ApiV1EmptyTagsResponse other) {
    return copyWith(emptyTagsField: other.emptyTagsField);
  }
}
