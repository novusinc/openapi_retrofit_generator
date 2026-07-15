// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'count.freezed.dart';
part 'count.g.dart';

@Freezed()
abstract class Count with _$Count {
  const factory Count({num? identify}) = _Count;

  Map<String, dynamic> toJson() => _$CountToJson(this as _Count);
  factory Count.fromJson(Map<String, Object?> json) => _$CountFromJson(json);
}

extension CountMergeX on Count {
  /// Returns a new [Count] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Count merge(Count other) {
    return copyWith(identify: other.identify);
  }
}
