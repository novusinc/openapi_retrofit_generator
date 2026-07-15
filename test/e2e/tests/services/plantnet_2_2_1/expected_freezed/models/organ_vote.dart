// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'organ.dart';

part 'organ_vote.freezed.dart';
part 'organ_vote.g.dart';

@Freezed()
abstract class OrganVote with _$OrganVote {
  const factory OrganVote({
    required Organ organ,

    /// Score associated to the organ
    required num score,
  }) = _OrganVote;

  Map<String, dynamic> toJson() => _$OrganVoteToJson(this as _OrganVote);
  factory OrganVote.fromJson(Map<String, Object?> json) =>
      _$OrganVoteFromJson(json);
}

extension OrganVoteMergeX on OrganVote {
  /// Returns a new [OrganVote] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  OrganVote merge(OrganVote other) {
    return copyWith(organ: other.organ, score: other.score);
  }
}
