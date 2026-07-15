// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant_message_time.freezed.dart';
part 'assistant_message_time.g.dart';

@Freezed()
abstract class AssistantMessageTime with _$AssistantMessageTime {
  const factory AssistantMessageTime({required num created, num? completed}) =
      _AssistantMessageTime;

  Map<String, dynamic> toJson() =>
      _$AssistantMessageTimeToJson(this as _AssistantMessageTime);
  factory AssistantMessageTime.fromJson(Map<String, Object?> json) =>
      _$AssistantMessageTimeFromJson(json);
}

extension AssistantMessageTimeMergeX on AssistantMessageTime {
  /// Returns a new [AssistantMessageTime] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AssistantMessageTime merge(AssistantMessageTime other) {
    return copyWith(created: other.created, completed: other.completed);
  }
}
