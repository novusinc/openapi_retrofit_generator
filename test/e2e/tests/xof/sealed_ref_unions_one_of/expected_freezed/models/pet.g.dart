// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cat _$CatFromJson(Map<String, dynamic> json) => _Cat(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  nickname: json['nickname'] as String?,
  status: json['status'] == null
      ? null
      : PetStatus.fromJson(json['status'] as String),
  friend: json['friend'] == null
      ? null
      : Pet.fromJson(json['friend'] as Map<String, dynamic>),
  type: json['type'] as String? ?? 'cat',
  schemaVersion: (json['schema_version'] as num?)?.toInt() ?? 1,
  mewCount: (json['mew_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CatToJson(_Cat instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'nickname': ?instance.nickname,
  'status': ?instance.status,
  'friend': ?instance.friend,
  'type': instance.type,
  'schema_version': instance.schemaVersion,
  'mew_count': instance.mewCount,
};

_Dog _$DogFromJson(Map<String, dynamic> json) => _Dog(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  barkSound: json['bark_sound'] as String,
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  nickname: json['nickname'] as String?,
  status: json['status'] == null
      ? null
      : PetStatus.fromJson(json['status'] as String),
  toy: json['toy'] == null
      ? null
      : Toy.fromJson(json['toy'] as Map<String, dynamic>),
  type: json['type'] as String? ?? 'dog',
  schemaVersion: (json['schema_version'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$DogToJson(_Dog instance) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'bark_sound': instance.barkSound,
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'nickname': ?instance.nickname,
  'status': ?instance.status,
  'toy': ?instance.toy,
  'type': instance.type,
  'schema_version': instance.schemaVersion,
};

_Robot _$RobotFromJson(Map<String, dynamic> json) => _Robot(
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

Map<String, dynamic> _$RobotToJson(_Robot instance) => <String, dynamic>{
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'nickname': ?instance.nickname,
  'status': ?instance.status,
  'type': instance.type,
  'schema_version': instance.schemaVersion,
  'battery': instance.battery,
};
