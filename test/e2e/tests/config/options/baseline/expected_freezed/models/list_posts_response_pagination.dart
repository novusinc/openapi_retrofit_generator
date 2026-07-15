// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_posts_response_pagination.freezed.dart';
part 'list_posts_response_pagination.g.dart';

@Freezed()
abstract class ListPostsResponsePagination with _$ListPostsResponsePagination {
  const factory ListPostsResponsePagination({
    int? page,
    int? total,
    bool? hasNext,
  }) = _ListPostsResponsePagination;

  Map<String, dynamic> toJson() =>
      _$ListPostsResponsePaginationToJson(this as _ListPostsResponsePagination);
  factory ListPostsResponsePagination.fromJson(Map<String, Object?> json) =>
      _$ListPostsResponsePaginationFromJson(json);
}

extension ListPostsResponsePaginationMergeX on ListPostsResponsePagination {
  /// Returns a new [ListPostsResponsePagination] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ListPostsResponsePagination merge(ListPostsResponsePagination other) {
    return copyWith(
      page: other.page,
      total: other.total,
      hasNext: other.hasNext,
    );
  }
}
