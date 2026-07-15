// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'organization_entity.dart';
import 'organization_entity_entity_type_entity_type.dart';
import 'person_entity.dart';
import 'person_entity_entity_type_entity_type.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@Freezed(unionKey: 'entityType')
sealed class Entity with _$Entity {
  @FreezedUnionValue('person')
  const factory Entity.person({
    required String id,
    required DateTime createdAt,
    required DateTime dateOfBirth,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? nationality,
    @JsonKey(includeIfNull: false) String? occupation,
    @JsonKey(includeIfNull: false) Map<String, String>? socialProfiles,
  }) = EntityPerson;

  @FreezedUnionValue('organization')
  const factory Entity.organization({
    required String id,
    required DateTime createdAt,
    required String registrationNumber,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) DateTime? updatedAt,
    @JsonKey(includeIfNull: false) DateTime? foundedDate,
    @JsonKey(includeIfNull: false) String? industry,
    @JsonKey(includeIfNull: false) int? employeeCount,
    @JsonKey(includeIfNull: false) double? revenue,
  }) = EntityOrganization;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory Entity.fromJson(Map<String, Object?> json) => _$EntityFromJson(json);
}
