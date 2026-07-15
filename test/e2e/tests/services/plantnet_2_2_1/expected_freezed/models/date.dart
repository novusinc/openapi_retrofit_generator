// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'date.freezed.dart';
part 'date.g.dart';

@Freezed()
abstract class Date with _$Date {
  const factory Date({num? timestamp, String? string}) = _Date;

  Map<String, dynamic> toJson() => _$DateToJson(this as _Date);
  factory Date.fromJson(Map<String, Object?> json) => _$DateFromJson(json);
}

extension DateMergeX on Date {
  /// Returns a new [Date] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Date merge(Date other) {
    return copyWith(timestamp: other.timestamp, string: other.string);
  }
}
