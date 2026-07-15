// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_result.dart';
import 'user.dart';
import 'user_search_result_type_type.dart';

part 'user_search_result.freezed.dart';
part 'user_search_result.g.dart';

@Freezed()
abstract class UserSearchResult with _$UserSearchResult {
  const factory UserSearchResult({
    required UserSearchResultTypeType type,
    required User user,
    double? score,
  }) = _UserSearchResult;

  Map<String, dynamic> toJson() =>
      _$UserSearchResultToJson(this as _UserSearchResult);
  factory UserSearchResult.fromJson(Map<String, Object?> json) =>
      _$UserSearchResultFromJson(json);
}

extension UserSearchResultMergeX on UserSearchResult {
  /// Returns a new [UserSearchResult] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserSearchResult merge(UserSearchResult other) {
    return copyWith(type: other.type, user: other.user, score: other.score);
  }
}
