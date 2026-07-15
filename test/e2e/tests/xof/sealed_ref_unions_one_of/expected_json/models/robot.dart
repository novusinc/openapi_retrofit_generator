// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'pet.dart';
import 'pet_status.dart';

part 'robot.g.dart';

/// A robot pet whose fields are all optional or defaulted.
@JsonSerializable()
class Robot {
  const Robot({
    this.updatedAt,
    this.nickname,
    this.status,
    this.type = 'robot',
    this.schemaVersion = 1,
    this.battery = 100,
  });

  factory Robot.fromJson(Map<String, Object?> json) => _$RobotFromJson(json);

  final String type;
  @JsonKey(includeIfNull: false, name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'schema_version')
  final int schemaVersion;
  @JsonKey(includeIfNull: false)
  final String? nickname;
  @JsonKey(includeIfNull: false)
  final PetStatus? status;
  final int battery;

  Map<String, Object?> toJson() => _$RobotToJson(this);
}
