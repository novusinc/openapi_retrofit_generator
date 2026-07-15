// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_diff.freezed.dart';
part 'file_diff.g.dart';

@Freezed()
abstract class FileDiff with _$FileDiff {
  const factory FileDiff({
    required String file,
    required String before,
    required String after,
    required num additions,
    required num deletions,
  }) = _FileDiff;

  Map<String, dynamic> toJson() => _$FileDiffToJson(this as _FileDiff);
  factory FileDiff.fromJson(Map<String, Object?> json) =>
      _$FileDiffFromJson(json);
}

extension FileDiffMergeX on FileDiff {
  /// Returns a new [FileDiff] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileDiff merge(FileDiff other) {
    return copyWith(
      file: other.file,
      before: other.before,
      after: other.after,
      additions: other.additions,
      deletions: other.deletions,
    );
  }
}
