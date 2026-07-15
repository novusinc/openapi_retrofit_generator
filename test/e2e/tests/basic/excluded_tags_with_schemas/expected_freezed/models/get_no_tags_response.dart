// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_no_tags_response.freezed.dart';
part 'get_no_tags_response.g.dart';

@Freezed()
abstract class GetNoTagsResponse with _$GetNoTagsResponse {
  const factory GetNoTagsResponse({
    @JsonKey(includeIfNull: false) String? result,
  }) = _GetNoTagsResponse;

  Map<String, dynamic> toJson() =>
      _$GetNoTagsResponseToJson(this as _GetNoTagsResponse);
  factory GetNoTagsResponse.fromJson(Map<String, Object?> json) =>
      _$GetNoTagsResponseFromJson(json);
}

extension GetNoTagsResponseMergeX on GetNoTagsResponse {
  /// Returns a new [GetNoTagsResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetNoTagsResponse merge(GetNoTagsResponse other) {
    return copyWith(result: other.result);
  }
}
