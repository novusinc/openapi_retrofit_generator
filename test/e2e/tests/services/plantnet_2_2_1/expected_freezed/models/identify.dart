// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'identify.freezed.dart';
part 'identify.g.dart';

@Freezed()
abstract class Identify with _$Identify {
  const factory Identify({num? count, num? total, num? remaining}) = _Identify;

  Map<String, dynamic> toJson() => _$IdentifyToJson(this as _Identify);
  factory Identify.fromJson(Map<String, Object?> json) =>
      _$IdentifyFromJson(json);
}

extension IdentifyMergeX on Identify {
  /// Returns a new [Identify] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Identify merge(Identify other) {
    return copyWith(
      count: other.count,
      total: other.total,
      remaining: other.remaining,
    );
  }
}
