// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_api_v1_request_p1_class.freezed.dart';
part 'post_api_v1_request_p1_class.g.dart';

@Freezed()
abstract class PostApiV1RequestP1Class with _$PostApiV1RequestP1Class {
  const factory PostApiV1RequestP1Class({
    @JsonKey(includeIfNull: false) DateTime? test,
  }) = _PostApiV1RequestP1Class;

  Map<String, dynamic> toJson() =>
      _$PostApiV1RequestP1ClassToJson(this as _PostApiV1RequestP1Class);
  factory PostApiV1RequestP1Class.fromJson(Map<String, Object?> json) =>
      _$PostApiV1RequestP1ClassFromJson(json);
}

extension PostApiV1RequestP1ClassMergeX on PostApiV1RequestP1Class {
  /// Returns a new [PostApiV1RequestP1Class] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PostApiV1RequestP1Class merge(PostApiV1RequestP1Class other) {
    return copyWith(test: other.test);
  }
}
