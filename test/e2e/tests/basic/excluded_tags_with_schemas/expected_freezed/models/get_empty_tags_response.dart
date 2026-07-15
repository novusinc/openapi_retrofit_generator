// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_empty_tags_response.freezed.dart';
part 'get_empty_tags_response.g.dart';

@Freezed()
abstract class GetEmptyTagsResponse with _$GetEmptyTagsResponse {
  const factory GetEmptyTagsResponse({
    @JsonKey(includeIfNull: false) String? value,
  }) = _GetEmptyTagsResponse;

  Map<String, dynamic> toJson() =>
      _$GetEmptyTagsResponseToJson(this as _GetEmptyTagsResponse);
  factory GetEmptyTagsResponse.fromJson(Map<String, Object?> json) =>
      _$GetEmptyTagsResponseFromJson(json);
}

extension GetEmptyTagsResponseMergeX on GetEmptyTagsResponse {
  /// Returns a new [GetEmptyTagsResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetEmptyTagsResponse merge(GetEmptyTagsResponse other) {
    return copyWith(value: other.value);
  }
}
