// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_provider.freezed.dart';
part 'model_provider.g.dart';

@Freezed()
abstract class ModelProvider with _$ModelProvider {
  const factory ModelProvider({required String npm}) = _ModelProvider;

  Map<String, dynamic> toJson() =>
      _$ModelProviderToJson(this as _ModelProvider);
  factory ModelProvider.fromJson(Map<String, Object?> json) =>
      _$ModelProviderFromJson(json);
}

extension ModelProviderMergeX on ModelProvider {
  /// Returns a new [ModelProvider] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelProvider merge(ModelProvider other) {
    return copyWith(npm: other.npm);
  }
}
