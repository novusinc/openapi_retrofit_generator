// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'provider_auth_error_data.dart';

part 'provider_auth_error.freezed.dart';
part 'provider_auth_error.g.dart';

@Freezed()
abstract class ProviderAuthError with _$ProviderAuthError {
  const factory ProviderAuthError({
    required String name,
    required ProviderAuthErrorData data,
  }) = _ProviderAuthError;

  Map<String, dynamic> toJson() =>
      _$ProviderAuthErrorToJson(this as _ProviderAuthError);
  factory ProviderAuthError.fromJson(Map<String, Object?> json) =>
      _$ProviderAuthErrorFromJson(json);
}

extension ProviderAuthErrorMergeX on ProviderAuthError {
  /// Returns a new [ProviderAuthError] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ProviderAuthError merge(ProviderAuthError other) {
    return copyWith(name: other.name, data: other.data);
  }
}
