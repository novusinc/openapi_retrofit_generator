// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'pet_status.dart';
import 'pet.dart';
import 'toy.dart';

part 'pet.g.dart';

/// A discriminated union over existing top-level leaf schemas.
@JsonSerializable(createFactory: false)
sealed class Pet {
  const Pet();

  factory Pet.fromJson(Map<String, dynamic> json) =>
      PetUnionDeserializer.tryDeserialize(json);

  Map<String, dynamic> toJson();
}

extension PetUnionDeserializer on Pet {
  static Pet tryDeserialize(
    Map<String, dynamic> json, {
    String key = 'type',
    Map<Type, Object?>? mapping,
  }) {
    final mappingFallback = const <Type, Object?>{
      PetCat: 'cat',
      PetDog: 'dog',
      PetRobot: 'robot',
    };
    final value = json[key];
    final effective = mapping ?? mappingFallback;
    return switch (value) {
      _ when value == effective[PetCat] => PetCat.fromJson(json),
      _ when value == effective[PetDog] => PetDog.fromJson(json),
      _ when value == effective[PetRobot] => PetRobot.fromJson(json),
      _ => throw FormatException(
        'Unknown discriminator value "${json[key]}" for Pet',
      ),
    };
  }
}

@JsonSerializable()
class PetCat extends Pet {
  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'schema_version')
  final int schemaVersion;
  final String? nickname;
  final PetStatus? status;
  @JsonKey(name: 'mew_count')
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

  factory PetCat.fromJson(Map<String, dynamic> json) => _$PetCatFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PetCatToJson(this);
}

@JsonSerializable()
class PetDog extends Pet {
  final String type;
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'schema_version')
  final int schemaVersion;
  final String? nickname;
  final PetStatus? status;
  @JsonKey(name: 'bark_sound')
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

  factory PetDog.fromJson(Map<String, dynamic> json) => _$PetDogFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PetDogToJson(this);
}

@JsonSerializable()
class PetRobot extends Pet {
  final String type;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'schema_version')
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

  factory PetRobot.fromJson(Map<String, dynamic> json) =>
      _$PetRobotFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PetRobotToJson(this);
}
