// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'step_finish_part_tokens_cache.dart';

part 'step_finish_part_tokens.freezed.dart';
part 'step_finish_part_tokens.g.dart';

@Freezed()
abstract class StepFinishPartTokens with _$StepFinishPartTokens {
  const factory StepFinishPartTokens({
    required num input,
    required num output,
    required num reasoning,
    required StepFinishPartTokensCache cache,
  }) = _StepFinishPartTokens;

  Map<String, dynamic> toJson() =>
      _$StepFinishPartTokensToJson(this as _StepFinishPartTokens);
  factory StepFinishPartTokens.fromJson(Map<String, Object?> json) =>
      _$StepFinishPartTokensFromJson(json);
}

extension StepFinishPartTokensMergeX on StepFinishPartTokens {
  /// Returns a new [StepFinishPartTokens] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  StepFinishPartTokens merge(StepFinishPartTokens other) {
    return copyWith(
      input: other.input,
      output: other.output,
      reasoning: other.reasoning,
      cache: other.cache,
    );
  }
}
