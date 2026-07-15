// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_v1_category_list_request_metadata.freezed.dart';
part 'api_v1_category_list_request_metadata.g.dart';

@Freezed()
abstract class ApiV1CategoryListRequestMetadata
    with _$ApiV1CategoryListRequestMetadata {
  const factory ApiV1CategoryListRequestMetadata({
    /// Timestamp from anchor
    @JsonKey(includeIfNull: false) DateTime? createdAt,

    /// Semantic version from anchor
    @JsonKey(includeIfNull: false) String? version,
  }) = _ApiV1CategoryListRequestMetadata;

  Map<String, dynamic> toJson() => _$ApiV1CategoryListRequestMetadataToJson(
    this as _ApiV1CategoryListRequestMetadata,
  );
  factory ApiV1CategoryListRequestMetadata.fromJson(
    Map<String, Object?> json,
  ) => _$ApiV1CategoryListRequestMetadataFromJson(json);
}

extension ApiV1CategoryListRequestMetadataMergeX
    on ApiV1CategoryListRequestMetadata {
  /// Returns a new [ApiV1CategoryListRequestMetadata] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1CategoryListRequestMetadata merge(
    ApiV1CategoryListRequestMetadata other,
  ) {
    return copyWith(createdAt: other.createdAt, version: other.version);
  }
}
