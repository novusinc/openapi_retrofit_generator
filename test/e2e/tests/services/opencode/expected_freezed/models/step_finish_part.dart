// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'step_finish_part_tokens.dart';

part 'step_finish_part.freezed.dart';
part 'step_finish_part.g.dart';

@Freezed()
abstract class StepFinishPart with _$StepFinishPart {
  const factory StepFinishPart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    required num cost,
    required StepFinishPartTokens tokens,
    String? snapshot,
  }) = _StepFinishPart;

  Map<String, dynamic> toJson() =>
      _$StepFinishPartToJson(this as _StepFinishPart);
  factory StepFinishPart.fromJson(Map<String, Object?> json) =>
      _$StepFinishPartFromJson(json);
}

extension StepFinishPartMergeX on StepFinishPart {
  /// Returns a new [StepFinishPart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  StepFinishPart merge(StepFinishPart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      snapshot: other.snapshot,
      cost: other.cost,
      tokens: other.tokens,
    );
  }
}
