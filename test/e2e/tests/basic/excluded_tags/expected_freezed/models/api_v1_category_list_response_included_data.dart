// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_v1_category_list_response_included_data_status_status.dart';

part 'api_v1_category_list_response_included_data.freezed.dart';
part 'api_v1_category_list_response_included_data.g.dart';

@Freezed()
abstract class ApiV1CategoryListResponseIncludedData
    with _$ApiV1CategoryListResponseIncludedData {
  const factory ApiV1CategoryListResponseIncludedData({
    @JsonKey(includeIfNull: false) String? dataField,
    @JsonKey(includeIfNull: false)
    ApiV1CategoryListResponseIncludedDataStatusStatus? status,
    @JsonKey(includeIfNull: false) int? count,
  }) = _ApiV1CategoryListResponseIncludedData;

  Map<String, dynamic> toJson() =>
      _$ApiV1CategoryListResponseIncludedDataToJson(
        this as _ApiV1CategoryListResponseIncludedData,
      );
  factory ApiV1CategoryListResponseIncludedData.fromJson(
    Map<String, Object?> json,
  ) => _$ApiV1CategoryListResponseIncludedDataFromJson(json);
}

extension ApiV1CategoryListResponseIncludedDataMergeX
    on ApiV1CategoryListResponseIncludedData {
  /// Returns a new [ApiV1CategoryListResponseIncludedData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1CategoryListResponseIncludedData merge(
    ApiV1CategoryListResponseIncludedData other,
  ) {
    return copyWith(
      dataField: other.dataField,
      status: other.status,
      count: other.count,
    );
  }
}
