// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
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

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': ?instance.updatedAt?.toIso8601String(),
  'schema_version': instance.schemaVersion,
  'nickname': ?instance.nickname,
  'status': ?instance.status,
  'mew_count': instance.mewCount,
  'friend': ?instance.friend,
};
