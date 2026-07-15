// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_parcel_pending_webhook_url_response.freezed.dart';
part 'get_parcel_pending_webhook_url_response.g.dart';

@Freezed()
abstract class GetParcelPendingWebhookUrlResponse
    with _$GetParcelPendingWebhookUrlResponse {
  const factory GetParcelPendingWebhookUrlResponse({
    @JsonKey(includeIfNull: false, name: 'webhookURL') String? webhookUrl,
  }) = _GetParcelPendingWebhookUrlResponse;

  Map<String, dynamic> toJson() => _$GetParcelPendingWebhookUrlResponseToJson(
    this as _GetParcelPendingWebhookUrlResponse,
  );
  factory GetParcelPendingWebhookUrlResponse.fromJson(
    Map<String, Object?> json,
  ) => _$GetParcelPendingWebhookUrlResponseFromJson(json);
}

extension GetParcelPendingWebhookUrlResponseMergeX
    on GetParcelPendingWebhookUrlResponse {
  /// Returns a new [GetParcelPendingWebhookUrlResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetParcelPendingWebhookUrlResponse merge(
    GetParcelPendingWebhookUrlResponse other,
  ) {
    return copyWith(webhookUrl: other.webhookUrl);
  }
}
