// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model37.freezed.dart';
part 'model37.g.dart';

@Freezed()
abstract class Model37 with _$Model37 {
  const factory Model37({
    String? lang,
    String? date,
    String? author,
    String? message,
  }) = _Model37;

  Map<String, dynamic> toJson() => _$Model37ToJson(this as _Model37);
  factory Model37.fromJson(Map<String, Object?> json) =>
      _$Model37FromJson(json);
}

extension Model37MergeX on Model37 {
  /// Returns a new [Model37] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model37 merge(Model37 other) {
    return copyWith(
      lang: other.lang,
      date: other.date,
      author: other.author,
      message: other.message,
    );
  }
}
