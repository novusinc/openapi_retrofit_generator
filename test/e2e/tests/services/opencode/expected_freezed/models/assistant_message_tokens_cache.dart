// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant_message_tokens_cache.freezed.dart';
part 'assistant_message_tokens_cache.g.dart';

@Freezed()
abstract class AssistantMessageTokensCache with _$AssistantMessageTokensCache {
  const factory AssistantMessageTokensCache({
    required num read,
    required num write,
  }) = _AssistantMessageTokensCache;

  Map<String, dynamic> toJson() =>
      _$AssistantMessageTokensCacheToJson(this as _AssistantMessageTokensCache);
  factory AssistantMessageTokensCache.fromJson(Map<String, Object?> json) =>
      _$AssistantMessageTokensCacheFromJson(json);
}

extension AssistantMessageTokensCacheMergeX on AssistantMessageTokensCache {
  /// Returns a new [AssistantMessageTokensCache] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AssistantMessageTokensCache merge(AssistantMessageTokensCache other) {
    return copyWith(read: other.read, write: other.write);
  }
}
