// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_start_part.freezed.dart';
part 'step_start_part.g.dart';

@Freezed()
abstract class StepStartPart with _$StepStartPart {
  const factory StepStartPart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    String? snapshot,
  }) = _StepStartPart;

  Map<String, dynamic> toJson() =>
      _$StepStartPartToJson(this as _StepStartPart);
  factory StepStartPart.fromJson(Map<String, Object?> json) =>
      _$StepStartPartFromJson(json);
}

extension StepStartPartMergeX on StepStartPart {
  /// Returns a new [StepStartPart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  StepStartPart merge(StepStartPart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      snapshot: other.snapshot,
    );
  }
}
