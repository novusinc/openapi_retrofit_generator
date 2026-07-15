// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_watcher.freezed.dart';
part 'config_watcher.g.dart';

@Freezed()
abstract class ConfigWatcher with _$ConfigWatcher {
  const factory ConfigWatcher({List<String>? ignore}) = _ConfigWatcher;

  Map<String, dynamic> toJson() =>
      _$ConfigWatcherToJson(this as _ConfigWatcher);
  factory ConfigWatcher.fromJson(Map<String, Object?> json) =>
      _$ConfigWatcherFromJson(json);
}

extension ConfigWatcherMergeX on ConfigWatcher {
  /// Returns a new [ConfigWatcher] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ConfigWatcher merge(ConfigWatcher other) {
    return copyWith(ignore: other.ignore);
  }
}
