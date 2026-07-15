// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'config_experimental_hook.dart';

part 'config_experimental.freezed.dart';
part 'config_experimental.g.dart';

@Freezed()
abstract class ConfigExperimental with _$ConfigExperimental {
  const factory ConfigExperimental({
    ConfigExperimentalHook? hook,
    @JsonKey(name: 'disable_paste_summary') bool? disablePasteSummary,
  }) = _ConfigExperimental;

  Map<String, dynamic> toJson() =>
      _$ConfigExperimentalToJson(this as _ConfigExperimental);
  factory ConfigExperimental.fromJson(Map<String, Object?> json) =>
      _$ConfigExperimentalFromJson(json);
}

extension ConfigExperimentalMergeX on ConfigExperimental {
  /// Returns a new [ConfigExperimental] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ConfigExperimental merge(ConfigExperimental other) {
    return copyWith(
      hook: other.hook,
      disablePasteSummary: other.disablePasteSummary,
    );
  }
}
