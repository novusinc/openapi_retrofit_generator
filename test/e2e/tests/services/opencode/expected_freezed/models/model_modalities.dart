// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model_modalities_input_input.dart';
import 'model_modalities_output_output.dart';

part 'model_modalities.freezed.dart';
part 'model_modalities.g.dart';

@Freezed()
abstract class ModelModalities with _$ModelModalities {
  const factory ModelModalities({
    required List<ModelModalitiesInputInput> input,
    required List<ModelModalitiesOutputOutput> output,
  }) = _ModelModalities;

  Map<String, dynamic> toJson() =>
      _$ModelModalitiesToJson(this as _ModelModalities);
  factory ModelModalities.fromJson(Map<String, Object?> json) =>
      _$ModelModalitiesFromJson(json);
}

extension ModelModalitiesMergeX on ModelModalities {
  /// Returns a new [ModelModalities] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelModalities merge(ModelModalities other) {
    return copyWith(input: other.input, output: other.output);
  }
}
