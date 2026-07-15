// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_aborted_error_data.freezed.dart';
part 'message_aborted_error_data.g.dart';

@Freezed()
abstract class MessageAbortedErrorData with _$MessageAbortedErrorData {
  const factory MessageAbortedErrorData({required String message}) =
      _MessageAbortedErrorData;

  Map<String, dynamic> toJson() =>
      _$MessageAbortedErrorDataToJson(this as _MessageAbortedErrorData);
  factory MessageAbortedErrorData.fromJson(Map<String, Object?> json) =>
      _$MessageAbortedErrorDataFromJson(json);
}

extension MessageAbortedErrorDataMergeX on MessageAbortedErrorData {
  /// Returns a new [MessageAbortedErrorData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  MessageAbortedErrorData merge(MessageAbortedErrorData other) {
    return copyWith(message: other.message);
  }
}
