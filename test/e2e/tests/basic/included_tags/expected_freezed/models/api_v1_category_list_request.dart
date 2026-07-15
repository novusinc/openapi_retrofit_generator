// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_v1_category_list_request_nested_included.dart';
import 'api_v1_category_list_request_anchor_reference.dart';

part 'api_v1_category_list_request.freezed.dart';
part 'api_v1_category_list_request.g.dart';

@Freezed()
abstract class ApiV1CategoryListRequest with _$ApiV1CategoryListRequest {
  const factory ApiV1CategoryListRequest({
    /// This field should be included
    required String includedField,
    @JsonKey(includeIfNull: false)
    ApiV1CategoryListRequestNestedIncluded? nestedIncluded,
    @JsonKey(includeIfNull: false)
    ApiV1CategoryListRequestAnchorReference? anchorReference,
  }) = _ApiV1CategoryListRequest;

  Map<String, dynamic> toJson() =>
      _$ApiV1CategoryListRequestToJson(this as _ApiV1CategoryListRequest);
  factory ApiV1CategoryListRequest.fromJson(Map<String, Object?> json) =>
      _$ApiV1CategoryListRequestFromJson(json);
}

extension ApiV1CategoryListRequestMergeX on ApiV1CategoryListRequest {
  /// Returns a new [ApiV1CategoryListRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1CategoryListRequest merge(ApiV1CategoryListRequest other) {
    return copyWith(
      includedField: other.includedField,
      nestedIncluded: other.nestedIncluded,
      anchorReference: other.anchorReference,
    );
  }
}
