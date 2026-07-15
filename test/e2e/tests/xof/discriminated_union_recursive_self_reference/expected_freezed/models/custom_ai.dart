// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ai.dart';
import 'custom_ai_type_type.dart';

part 'custom_ai.freezed.dart';
part 'custom_ai.g.dart';

/// Custom AI variant with recursive self-reference (baseAi can be any AI type)
@Freezed()
abstract class CustomAi with _$CustomAi {
  const factory CustomAi({
    /// Discriminator value for CustomAI
    required CustomAiTypeType type,

    /// CustomAI ID
    required String id,

    /// CustomAI name
    required String name,

    /// Reference to base AI model/agent ID
    required String baseAiId,

    /// Recursive reference: CustomAI can have a baseAi which is also an AI (SELF-REFERENCE TEST)
    @JsonKey(includeIfNull: false) Ai? baseAi,
  }) = _CustomAi;

  Map<String, dynamic> toJson() => _$CustomAiToJson(this as _CustomAi);
  factory CustomAi.fromJson(Map<String, Object?> json) =>
      _$CustomAiFromJson(json);
}

extension CustomAiMergeX on CustomAi {
  /// Returns a new [CustomAi] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CustomAi merge(CustomAi other) {
    return copyWith(
      type: other.type,
      id: other.id,
      name: other.name,
      baseAiId: other.baseAiId,
      baseAi: other.baseAi,
    );
  }
}
