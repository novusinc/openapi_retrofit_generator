// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_response_details.dart';
import 'payment_response_status_status.dart';

part 'payment_response.freezed.dart';
part 'payment_response.g.dart';

@Freezed()
abstract class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    required String transactionId,
    required PaymentResponseStatusStatus status,
    required double amount,
    DateTime? processedAt,
    PaymentResponseDetails? details,
    @Default('USD') String currency,
  }) = _PaymentResponse;

  Map<String, dynamic> toJson() =>
      _$PaymentResponseToJson(this as _PaymentResponse);
  factory PaymentResponse.fromJson(Map<String, Object?> json) =>
      _$PaymentResponseFromJson(json);
}

extension PaymentResponseMergeX on PaymentResponse {
  /// Returns a new [PaymentResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PaymentResponse merge(PaymentResponse other) {
    return copyWith(
      transactionId: other.transactionId,
      status: other.status,
      amount: other.amount,
      currency: other.currency,
      processedAt: other.processedAt,
      details: other.details,
    );
  }
}
