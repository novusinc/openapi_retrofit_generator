// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_result.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@Freezed()
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({List<SearchResult>? results}) = _SearchResponse;

  Map<String, dynamic> toJson() =>
      _$SearchResponseToJson(this as _SearchResponse);
  factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}

extension SearchResponseMergeX on SearchResponse {
  /// Returns a new [SearchResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SearchResponse merge(SearchResponse other) {
    return copyWith(results: other.results);
  }
}
