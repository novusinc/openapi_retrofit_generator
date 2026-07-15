// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'example.freezed.dart';
part 'example.g.dart';

@Freezed()
abstract class Example with _$Example {
  const factory Example({
    /// data
    required Map<String, dynamic> data,
  }) = _Example;

  Map<String, dynamic> toJson() => _$ExampleToJson(this as _Example);
  factory Example.fromJson(Map<String, Object?> json) =>
      _$ExampleFromJson(json);
}

extension ExampleMergeX on Example {
  /// Returns a new [Example] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Example merge(Example other) {
    return copyWith(data: other.data);
  }
}
