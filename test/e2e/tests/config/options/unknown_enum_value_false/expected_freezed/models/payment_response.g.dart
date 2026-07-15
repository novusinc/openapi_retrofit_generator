// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    _PaymentResponse(
      transactionId: json['transactionId'] as String,
      status: $enumDecode(_$PaymentResponseStatusStatusEnumMap, json['status']),
      amount: (json['amount'] as num).toDouble(),
      processedAt: json['processedAt'] == null
          ? null
          : DateTime.parse(json['processedAt'] as String),
      details: json['details'] == null
          ? null
          : PaymentResponseDetails.fromJson(
              json['details'] as Map<String, dynamic>,
            ),
      currency: json['currency'] as String? ?? 'USD',
    );

Map<String, dynamic> _$PaymentResponseToJson(_PaymentResponse instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'status': instance.status,
      'amount': instance.amount,
      'processedAt': instance.processedAt?.toIso8601String(),
      'details': instance.details,
      'currency': instance.currency,
    };

const _$PaymentResponseStatusStatusEnumMap = {
  PaymentResponseStatusStatus.pending: 'pending',
  PaymentResponseStatusStatus.completed: 'completed',
  PaymentResponseStatusStatus.failed: 'failed',
  PaymentResponseStatusStatus.cancelled: 'cancelled',
};
