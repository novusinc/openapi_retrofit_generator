// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models_provider.freezed.dart';
part 'models_provider.g.dart';

@Freezed()
abstract class ModelsProvider with _$ModelsProvider {
  const factory ModelsProvider({required String npm}) = _ModelsProvider;

  Map<String, dynamic> toJson() =>
      _$ModelsProviderToJson(this as _ModelsProvider);
  factory ModelsProvider.fromJson(Map<String, Object?> json) =>
      _$ModelsProviderFromJson(json);
}

extension ModelsProviderMergeX on ModelsProvider {
  /// Returns a new [ModelsProvider] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelsProvider merge(ModelsProvider other) {
    return copyWith(npm: other.npm);
  }
}
