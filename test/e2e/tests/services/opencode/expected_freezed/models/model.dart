// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model_cost.dart';
import 'model_limit.dart';
import 'model_modalities.dart';
import 'model_provider.dart';
import 'model_status_status.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@Freezed()
abstract class Model with _$Model {
  const factory Model({
    required String id,
    required String name,
    @JsonKey(name: 'release_date') required String releaseDate,
    required bool attachment,
    required bool reasoning,
    required bool temperature,
    @JsonKey(name: 'tool_call') required bool toolCall,
    required ModelCost cost,
    required ModelLimit limit,
    required Map<String, dynamic> options,
    ModelModalities? modalities,
    bool? experimental,
    ModelStatusStatus? status,
    ModelProvider? provider,
  }) = _Model;

  Map<String, dynamic> toJson() => _$ModelToJson(this as _Model);
  factory Model.fromJson(Map<String, Object?> json) => _$ModelFromJson(json);
}

extension ModelMergeX on Model {
  /// Returns a new [Model] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model merge(Model other) {
    return copyWith(
      id: other.id,
      name: other.name,
      releaseDate: other.releaseDate,
      attachment: other.attachment,
      reasoning: other.reasoning,
      temperature: other.temperature,
      toolCall: other.toolCall,
      cost: other.cost,
      limit: other.limit,
      modalities: other.modalities,
      experimental: other.experimental,
      status: other.status,
      options: other.options,
      provider: other.provider,
    );
  }
}
