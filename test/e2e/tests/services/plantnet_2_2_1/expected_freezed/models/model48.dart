// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model48.freezed.dart';
part 'model48.g.dart';

@Freezed()
abstract class Model48 with _$Model48 {
  const factory Model48({required String source, required num score}) =
      _Model48;

  Map<String, dynamic> toJson() => _$Model48ToJson(this as _Model48);
  factory Model48.fromJson(Map<String, Object?> json) =>
      _$Model48FromJson(json);
}

extension Model48MergeX on Model48 {
  /// Returns a new [Model48] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model48 merge(Model48 other) {
    return copyWith(source: other.source, score: other.score);
  }
}
