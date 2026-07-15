// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing.freezed.dart';
part 'billing.g.dart';

@Freezed()
abstract class Billing with _$Billing {
  const factory Billing({String? nextDueDate, num? estimatedAmount}) = _Billing;

  Map<String, dynamic> toJson() => _$BillingToJson(this as _Billing);
  factory Billing.fromJson(Map<String, Object?> json) =>
      _$BillingFromJson(json);
}

extension BillingMergeX on Billing {
  /// Returns a new [Billing] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Billing merge(Billing other) {
    return copyWith(
      nextDueDate: other.nextDueDate,
      estimatedAmount: other.estimatedAmount,
    );
  }
}
