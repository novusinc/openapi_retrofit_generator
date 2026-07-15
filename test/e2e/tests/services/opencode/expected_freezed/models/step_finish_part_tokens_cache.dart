// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_finish_part_tokens_cache.freezed.dart';
part 'step_finish_part_tokens_cache.g.dart';

@Freezed()
abstract class StepFinishPartTokensCache with _$StepFinishPartTokensCache {
  const factory StepFinishPartTokensCache({
    required num read,
    required num write,
  }) = _StepFinishPartTokensCache;

  Map<String, dynamic> toJson() =>
      _$StepFinishPartTokensCacheToJson(this as _StepFinishPartTokensCache);
  factory StepFinishPartTokensCache.fromJson(Map<String, Object?> json) =>
      _$StepFinishPartTokensCacheFromJson(json);
}

extension StepFinishPartTokensCacheMergeX on StepFinishPartTokensCache {
  /// Returns a new [StepFinishPartTokensCache] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  StepFinishPartTokensCache merge(StepFinishPartTokensCache other) {
    return copyWith(read: other.read, write: other.write);
  }
}
