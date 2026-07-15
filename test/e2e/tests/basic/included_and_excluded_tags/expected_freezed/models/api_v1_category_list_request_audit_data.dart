// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_v1_category_list_request_audit_data.freezed.dart';
part 'api_v1_category_list_request_audit_data.g.dart';

@Freezed()
abstract class ApiV1CategoryListRequestAuditData
    with _$ApiV1CategoryListRequestAuditData {
  const factory ApiV1CategoryListRequestAuditData({
    /// Last modified timestamp from anchor
    required DateTime lastModified,

    /// User who modified from anchor
    @JsonKey(includeIfNull: false) String? modifiedBy,
  }) = _ApiV1CategoryListRequestAuditData;

  Map<String, dynamic> toJson() => _$ApiV1CategoryListRequestAuditDataToJson(
    this as _ApiV1CategoryListRequestAuditData,
  );
  factory ApiV1CategoryListRequestAuditData.fromJson(
    Map<String, Object?> json,
  ) => _$ApiV1CategoryListRequestAuditDataFromJson(json);
}

extension ApiV1CategoryListRequestAuditDataMergeX
    on ApiV1CategoryListRequestAuditData {
  /// Returns a new [ApiV1CategoryListRequestAuditData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1CategoryListRequestAuditData merge(
    ApiV1CategoryListRequestAuditData other,
  ) {
    return copyWith(
      lastModified: other.lastModified,
      modifiedBy: other.modifiedBy,
    );
  }
}
