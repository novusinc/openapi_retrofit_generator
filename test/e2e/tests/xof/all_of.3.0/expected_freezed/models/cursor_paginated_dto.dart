// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_paginated_dto.freezed.dart';
part 'cursor_paginated_dto.g.dart';

@Freezed()
abstract class CursorPaginatedDto with _$CursorPaginatedDto {
  const factory CursorPaginatedDto({
    @JsonKey(includeIfNull: true) required String? nextCursor,
    @JsonKey(includeIfNull: true) required String? previousCursor,
  }) = _CursorPaginatedDto;

  Map<String, dynamic> toJson() =>
      _$CursorPaginatedDtoToJson(this as _CursorPaginatedDto);
  factory CursorPaginatedDto.fromJson(Map<String, Object?> json) =>
      _$CursorPaginatedDtoFromJson(json);
}

extension CursorPaginatedDtoMergeX on CursorPaginatedDto {
  /// Returns a new [CursorPaginatedDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CursorPaginatedDto merge(CursorPaginatedDto other) {
    return copyWith(
      nextCursor: other.nextCursor,
      previousCursor: other.previousCursor,
    );
  }
}
