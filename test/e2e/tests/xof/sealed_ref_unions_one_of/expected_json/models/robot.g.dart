// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'robot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Robot _$RobotFromJson(Map<String, dynamic> json) => Robot(
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  nickname: json['nickname'] as String?,
  status: json['status'] == null
      ? null
      : PetStatus.fromJson(json['status'] as String),
  type: json['type'] as String? ?? 'robot',
  schemaVersion: (json['schema_version'] as num?)?.toInt() ?? 1,
  battery: (json['battery'] as num?)?.toInt() ?? 100,
);

Map<String, dynamic> _$RobotToJson(Robot instance) => <String, dynamic>{
  'type': instance.type,
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'schema_version': instance.schemaVersion,
  'nickname': ?instance.nickname,
  'status': ?instance.status,
  'battery': instance.battery,
};
