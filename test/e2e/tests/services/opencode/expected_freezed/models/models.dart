// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models_cost.dart';
import 'models_limit.dart';
import 'models_modalities.dart';
import 'models_status_status.dart';
import 'models_provider.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@Freezed()
abstract class Models with _$Models {
  const factory Models({
    String? id,
    String? name,
    @JsonKey(name: 'release_date') String? releaseDate,
    bool? attachment,
    bool? reasoning,
    bool? temperature,
    @JsonKey(name: 'tool_call') bool? toolCall,
    ModelsCost? cost,
    ModelsLimit? limit,
    ModelsModalities? modalities,
    bool? experimental,
    ModelsStatusStatus? status,
    Map<String, dynamic>? options,
    ModelsProvider? provider,
  }) = _Models;

  Map<String, dynamic> toJson() => _$ModelsToJson(this as _Models);
  factory Models.fromJson(Map<String, Object?> json) => _$ModelsFromJson(json);
}

extension ModelsMergeX on Models {
  /// Returns a new [Models] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Models merge(Models other) {
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
