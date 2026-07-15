// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity.dart';
import 'organization_entity_entity_type_entity_type.dart';

part 'organization_entity.freezed.dart';
part 'organization_entity.g.dart';

@Freezed()
abstract class OrganizationEntity with _$OrganizationEntity {
  const factory OrganizationEntity({
    required String id,
    required DateTime createdAt,
    required String registrationNumber,
    OrganizationEntityEntityTypeEntityType? entityType,
    String? name,
    String? description,
    DateTime? updatedAt,
    DateTime? foundedDate,
    String? industry,
    int? employeeCount,
    double? revenue,
  }) = _OrganizationEntity;

  Map<String, dynamic> toJson() =>
      _$OrganizationEntityToJson(this as _OrganizationEntity);
  factory OrganizationEntity.fromJson(Map<String, Object?> json) =>
      _$OrganizationEntityFromJson(json);
}

extension OrganizationEntityMergeX on OrganizationEntity {
  /// Returns a new [OrganizationEntity] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  OrganizationEntity merge(OrganizationEntity other) {
    return copyWith(
      id: other.id,
      entityType: other.entityType,
      name: other.name,
      description: other.description,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      registrationNumber: other.registrationNumber,
      foundedDate: other.foundedDate,
      industry: other.industry,
      employeeCount: other.employeeCount,
      revenue: other.revenue,
    );
  }
}
