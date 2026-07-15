// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_output_length_error.freezed.dart';
part 'message_output_length_error.g.dart';

@Freezed()
abstract class MessageOutputLengthError with _$MessageOutputLengthError {
  const factory MessageOutputLengthError({
    required String name,
    required dynamic data,
  }) = _MessageOutputLengthError;

  Map<String, dynamic> toJson() =>
      _$MessageOutputLengthErrorToJson(this as _MessageOutputLengthError);
  factory MessageOutputLengthError.fromJson(Map<String, Object?> json) =>
      _$MessageOutputLengthErrorFromJson(json);
}

extension MessageOutputLengthErrorMergeX on MessageOutputLengthError {
  /// Returns a new [MessageOutputLengthError] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  MessageOutputLengthError merge(MessageOutputLengthError other) {
    return copyWith(name: other.name, data: other.data);
  }
}
