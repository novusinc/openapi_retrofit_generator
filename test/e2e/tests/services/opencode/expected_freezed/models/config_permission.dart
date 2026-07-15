// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_permission.freezed.dart';
part 'config_permission.g.dart';

@Freezed()
abstract class ConfigPermission with _$ConfigPermission {
  const factory ConfigPermission({
    dynamic edit,
    dynamic bash,
    dynamic webfetch,
  }) = _ConfigPermission;

  Map<String, dynamic> toJson() =>
      _$ConfigPermissionToJson(this as _ConfigPermission);
  factory ConfigPermission.fromJson(Map<String, Object?> json) =>
      _$ConfigPermissionFromJson(json);
}

extension ConfigPermissionMergeX on ConfigPermission {
  /// Returns a new [ConfigPermission] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ConfigPermission merge(ConfigPermission other) {
    return copyWith(
      edit: other.edit,
      bash: other.bash,
      webfetch: other.webfetch,
    );
  }
}
