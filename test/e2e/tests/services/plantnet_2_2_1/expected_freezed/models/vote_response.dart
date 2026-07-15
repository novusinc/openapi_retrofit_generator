// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_response.freezed.dart';
part 'vote_response.g.dart';

@Freezed()
abstract class VoteResponse with _$VoteResponse {
  const factory VoteResponse({required bool updated}) = _VoteResponse;

  Map<String, dynamic> toJson() => _$VoteResponseToJson(this as _VoteResponse);
  factory VoteResponse.fromJson(Map<String, Object?> json) =>
      _$VoteResponseFromJson(json);
}

extension VoteResponseMergeX on VoteResponse {
  /// Returns a new [VoteResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  VoteResponse merge(VoteResponse other) {
    return copyWith(updated: other.updated);
  }
}
