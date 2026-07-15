// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dog _$DogFromJson(Map<String, dynamic> json) => Dog(
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

Map<String, dynamic> _$DogToJson(Dog instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'schema_version': instance.schemaVersion,
  'nickname': ?instance.nickname,
  'status': ?instance.status,
  'bark_sound': instance.barkSound,
  'toy': ?instance.toy,
};
