// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'crypto_payment_cryptocurrency_cryptocurrency.dart';
import 'crypto_payment_payment_type_payment_type.dart';
import 'payment_request.dart';
import 'payment_response_details.dart';

part 'crypto_payment.freezed.dart';
part 'crypto_payment.g.dart';

@Freezed()
abstract class CryptoPayment with _$CryptoPayment {
  const factory CryptoPayment({
    required CryptoPaymentPaymentTypePaymentType paymentType,
    required String walletAddress,
    required CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,
    required double amount,
    @JsonKey(includeIfNull: false) String? transactionHash,
  }) = _CryptoPayment;

  Map<String, dynamic> toJson() =>
      _$CryptoPaymentToJson(this as _CryptoPayment);
  factory CryptoPayment.fromJson(Map<String, Object?> json) =>
      _$CryptoPaymentFromJson(json);
}

extension CryptoPaymentMergeX on CryptoPayment {
  /// Returns a new [CryptoPayment] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CryptoPayment merge(CryptoPayment other) {
    return copyWith(
      paymentType: other.paymentType,
      walletAddress: other.walletAddress,
      cryptocurrency: other.cryptocurrency,
      amount: other.amount,
      transactionHash: other.transactionHash,
    );
  }
}
