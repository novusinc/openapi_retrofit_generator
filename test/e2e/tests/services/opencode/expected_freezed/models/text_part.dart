// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_part_time.dart';

part 'text_part.freezed.dart';
part 'text_part.g.dart';

@Freezed()
abstract class TextPart with _$TextPart {
  const factory TextPart({
    required String id,
    @JsonKey(name: 'sessionID') required String sessionId,
    @JsonKey(name: 'messageID') required String messageId,
    required String type,
    required String text,
    bool? synthetic,
    TextPartTime? time,
    Map<String, dynamic>? metadata,
  }) = _TextPart;

  Map<String, dynamic> toJson() => _$TextPartToJson(this as _TextPart);
  factory TextPart.fromJson(Map<String, Object?> json) =>
      _$TextPartFromJson(json);
}

extension TextPartMergeX on TextPart {
  /// Returns a new [TextPart] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TextPart merge(TextPart other) {
    return copyWith(
      id: other.id,
      sessionId: other.sessionId,
      messageId: other.messageId,
      type: other.type,
      text: other.text,
      synthetic: other.synthetic,
      time: other.time,
      metadata: other.metadata,
    );
  }
}
