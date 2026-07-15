// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@Freezed()
abstract class Provider with _$Provider {
  const factory Provider({
    String? api,
    String? name,
    List<String>? env,
    String? id,
    String? npm,
    Map<String, Models>? models,
    Map<String, dynamic>? options,
  }) = _Provider;

  Map<String, dynamic> toJson() => _$ProviderToJson(this as _Provider);
  factory Provider.fromJson(Map<String, Object?> json) =>
      _$ProviderFromJson(json);
}

extension ProviderMergeX on Provider {
  /// Returns a new [Provider] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Provider merge(Provider other) {
    return copyWith(
      api: other.api,
      name: other.name,
      env: other.env,
      id: other.id,
      npm: other.npm,
      models: other.models,
      options: other.options,
    );
  }
}
