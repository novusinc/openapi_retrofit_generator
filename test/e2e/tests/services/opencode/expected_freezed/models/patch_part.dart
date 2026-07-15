// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_part.freezed.dart';
part 'patch_part.g.dart';

@Freezed()
abstract class PatchPart with _$PatchPart {
  const factory PatchPart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    required String hash,
    required List<String> files,
  }) = _PatchPart;

  Map<String, dynamic> toJson() => _$PatchPartToJson(this as _PatchPart);
  factory PatchPart.fromJson(Map<String, Object?> json) =>
      _$PatchPartFromJson(json);
}

extension PatchPartMergeX on PatchPart {
  /// Returns a new [PatchPart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PatchPart merge(PatchPart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      hash: other.hash,
      files: other.files,
    );
  }
}
