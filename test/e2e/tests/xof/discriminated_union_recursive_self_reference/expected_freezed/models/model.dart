// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ai.dart';
import 'model_type_type.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// AI model variant
@Freezed()
abstract class Model with _$Model {
  const factory Model({
    /// Discriminator value for Model
    required ModelTypeType type,

    /// Model ID
    required String id,

    /// Model name
    required String name,
  }) = _Model;

  Map<String, dynamic> toJson() => _$ModelToJson(this as _Model);
  factory Model.fromJson(Map<String, Object?> json) => _$ModelFromJson(json);
}

extension ModelMergeX on Model {
  /// Returns a new [Model] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model merge(Model other) {
    return copyWith(type: other.type, id: other.id, name: other.name);
  }
}
