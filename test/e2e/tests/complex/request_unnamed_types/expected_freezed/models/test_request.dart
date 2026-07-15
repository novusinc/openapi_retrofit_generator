// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_request.freezed.dart';
part 'test_request.g.dart';

@Freezed()
abstract class TestRequest with _$TestRequest {
  const factory TestRequest({
    required List<dynamic> list,
    @JsonKey(includeIfNull: true) required String? name,
    @JsonKey(includeIfNull: false) String? lastname,
  }) = _TestRequest;

  Map<String, dynamic> toJson() => _$TestRequestToJson(this as _TestRequest);
  factory TestRequest.fromJson(Map<String, Object?> json) =>
      _$TestRequestFromJson(json);
}

extension TestRequestMergeX on TestRequest {
  /// Returns a new [TestRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TestRequest merge(TestRequest other) {
    return copyWith(
      list: other.list,
      name: other.name,
      lastname: other.lastname,
    );
  }
}
