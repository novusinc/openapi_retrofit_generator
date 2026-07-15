// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'object0.freezed.dart';
part 'object0.g.dart';

@Freezed()
abstract class Object0 with _$Object0 {
  const factory Object0({
    /// Sample Street.
    required String street,
  }) = _Object0;

  Map<String, dynamic> toJson() => _$Object0ToJson(this as _Object0);
  factory Object0.fromJson(Map<String, Object?> json) =>
      _$Object0FromJson(json);
}

extension Object0MergeX on Object0 {
  /// Returns a new [Object0] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Object0 merge(Object0 other) {
    return copyWith(street: other.street);
  }
}
