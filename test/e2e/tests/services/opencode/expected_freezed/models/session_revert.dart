// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_revert.freezed.dart';
part 'session_revert.g.dart';

@Freezed()
abstract class SessionRevert with _$SessionRevert {
  const factory SessionRevert({
    @JsonKey(name: 'messageID') required String messageId,
    @JsonKey(name: 'partID') String? partId,
    String? snapshot,
    String? diff,
  }) = _SessionRevert;

  Map<String, dynamic> toJson() =>
      _$SessionRevertToJson(this as _SessionRevert);
  factory SessionRevert.fromJson(Map<String, Object?> json) =>
      _$SessionRevertFromJson(json);
}

extension SessionRevertMergeX on SessionRevert {
  /// Returns a new [SessionRevert] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionRevert merge(SessionRevert other) {
    return copyWith(
      messageId: other.messageId,
      partId: other.partId,
      snapshot: other.snapshot,
      diff: other.diff,
    );
  }
}
