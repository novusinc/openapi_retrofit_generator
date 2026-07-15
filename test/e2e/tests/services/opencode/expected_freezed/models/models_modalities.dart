// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models_modalities_input_input.dart';
import 'models_modalities_output_output.dart';

part 'models_modalities.freezed.dart';
part 'models_modalities.g.dart';

@Freezed()
abstract class ModelsModalities with _$ModelsModalities {
  const factory ModelsModalities({
    required List<ModelsModalitiesInputInput> input,
    required List<ModelsModalitiesOutputOutput> output,
  }) = _ModelsModalities;

  Map<String, dynamic> toJson() =>
      _$ModelsModalitiesToJson(this as _ModelsModalities);
  factory ModelsModalities.fromJson(Map<String, Object?> json) =>
      _$ModelsModalitiesFromJson(json);
}

extension ModelsModalitiesMergeX on ModelsModalities {
  /// Returns a new [ModelsModalities] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ModelsModalities merge(ModelsModalities other) {
    return copyWith(input: other.input, output: other.output);
  }
}
