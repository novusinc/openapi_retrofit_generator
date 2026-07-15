// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_permission.freezed.dart';
part 'agent_permission.g.dart';

@Freezed()
abstract class AgentPermission with _$AgentPermission {
  const factory AgentPermission({
    required dynamic edit,
    required Map<String, dynamic> bash,
    dynamic webfetch,
  }) = _AgentPermission;

  Map<String, dynamic> toJson() =>
      _$AgentPermissionToJson(this as _AgentPermission);
  factory AgentPermission.fromJson(Map<String, Object?> json) =>
      _$AgentPermissionFromJson(json);
}

extension AgentPermissionMergeX on AgentPermission {
  /// Returns a new [AgentPermission] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AgentPermission merge(AgentPermission other) {
    return copyWith(
      edit: other.edit,
      bash: other.bash,
      webfetch: other.webfetch,
    );
  }
}
