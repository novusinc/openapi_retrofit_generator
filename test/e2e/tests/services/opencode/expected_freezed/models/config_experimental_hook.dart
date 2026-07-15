// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_edited.dart';
import 'config_experimental_hook_session_completed.dart';

part 'config_experimental_hook.freezed.dart';
part 'config_experimental_hook.g.dart';

@Freezed()
abstract class ConfigExperimentalHook with _$ConfigExperimentalHook {
  const factory ConfigExperimentalHook({
    @JsonKey(name: 'file_edited') Map<String, List<FileEdited>>? fileEdited,
    @JsonKey(name: 'session_completed')
    List<ConfigExperimentalHookSessionCompleted>? sessionCompleted,
  }) = _ConfigExperimentalHook;

  Map<String, dynamic> toJson() =>
      _$ConfigExperimentalHookToJson(this as _ConfigExperimentalHook);
  factory ConfigExperimentalHook.fromJson(Map<String, Object?> json) =>
      _$ConfigExperimentalHookFromJson(json);
}

extension ConfigExperimentalHookMergeX on ConfigExperimentalHook {
  /// Returns a new [ConfigExperimentalHook] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ConfigExperimentalHook merge(ConfigExperimentalHook other) {
    return copyWith(
      fileEdited: other.fileEdited,
      sessionCompleted: other.sessionCompleted,
    );
  }
}
