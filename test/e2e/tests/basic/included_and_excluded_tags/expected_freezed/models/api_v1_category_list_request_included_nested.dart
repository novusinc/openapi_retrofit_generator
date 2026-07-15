// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_v1_category_list_request_included_nested.freezed.dart';
part 'api_v1_category_list_request_included_nested.g.dart';

@Freezed()
abstract class ApiV1CategoryListRequestIncludedNested
    with _$ApiV1CategoryListRequestIncludedNested {
  const factory ApiV1CategoryListRequestIncludedNested({
    @JsonKey(includeIfNull: false) String? includedInner,
  }) = _ApiV1CategoryListRequestIncludedNested;

  Map<String, dynamic> toJson() =>
      _$ApiV1CategoryListRequestIncludedNestedToJson(
        this as _ApiV1CategoryListRequestIncludedNested,
      );
  factory ApiV1CategoryListRequestIncludedNested.fromJson(
    Map<String, Object?> json,
  ) => _$ApiV1CategoryListRequestIncludedNestedFromJson(json);
}

extension ApiV1CategoryListRequestIncludedNestedMergeX
    on ApiV1CategoryListRequestIncludedNested {
  /// Returns a new [ApiV1CategoryListRequestIncludedNested] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ApiV1CategoryListRequestIncludedNested merge(
    ApiV1CategoryListRequestIncludedNested other,
  ) {
    return copyWith(includedInner: other.includedInner);
  }
}
