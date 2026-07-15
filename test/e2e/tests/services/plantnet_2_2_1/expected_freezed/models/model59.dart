// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model58.dart';

part 'model59.freezed.dart';
part 'model59.g.dart';

@Freezed()
abstract class Model59 with _$Model59 {
  const factory Model59({
    String? name,
    num? coverage,
    @JsonKey(name: 'max_score') num? maxScore,
    num? count,
    Model58? location,
  }) = _Model59;

  Map<String, dynamic> toJson() => _$Model59ToJson(this as _Model59);
  factory Model59.fromJson(Map<String, Object?> json) =>
      _$Model59FromJson(json);
}

extension Model59MergeX on Model59 {
  /// Returns a new [Model59] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model59 merge(Model59 other) {
    return copyWith(
      name: other.name,
      coverage: other.coverage,
      maxScore: other.maxScore,
      count: other.count,
      location: other.location,
    );
  }
}
