// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_part_input_time.dart';

part 'text_part_input.freezed.dart';
part 'text_part_input.g.dart';

@Freezed()
abstract class TextPartInput with _$TextPartInput {
  const factory TextPartInput({
    required String type,
    required String text,
    String? id,
    bool? synthetic,
    TextPartInputTime? time,
    Map<String, dynamic>? metadata,
  }) = _TextPartInput;

  Map<String, dynamic> toJson() =>
      _$TextPartInputToJson(this as _TextPartInput);
  factory TextPartInput.fromJson(Map<String, Object?> json) =>
      _$TextPartInputFromJson(json);
}

extension TextPartInputMergeX on TextPartInput {
  /// Returns a new [TextPartInput] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TextPartInput merge(TextPartInput other) {
    return copyWith(
      id: other.id,
      type: other.type,
      text: other.text,
      synthetic: other.synthetic,
      time: other.time,
      metadata: other.metadata,
    );
  }
}
