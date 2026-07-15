// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tui_append_prompt_request.freezed.dart';
part 'tui_append_prompt_request.g.dart';

@Freezed()
abstract class TuiAppendPromptRequest with _$TuiAppendPromptRequest {
  const factory TuiAppendPromptRequest({required String text}) =
      _TuiAppendPromptRequest;

  Map<String, dynamic> toJson() =>
      _$TuiAppendPromptRequestToJson(this as _TuiAppendPromptRequest);
  factory TuiAppendPromptRequest.fromJson(Map<String, Object?> json) =>
      _$TuiAppendPromptRequestFromJson(json);
}

extension TuiAppendPromptRequestMergeX on TuiAppendPromptRequest {
  /// Returns a new [TuiAppendPromptRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  TuiAppendPromptRequest merge(TuiAppendPromptRequest other) {
    return copyWith(text: other.text);
  }
}
