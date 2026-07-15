// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'bank_transfer_payment.dart';
import 'bank_transfer_payment_payment_type_payment_type.dart';
import 'credit_card_payment.dart';
import 'credit_card_payment_payment_type_payment_type.dart';
import 'crypto_payment.dart';
import 'crypto_payment_cryptocurrency_cryptocurrency.dart';
import 'crypto_payment_payment_type_payment_type.dart';

part 'payment_request.freezed.dart';
part 'payment_request.g.dart';

@Freezed(unionKey: 'paymentType')
sealed class PaymentRequest with _$PaymentRequest {
  @FreezedUnionValue('credit_card')
  const factory PaymentRequest.creditCard({
    required String cardNumber,
    required int expiryMonth,
    required int expiryYear,
    required String cvv,
    required double amount,
    @JsonKey(includeIfNull: false) String? cardholderName,
  }) = PaymentRequestCreditCard;

  @FreezedUnionValue('bank_transfer')
  const factory PaymentRequest.bankTransfer({
    required String accountNumber,
    required String routingNumber,
    required double amount,
    @JsonKey(includeIfNull: false) String? accountHolder,
    @JsonKey(includeIfNull: false) String? reference,
  }) = PaymentRequestBankTransfer;

  @FreezedUnionValue('crypto')
  const factory PaymentRequest.crypto({
    required String walletAddress,
    required CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,
    required double amount,
    @JsonKey(includeIfNull: false) String? transactionHash,
  }) = PaymentRequestCrypto;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory PaymentRequest.fromJson(Map<String, Object?> json) =>
      _$PaymentRequestFromJson(json);
}
