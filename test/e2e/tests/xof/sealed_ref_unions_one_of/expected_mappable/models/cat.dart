// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'pet.dart';
import 'pet_status.dart';

part 'cat.mapper.dart';

/// A cat.
@MappableClass()
class Cat with CatMappable {
  const Cat({
    required this.id,
    required this.createdAt,
    this.updatedAt,
    this.nickname,
    this.status,
    this.friend,
    this.type = 'cat',
    this.schemaVersion = 1,
    this.mewCount = 0,
  });

  final String id;
  @MappableField(key: 'created_at')
  final DateTime createdAt;
  @MappableField(key: 'updated_at')
  final DateTime? updatedAt;
  final String? nickname;
  final PetStatus? status;
  final Pet? friend;
  final String type;
  @MappableField(key: 'schema_version')
  final int schemaVersion;
  @MappableField(key: 'mew_count')
  final int mewCount;

  static Cat fromJson(Map<String, dynamic> json) => CatMapper.fromJson(json);

  /// Returns a new [Cat] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Cat merge(Cat other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      schemaVersion: other.schemaVersion,
      nickname: other.nickname,
      status: other.status,
      mewCount: other.mewCount,
      friend: other.friend,
    );
  }
}
