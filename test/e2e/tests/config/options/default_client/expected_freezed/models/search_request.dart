// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_request.freezed.dart';
part 'search_request.g.dart';

@Freezed()
abstract class SearchRequest with _$SearchRequest {
  const factory SearchRequest({String? query, Map<String, String>? filters}) =
      _SearchRequest;

  Map<String, dynamic> toJson() =>
      _$SearchRequestToJson(this as _SearchRequest);
  factory SearchRequest.fromJson(Map<String, Object?> json) =>
      _$SearchRequestFromJson(json);
}

extension SearchRequestMergeX on SearchRequest {
  /// Returns a new [SearchRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SearchRequest merge(SearchRequest other) {
    return copyWith(query: other.query, filters: other.filters);
  }
}
