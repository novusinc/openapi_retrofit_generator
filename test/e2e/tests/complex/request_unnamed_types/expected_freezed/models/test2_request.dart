// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'example.dart';

part 'test2_request.freezed.dart';
part 'test2_request.g.dart';

@Freezed()
abstract class Test2Request with _$Test2Request {
  const factory Test2Request({
    required List<Example> list1,
    @JsonKey(includeIfNull: true) required String? name,
    @JsonKey(includeIfNull: false) List<Map<String, Example>>? list2,
    @JsonKey(includeIfNull: false) String? lastname,
  }) = _Test2Request;

  Map<String, dynamic> toJson() => _$Test2RequestToJson(this as _Test2Request);
  factory Test2Request.fromJson(Map<String, Object?> json) =>
      _$Test2RequestFromJson(json);
}

extension Test2RequestMergeX on Test2Request {
  /// Returns a new [Test2Request] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Test2Request merge(Test2Request other) {
    return copyWith(
      list1: other.list1,
      list2: other.list2,
      name: other.name,
      lastname: other.lastname,
    );
  }
}
