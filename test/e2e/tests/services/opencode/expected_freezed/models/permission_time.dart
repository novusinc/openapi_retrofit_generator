// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_time.freezed.dart';
part 'permission_time.g.dart';

@Freezed()
abstract class PermissionTime with _$PermissionTime {
  const factory PermissionTime({required num created}) = _PermissionTime;

  Map<String, dynamic> toJson() =>
      _$PermissionTimeToJson(this as _PermissionTime);
  factory PermissionTime.fromJson(Map<String, Object?> json) =>
      _$PermissionTimeFromJson(json);
}

extension PermissionTimeMergeX on PermissionTime {
  /// Returns a new [PermissionTime] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PermissionTime merge(PermissionTime other) {
    return copyWith(created: other.created);
  }
}
