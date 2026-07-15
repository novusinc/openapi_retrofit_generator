// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity.dart';
import 'person_entity_entity_type_entity_type.dart';

part 'person_entity.freezed.dart';
part 'person_entity.g.dart';

@Freezed()
abstract class PersonEntity with _$PersonEntity {
  const factory PersonEntity({
    required String id,
    required DateTime createdAt,
    required DateTime dateOfBirth,
    @JsonKey(includeIfNull: false) PersonEntityEntityTypeEntityType? entityType,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? nationality,
    @JsonKey(includeIfNull: false) String? occupation,
    @JsonKey(includeIfNull: false) Map<String, String>? socialProfiles,
  }) = _PersonEntity;

  Map<String, dynamic> toJson() => _$PersonEntityToJson(this as _PersonEntity);
  factory PersonEntity.fromJson(Map<String, Object?> json) =>
      _$PersonEntityFromJson(json);
}

extension PersonEntityMergeX on PersonEntity {
  /// Returns a new [PersonEntity] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PersonEntity merge(PersonEntity other) {
    return copyWith(
      id: other.id,
      entityType: other.entityType,
      name: other.name,
      description: other.description,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      dateOfBirth: other.dateOfBirth,
      nationality: other.nationality,
      occupation: other.occupation,
      socialProfiles: other.socialProfiles,
    );
  }
}
