// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'above_quota.freezed.dart';
part 'above_quota.g.dart';

@Freezed()
abstract class AboveQuota with _$AboveQuota {
  const factory AboveQuota({num? identify}) = _AboveQuota;

  Map<String, dynamic> toJson() => _$AboveQuotaToJson(this as _AboveQuota);
  factory AboveQuota.fromJson(Map<String, Object?> json) =>
      _$AboveQuotaFromJson(json);
}

extension AboveQuotaMergeX on AboveQuota {
  /// Returns a new [AboveQuota] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AboveQuota merge(AboveQuota other) {
    return copyWith(identify: other.identify);
  }
}
