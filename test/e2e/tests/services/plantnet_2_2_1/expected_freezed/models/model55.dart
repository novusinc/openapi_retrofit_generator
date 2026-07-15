// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model54.dart';

part 'model55.freezed.dart';
part 'model55.g.dart';

@Freezed()
abstract class Model55 with _$Model55 {
  const factory Model55({
    String? name,
    num? coverage,
    @JsonKey(name: 'max_score') num? maxScore,
    num? count,
    Model54? location,
  }) = _Model55;

  Map<String, dynamic> toJson() => _$Model55ToJson(this as _Model55);
  factory Model55.fromJson(Map<String, Object?> json) =>
      _$Model55FromJson(json);
}

extension Model55MergeX on Model55 {
  /// Returns a new [Model55] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model55 merge(Model55 other) {
    return copyWith(
      name: other.name,
      coverage: other.coverage,
      maxScore: other.maxScore,
      count: other.count,
      location: other.location,
    );
  }
}
