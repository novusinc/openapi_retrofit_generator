// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'cat.dart';
import 'dog.dart';
import 'pet_status.dart';
import 'robot.dart';
import 'toy.dart';

part 'pet.mapper.dart';

/// A discriminated union over existing top-level leaf schemas.
@MappableClass(
  discriminatorKey: 'type',
  includeSubClasses: [PetCat, PetDog, PetRobot],
)
sealed class Pet with PetMappable {
  const Pet();

  static Pet fromJson(Map<String, dynamic> json) => PetMapper.fromJson(json);
}

@MappableClass(discriminatorValue: 'cat')
class PetCat extends Pet with PetCatMappable {
  final String type;
  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  @MappableField(key: 'updated_at')
  final DateTime? updatedAt;
  @MappableField(key: 'schema_version')
  final int schemaVersion;
  final String? nickname;
  final PetStatus? status;
  @MappableField(key: 'mew_count')
  final int mewCount;
  final Pet? friend;

  const PetCat({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.schemaVersion,
    required this.nickname,
    required this.status,
    required this.mewCount,
    required this.friend,
  });
}

@MappableClass(discriminatorValue: 'dog')
class PetDog extends Pet with PetDogMappable {
  final String type;
  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  @MappableField(key: 'updated_at')
  final DateTime? updatedAt;
  @MappableField(key: 'schema_version')
  final int schemaVersion;
  final String? nickname;
  final PetStatus? status;
  @MappableField(key: 'bark_sound')
  final String barkSound;
  final Toy? toy;

  const PetDog({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.schemaVersion,
    required this.nickname,
    required this.status,
    required this.barkSound,
    required this.toy,
  });
}

@MappableClass(discriminatorValue: 'robot')
class PetRobot extends Pet with PetRobotMappable {
  final String type;
  @MappableField(key: 'updated_at')
  final DateTime? updatedAt;
  @MappableField(key: 'schema_version')
  final int schemaVersion;
  final String? nickname;
  final PetStatus? status;
  final int battery;

  const PetRobot({
    required this.type,
    required this.updatedAt,
    required this.schemaVersion,
    required this.nickname,
    required this.status,
    required this.battery,
  });
}
