// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_v1_no_tags_response.freezed.dart';
part 'api_v1_no_tags_response.g.dart';

@Freezed()
abstract class ApiV1NoTagsResponse with _$ApiV1NoTagsResponse {
  const factory ApiV1NoTagsResponse({
    @JsonKey(includeIfNull: false) String? noTagsField,
  }) = _ApiV1NoTagsResponse;

  Map<String, dynamic> toJson() =>
      _$ApiV1NoTagsResponseToJson(this as _ApiV1NoTagsResponse);
  factory ApiV1NoTagsResponse.fromJson(Map<String, Object?> json) =>
      _$ApiV1NoTagsResponseFromJson(json);
}

extension ApiV1NoTagsResponseMergeX on ApiV1NoTagsResponse {
  /// Returns a new [ApiV1NoTagsResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1NoTagsResponse merge(ApiV1NoTagsResponse other) {
    return copyWith(noTagsField: other.noTagsField);
  }
}
