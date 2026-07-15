// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

@Freezed()
abstract class BaseEntity with _$BaseEntity {
  const factory BaseEntity({
    required String id,
    required String entityType,
    required DateTime createdAt,
    String? name,
    String? description,
    DateTime? updatedAt,
  }) = _BaseEntity;

  Map<String, dynamic> toJson() => _$BaseEntityToJson(this as _BaseEntity);
  factory BaseEntity.fromJson(Map<String, Object?> json) =>
      _$BaseEntityFromJson(json);
}

extension BaseEntityMergeX on BaseEntity {
  /// Returns a new [BaseEntity] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  BaseEntity merge(BaseEntity other) {
    return copyWith(
      id: other.id,
      entityType: other.entityType,
      name: other.name,
      description: other.description,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
    );
  }
}
