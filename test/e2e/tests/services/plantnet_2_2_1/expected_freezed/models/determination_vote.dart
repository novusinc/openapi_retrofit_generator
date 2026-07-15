// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'determination_vote.freezed.dart';
part 'determination_vote.g.dart';

@Freezed()
abstract class DeterminationVote with _$DeterminationVote {
  const factory DeterminationVote({
    /// Species name
    required String name,

    /// Score associated to the name
    required num score,
  }) = _DeterminationVote;

  Map<String, dynamic> toJson() =>
      _$DeterminationVoteToJson(this as _DeterminationVote);
  factory DeterminationVote.fromJson(Map<String, Object?> json) =>
      _$DeterminationVoteFromJson(json);
}

extension DeterminationVoteMergeX on DeterminationVote {
  /// Returns a new [DeterminationVote] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DeterminationVote merge(DeterminationVote other) {
    return copyWith(name: other.name, score: other.score);
  }
}
