// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'assistant_message_tokens_cache.dart';

part 'assistant_message_tokens.freezed.dart';
part 'assistant_message_tokens.g.dart';

@Freezed()
abstract class AssistantMessageTokens with _$AssistantMessageTokens {
  const factory AssistantMessageTokens({
    required num input,
    required num output,
    required num reasoning,
    required AssistantMessageTokensCache cache,
  }) = _AssistantMessageTokens;

  Map<String, dynamic> toJson() =>
      _$AssistantMessageTokensToJson(this as _AssistantMessageTokens);
  factory AssistantMessageTokens.fromJson(Map<String, Object?> json) =>
      _$AssistantMessageTokensFromJson(json);
}

extension AssistantMessageTokensMergeX on AssistantMessageTokens {
  /// Returns a new [AssistantMessageTokens] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AssistantMessageTokens merge(AssistantMessageTokens other) {
    return copyWith(
      input: other.input,
      output: other.output,
      reasoning: other.reasoning,
      cache: other.cache,
    );
  }
}
