// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_house.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetHouse _$PetHouseFromJson(Map<String, dynamic> json) => PetHouse(
  occupant: Cat.fromJson(json['occupant'] as Map<String, dynamic>),
  backup: json['backup'] == null
      ? null
      : Pet.fromJson(json['backup'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PetHouseToJson(PetHouse instance) => <String, dynamic>{
  'occupant': instance.occupant,
  'backup': ?instance.backup,
};
