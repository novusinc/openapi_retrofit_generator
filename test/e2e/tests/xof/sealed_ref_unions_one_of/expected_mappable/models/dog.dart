// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'pet.dart';
import 'pet_status.dart';
import 'toy.dart';

part 'dog.mapper.dart';

/// A dog.
@MappableClass()
class Dog with DogMappable {
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

  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  @MappableField(key: 'bark_sound')
  final String barkSound;
  @MappableField(key: 'updated_at')
  final DateTime? updatedAt;
  final String? nickname;
  final PetStatus? status;
  final Toy? toy;
  final String type;
  @MappableField(key: 'schema_version')
  final int schemaVersion;

  static Dog fromJson(Map<String, dynamic> json) => DogMapper.fromJson(json);

  /// Returns a new [Dog] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Dog merge(Dog other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      schemaVersion: other.schemaVersion,
      nickname: other.nickname,
      status: other.status,
      barkSound: other.barkSound,
      toy: other.toy,
    );
  }
}
