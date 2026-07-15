// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract.freezed.dart';
part 'contract.g.dart';

@Freezed()
abstract class Contract with _$Contract {
  const factory Contract({
    String? plan,
    String? status,
    String? firstSignatureDate,
    String? latestSignatureDate,
    String? nextSignatureDate,
    num? indicativeYearlyQuota,
    String? currency,
  }) = _Contract;

  Map<String, dynamic> toJson() => _$ContractToJson(this as _Contract);
  factory Contract.fromJson(Map<String, Object?> json) =>
      _$ContractFromJson(json);
}

extension ContractMergeX on Contract {
  /// Returns a new [Contract] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Contract merge(Contract other) {
    return copyWith(
      plan: other.plan,
      status: other.status,
      firstSignatureDate: other.firstSignatureDate,
      latestSignatureDate: other.latestSignatureDate,
      nextSignatureDate: other.nextSignatureDate,
      indicativeYearlyQuota: other.indicativeYearlyQuota,
      currency: other.currency,
    );
  }
}
