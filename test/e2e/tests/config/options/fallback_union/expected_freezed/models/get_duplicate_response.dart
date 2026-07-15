// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'get_duplicate_response_metadata.dart';

part 'get_duplicate_response.freezed.dart';
part 'get_duplicate_response.g.dart';

@Freezed()
abstract class GetDuplicateResponse with _$GetDuplicateResponse {
  const factory GetDuplicateResponse({
    Data? data,
    GetDuplicateResponseMetadata? metadata,
  }) = _GetDuplicateResponse;

  Map<String, dynamic> toJson() =>
      _$GetDuplicateResponseToJson(this as _GetDuplicateResponse);
  factory GetDuplicateResponse.fromJson(Map<String, Object?> json) =>
      _$GetDuplicateResponseFromJson(json);
}

extension GetDuplicateResponseMergeX on GetDuplicateResponse {
  /// Returns a new [GetDuplicateResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetDuplicateResponse merge(GetDuplicateResponse other) {
    return copyWith(data: other.data, metadata: other.metadata);
  }
}
