// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'pet.dart';
import 'pet_status.dart';

part 'robot.mapper.dart';

/// A robot pet whose fields are all optional or defaulted.
@MappableClass()
class Robot with RobotMappable {
  const Robot({
    this.updatedAt,
    this.nickname,
    this.status,
    this.type = 'robot',
    this.schemaVersion = 1,
    this.battery = 100,
  });

  @MappableField(key: 'updated_at')
  final DateTime? updatedAt;
  final String? nickname;
  final PetStatus? status;
  final String type;
  @MappableField(key: 'schema_version')
  final int schemaVersion;
  final int battery;

  static Robot fromJson(Map<String, dynamic> json) =>
      RobotMapper.fromJson(json);

  /// Returns a new [Robot] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Robot merge(Robot other) {
    return copyWith(
      type: other.type,
      updatedAt: other.updatedAt,
      schemaVersion: other.schemaVersion,
      nickname: other.nickname,
      status: other.status,
      battery: other.battery,
    );
  }
}
