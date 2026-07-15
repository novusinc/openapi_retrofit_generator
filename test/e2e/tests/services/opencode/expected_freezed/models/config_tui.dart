// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_tui.freezed.dart';
part 'config_tui.g.dart';

@Freezed()
abstract class ConfigTui with _$ConfigTui {
  const factory ConfigTui({
    /// TUI scroll speed
    @JsonKey(name: 'scroll_speed') @Default(2) num scrollSpeed,
  }) = _ConfigTui;

  Map<String, dynamic> toJson() => _$ConfigTuiToJson(this as _ConfigTui);
  factory ConfigTui.fromJson(Map<String, Object?> json) =>
      _$ConfigTuiFromJson(json);
}

extension ConfigTuiMergeX on ConfigTui {
  /// Returns a new [ConfigTui] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ConfigTui merge(ConfigTui other) {
    return copyWith(scrollSpeed: other.scrollSpeed);
  }
}
