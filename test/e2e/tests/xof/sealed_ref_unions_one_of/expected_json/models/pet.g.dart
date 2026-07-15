// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{};

PetCat _$PetCatFromJson(Map<String, dynamic> json) => PetCat(
  type: json['type'] as String,
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  schemaVersion: (json['schema_version'] as num).toInt(),
  nickname: json['nickname'] as String?,
  status: json['status'] == null
      ? null
      : PetStatus.fromJson(json['status'] as String),
  mewCount: (json['mew_count'] as num).toInt(),
  friend: json['friend'] == null
      ? null
      : Pet.fromJson(json['friend'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PetCatToJson(PetCat instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'schema_version': instance.schemaVersion,
  'nickname': instance.nickname,
  'status': instance.status,
  'mew_count': instance.mewCount,
  'friend': instance.friend,
};

PetDog _$PetDogFromJson(Map<String, dynamic> json) => PetDog(
  type: json['type'] as String,
  id: json['id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  schemaVersion: (json['schema_version'] as num).toInt(),
  nickname: json['nickname'] as String?,
  status: json['status'] == null
      ? null
      : PetStatus.fromJson(json['status'] as String),
  barkSound: json['bark_sound'] as String,
  toy: json['toy'] == null
      ? null
      : Toy.fromJson(json['toy'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PetDogToJson(PetDog instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'schema_version': instance.schemaVersion,
  'nickname': instance.nickname,
  'status': instance.status,
  'bark_sound': instance.barkSound,
  'toy': instance.toy,
};

PetRobot _$PetRobotFromJson(Map<String, dynamic> json) => PetRobot(
  type: json['type'] as String,
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  schemaVersion: (json['schema_version'] as num).toInt(),
  nickname: json['nickname'] as String?,
  status: json['status'] == null
      ? null
      : PetStatus.fromJson(json['status'] as String),
  battery: (json['battery'] as num).toInt(),
);

Map<String, dynamic> _$PetRobotToJson(PetRobot instance) => <String, dynamic>{
  'type': instance.type,
  'updated_at': instance.updatedAt?.toIso8601String(),
  'schema_version': instance.schemaVersion,
  'nickname': instance.nickname,
  'status': instance.status,
  'battery': instance.battery,
};
