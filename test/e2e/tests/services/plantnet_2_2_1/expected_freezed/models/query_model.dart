// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model14.dart';
import 'organs.dart';

part 'query_model.freezed.dart';
part 'query_model.g.dart';

@Freezed()
abstract class QueryModel with _$QueryModel {
  const factory QueryModel({
    String? project,
    Model14? images,
    Organs? organs,
    bool? includeRelatedImages,
    bool? noReject,
    String? type,
  }) = _QueryModel;

  Map<String, dynamic> toJson() => _$QueryModelToJson(this as _QueryModel);
  factory QueryModel.fromJson(Map<String, Object?> json) =>
      _$QueryModelFromJson(json);
}

extension QueryModelMergeX on QueryModel {
  /// Returns a new [QueryModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  QueryModel merge(QueryModel other) {
    return copyWith(
      project: other.project,
      images: other.images,
      organs: other.organs,
      includeRelatedImages: other.includeRelatedImages,
      noReject: other.noReject,
      type: other.type,
    );
  }
}
