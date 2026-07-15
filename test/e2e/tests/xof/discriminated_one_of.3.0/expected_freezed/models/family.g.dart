// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Family _$FamilyFromJson(Map<String, dynamic> json) => _Family(
  members: (json['members'] as List<dynamic>)
      .map((e) => FamilyMembers.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FamilyToJson(_Family instance) => <String, dynamic>{
  'members': instance.members,
};
