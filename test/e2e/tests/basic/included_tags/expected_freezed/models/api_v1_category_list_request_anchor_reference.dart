// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_v1_category_list_request_anchor_reference.freezed.dart';
part 'api_v1_category_list_request_anchor_reference.g.dart';

@Freezed()
abstract class ApiV1CategoryListRequestAnchorReference
    with _$ApiV1CategoryListRequestAnchorReference {
  const factory ApiV1CategoryListRequestAnchorReference({
    /// Shared field from anchor
    @JsonKey(includeIfNull: false) String? sharedField1,
    @JsonKey(includeIfNull: false) int? sharedField2,
  }) = _ApiV1CategoryListRequestAnchorReference;

  Map<String, dynamic> toJson() =>
      _$ApiV1CategoryListRequestAnchorReferenceToJson(
        this as _ApiV1CategoryListRequestAnchorReference,
      );
  factory ApiV1CategoryListRequestAnchorReference.fromJson(
    Map<String, Object?> json,
  ) => _$ApiV1CategoryListRequestAnchorReferenceFromJson(json);
}

extension ApiV1CategoryListRequestAnchorReferenceMergeX
    on ApiV1CategoryListRequestAnchorReference {
  /// Returns a new [ApiV1CategoryListRequestAnchorReference] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1CategoryListRequestAnchorReference merge(
    ApiV1CategoryListRequestAnchorReference other,
  ) {
    return copyWith(
      sharedField1: other.sharedField1,
      sharedField2: other.sharedField2,
    );
  }
}
