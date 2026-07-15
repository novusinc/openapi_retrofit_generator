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
import 'payment_request.dart';

part 'payment_response_details.freezed.dart';
part 'payment_response_details.g.dart';

@Freezed(unionKey: 'paymentType', fallbackUnion: 'unknown')
sealed class PaymentResponseDetails with _$PaymentResponseDetails {
  @FreezedUnionValue('credit_card')
  const factory PaymentResponseDetails.creditCard({
    required String cardNumber,
    required int expiryMonth,
    required int expiryYear,
    required String cvv,
    required double amount,
    String? cardholderName,
  }) = PaymentResponseDetailsCreditCard;

  @FreezedUnionValue('bank_transfer')
  const factory PaymentResponseDetails.bankTransfer({
    required String accountNumber,
    required String routingNumber,
    required double amount,
    String? accountHolder,
    String? reference,
  }) = PaymentResponseDetailsBankTransfer;

  @FreezedUnionValue('crypto')
  const factory PaymentResponseDetails.crypto({
    required String walletAddress,
    required CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,
    required double amount,
    String? transactionHash,
  }) = PaymentResponseDetailsCrypto;

  const factory PaymentResponseDetails.unknown() =
      PaymentResponseDetailsUnknown;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory PaymentResponseDetails.fromJson(Map<String, Object?> json) =>
      _$PaymentResponseDetailsFromJson(json);
}
