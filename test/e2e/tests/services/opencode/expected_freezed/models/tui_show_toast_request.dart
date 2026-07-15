// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tui_show_toast_request_variant_variant.dart';

part 'tui_show_toast_request.freezed.dart';
part 'tui_show_toast_request.g.dart';

@Freezed()
abstract class TuiShowToastRequest with _$TuiShowToastRequest {
  const factory TuiShowToastRequest({
    required String message,
    required TuiShowToastRequestVariantVariant variant,
    String? title,
  }) = _TuiShowToastRequest;

  Map<String, dynamic> toJson() =>
      _$TuiShowToastRequestToJson(this as _TuiShowToastRequest);
  factory TuiShowToastRequest.fromJson(Map<String, Object?> json) =>
      _$TuiShowToastRequestFromJson(json);
}

extension TuiShowToastRequestMergeX on TuiShowToastRequest {
  /// Returns a new [TuiShowToastRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TuiShowToastRequest merge(TuiShowToastRequest other) {
    return copyWith(
      title: other.title,
      message: other.message,
      variant: other.variant,
    );
  }
}
