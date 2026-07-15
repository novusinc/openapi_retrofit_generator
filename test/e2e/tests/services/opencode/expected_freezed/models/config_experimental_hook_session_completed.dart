// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_experimental_hook_session_completed.freezed.dart';
part 'config_experimental_hook_session_completed.g.dart';

@Freezed()
abstract class ConfigExperimentalHookSessionCompleted
    with _$ConfigExperimentalHookSessionCompleted {
  const factory ConfigExperimentalHookSessionCompleted({
    required List<String> command,
    Map<String, String>? environment,
  }) = _ConfigExperimentalHookSessionCompleted;

  Map<String, dynamic> toJson() =>
      _$ConfigExperimentalHookSessionCompletedToJson(
        this as _ConfigExperimentalHookSessionCompleted,
      );
  factory ConfigExperimentalHookSessionCompleted.fromJson(
    Map<String, Object?> json,
  ) => _$ConfigExperimentalHookSessionCompletedFromJson(json);
}

extension ConfigExperimentalHookSessionCompletedMergeX
    on ConfigExperimentalHookSessionCompleted {
  /// Returns a new [ConfigExperimentalHookSessionCompleted] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ConfigExperimentalHookSessionCompleted merge(
    ConfigExperimentalHookSessionCompleted other,
  ) {
    return copyWith(command: other.command, environment: other.environment);
  }
}
