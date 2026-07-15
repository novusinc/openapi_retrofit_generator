// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyMembersCat _$FamilyMembersCatFromJson(Map<String, dynamic> json) =>
    FamilyMembersCat(
      mewCount: (json['mewCount'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$FamilyMembersCatToJson(FamilyMembersCat instance) =>
    <String, dynamic>{'mewCount': instance.mewCount, 'type': instance.$type};

FamilyMembersDog _$FamilyMembersDogFromJson(Map<String, dynamic> json) =>
    FamilyMembersDog(
      barkSound: json['barkSound'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$FamilyMembersDogToJson(FamilyMembersDog instance) =>
    <String, dynamic>{'barkSound': instance.barkSound, 'type': instance.$type};

FamilyMembersHuman _$FamilyMembersHumanFromJson(Map<String, dynamic> json) =>
    FamilyMembersHuman(
      job: json['job'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$FamilyMembersHumanToJson(FamilyMembersHuman instance) =>
    <String, dynamic>{'job': instance.job, 'type': instance.$type};
