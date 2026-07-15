// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'snapshot_part.freezed.dart';
part 'snapshot_part.g.dart';

@Freezed()
abstract class SnapshotPart with _$SnapshotPart {
  const factory SnapshotPart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    required String snapshot,
  }) = _SnapshotPart;

  Map<String, dynamic> toJson() => _$SnapshotPartToJson(this as _SnapshotPart);
  factory SnapshotPart.fromJson(Map<String, Object?> json) =>
      _$SnapshotPartFromJson(json);
}

extension SnapshotPartMergeX on SnapshotPart {
  /// Returns a new [SnapshotPart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SnapshotPart merge(SnapshotPart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      snapshot: other.snapshot,
    );
  }
}
