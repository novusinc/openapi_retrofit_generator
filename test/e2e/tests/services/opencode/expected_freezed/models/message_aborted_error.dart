// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_aborted_error_data.dart';

part 'message_aborted_error.freezed.dart';
part 'message_aborted_error.g.dart';

@Freezed()
abstract class MessageAbortedError with _$MessageAbortedError {
  const factory MessageAbortedError({
    required String name,
    required MessageAbortedErrorData data,
  }) = _MessageAbortedError;

  Map<String, dynamic> toJson() =>
      _$MessageAbortedErrorToJson(this as _MessageAbortedError);
  factory MessageAbortedError.fromJson(Map<String, Object?> json) =>
      _$MessageAbortedErrorFromJson(json);
}

extension MessageAbortedErrorMergeX on MessageAbortedError {
  /// Returns a new [MessageAbortedError] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  MessageAbortedError merge(MessageAbortedError other) {
    return copyWith(name: other.name, data: other.data);
  }
}
