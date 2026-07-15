// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'pet.dart';
import 'pet_status.dart';
import 'toy.dart';

part 'dog.g.dart';

/// A dog.
@JsonSerializable()
class Dog {
  const Dog({
    required this.id,
    required this.createdAt,
    required this.barkSound,
    this.updatedAt,
    this.nickname,
    this.status,
    this.toy,
    this.type = 'dog',
    this.schemaVersion = 1,
  });

  factory Dog.fromJson(Map<String, Object?> json) => _$DogFromJson(json);

  final String type;

  /// Unique identifier.
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(includeIfNull: false, name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'schema_version')
  final int schemaVersion;
  @JsonKey(includeIfNull: false)
  final String? nickname;
  @JsonKey(includeIfNull: false)
  final PetStatus? status;
  @JsonKey(name: 'bark_sound')
  final String barkSound;
  @JsonKey(includeIfNull: false)
  final Toy? toy;

  Map<String, Object?> toJson() => _$DogToJson(this);
}
