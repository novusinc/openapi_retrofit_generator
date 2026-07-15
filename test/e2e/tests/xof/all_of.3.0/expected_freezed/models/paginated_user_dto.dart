// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_dto.dart';

part 'paginated_user_dto.freezed.dart';
part 'paginated_user_dto.g.dart';

@Freezed()
abstract class PaginatedUserDto with _$PaginatedUserDto {
  const factory PaginatedUserDto({
    @JsonKey(includeIfNull: true) required String? nextCursor,
    @JsonKey(includeIfNull: true) required String? previousCursor,
    required List<UserDto> data,
  }) = _PaginatedUserDto;

  Map<String, dynamic> toJson() =>
      _$PaginatedUserDtoToJson(this as _PaginatedUserDto);
  factory PaginatedUserDto.fromJson(Map<String, Object?> json) =>
      _$PaginatedUserDtoFromJson(json);
}

extension PaginatedUserDtoMergeX on PaginatedUserDto {
  /// Returns a new [PaginatedUserDto] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PaginatedUserDto merge(PaginatedUserDto other) {
    return copyWith(
      nextCursor: other.nextCursor,
      previousCursor: other.previousCursor,
      data: other.data,
    );
  }
}
