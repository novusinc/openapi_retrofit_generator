// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bank_transfer_payment_payment_type_payment_type.dart';
import 'payment_request.dart';
import 'payment_response_details.dart';

part 'bank_transfer_payment.freezed.dart';
part 'bank_transfer_payment.g.dart';

@Freezed()
abstract class BankTransferPayment with _$BankTransferPayment {
  const factory BankTransferPayment({
    required BankTransferPaymentPaymentTypePaymentType paymentType,
    required String accountNumber,
    required String routingNumber,
    required double amount,
    @JsonKey(includeIfNull: false) String? accountHolder,
    @JsonKey(includeIfNull: false) String? reference,
  }) = _BankTransferPayment;

  Map<String, dynamic> toJson() =>
      _$BankTransferPaymentToJson(this as _BankTransferPayment);
  factory BankTransferPayment.fromJson(Map<String, Object?> json) =>
      _$BankTransferPaymentFromJson(json);
}

extension BankTransferPaymentMergeX on BankTransferPayment {
  /// Returns a new [BankTransferPayment] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  BankTransferPayment merge(BankTransferPayment other) {
    return copyWith(
      paymentType: other.paymentType,
      accountNumber: other.accountNumber,
      routingNumber: other.routingNumber,
      accountHolder: other.accountHolder,
      amount: other.amount,
      reference: other.reference,
    );
  }
}
