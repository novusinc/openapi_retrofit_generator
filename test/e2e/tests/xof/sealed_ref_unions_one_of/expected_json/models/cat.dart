// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'pet.dart';
import 'pet_status.dart';

part 'cat.g.dart';

/// A cat.
@JsonSerializable()
class Cat {
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

  factory Cat.fromJson(Map<String, Object?> json) => _$CatFromJson(json);

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
  @JsonKey(name: 'mew_count')
  final int mewCount;
  @JsonKey(includeIfNull: false)
  final Pet? friend;

  Map<String, Object?> toJson() => _$CatToJson(this);
}
