// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'example.dart';

part 'example_parsable.freezed.dart';
part 'example_parsable.g.dart';

@Freezed()
abstract class ExampleParsable with _$ExampleParsable {
  const factory ExampleParsable({
    /// data
    required Map<String, Example> data,
  }) = _ExampleParsable;

  Map<String, dynamic> toJson() =>
      _$ExampleParsableToJson(this as _ExampleParsable);
  factory ExampleParsable.fromJson(Map<String, Object?> json) =>
      _$ExampleParsableFromJson(json);
}

extension ExampleParsableMergeX on ExampleParsable {
  /// Returns a new [ExampleParsable] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ExampleParsable merge(ExampleParsable other) {
    return copyWith(data: other.data);
  }
}
