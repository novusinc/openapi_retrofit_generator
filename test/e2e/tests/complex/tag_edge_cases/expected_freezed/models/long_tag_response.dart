// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'long_tag_response.freezed.dart';
part 'long_tag_response.g.dart';

@Freezed()
abstract class LongTagResponse with _$LongTagResponse {
  const factory LongTagResponse({
    @JsonKey(includeIfNull: false) String? data,
    @JsonKey(includeIfNull: false) DateTime? timestamp,
  }) = _LongTagResponse;

  Map<String, dynamic> toJson() =>
      _$LongTagResponseToJson(this as _LongTagResponse);
  factory LongTagResponse.fromJson(Map<String, Object?> json) =>
      _$LongTagResponseFromJson(json);
}

extension LongTagResponseMergeX on LongTagResponse {
  /// Returns a new [LongTagResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  LongTagResponse merge(LongTagResponse other) {
    return copyWith(data: other.data, timestamp: other.timestamp);
  }
}
