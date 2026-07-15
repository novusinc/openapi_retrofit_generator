// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models_limit.freezed.dart';
part 'models_limit.g.dart';

@Freezed()
abstract class ModelsLimit with _$ModelsLimit {
  const factory ModelsLimit({required num context, required num output}) =
      _ModelsLimit;

  Map<String, dynamic> toJson() => _$ModelsLimitToJson(this as _ModelsLimit);
  factory ModelsLimit.fromJson(Map<String, Object?> json) =>
      _$ModelsLimitFromJson(json);
}

extension ModelsLimitMergeX on ModelsLimit {
  /// Returns a new [ModelsLimit] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelsLimit merge(ModelsLimit other) {
    return copyWith(context: other.context, output: other.output);
  }
}
