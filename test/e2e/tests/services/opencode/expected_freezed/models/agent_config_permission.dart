// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_config_permission.freezed.dart';
part 'agent_config_permission.g.dart';

@Freezed()
abstract class AgentConfigPermission with _$AgentConfigPermission {
  const factory AgentConfigPermission({
    dynamic edit,
    dynamic bash,
    dynamic webfetch,
  }) = _AgentConfigPermission;

  Map<String, dynamic> toJson() =>
      _$AgentConfigPermissionToJson(this as _AgentConfigPermission);
  factory AgentConfigPermission.fromJson(Map<String, Object?> json) =>
      _$AgentConfigPermissionFromJson(json);
}

extension AgentConfigPermissionMergeX on AgentConfigPermission {
  /// Returns a new [AgentConfigPermission] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentConfigPermission merge(AgentConfigPermission other) {
    return copyWith(
      edit: other.edit,
      bash: other.bash,
      webfetch: other.webfetch,
    );
  }
}
