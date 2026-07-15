// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'command.freezed.dart';
part 'command.g.dart';

@Freezed()
abstract class Command with _$Command {
  const factory Command({
    required String template,
    String? description,
    String? agent,
    String? model,
    bool? subtask,
  }) = _Command;

  Map<String, dynamic> toJson() => _$CommandToJson(this as _Command);
  factory Command.fromJson(Map<String, Object?> json) =>
      _$CommandFromJson(json);
}

extension CommandMergeX on Command {
  /// Returns a new [Command] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Command merge(Command other) {
    return copyWith(
      template: other.template,
      description: other.description,
      agent: other.agent,
      model: other.model,
      subtask: other.subtask,
    );
  }
}
