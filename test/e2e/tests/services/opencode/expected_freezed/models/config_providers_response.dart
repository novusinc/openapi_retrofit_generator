// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'provider.dart';

part 'config_providers_response.freezed.dart';
part 'config_providers_response.g.dart';

@Freezed()
abstract class ConfigProvidersResponse with _$ConfigProvidersResponse {
  const factory ConfigProvidersResponse({
    required List<Provider> providers,
    @JsonKey(name: 'default') required Map<String, String> defaultField,
  }) = _ConfigProvidersResponse;

  Map<String, dynamic> toJson() =>
      _$ConfigProvidersResponseToJson(this as _ConfigProvidersResponse);
  factory ConfigProvidersResponse.fromJson(Map<String, Object?> json) =>
      _$ConfigProvidersResponseFromJson(json);
}

extension ConfigProvidersResponseMergeX on ConfigProvidersResponse {
  /// Returns a new [ConfigProvidersResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ConfigProvidersResponse merge(ConfigProvidersResponse other) {
    return copyWith(
      providers: other.providers,
      defaultField: other.defaultField,
    );
  }
}
