// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'pet_status_status.dart';
import 'tag.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

/// A pet for sale in the pet store
@Freezed()
abstract class Pet with _$Pet {
  const factory Pet({
    required String name,
    required List<String> photoUrls,
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) Category? category,
    @JsonKey(includeIfNull: false) List<Tag>? tags,

    /// pet status in the store
    @JsonKey(includeIfNull: false) PetStatusStatus? status,
  }) = _Pet;

  Map<String, dynamic> toJson() => _$PetToJson(this as _Pet);
  factory Pet.fromJson(Map<String, Object?> json) => _$PetFromJson(json);
}

extension PetMergeX on Pet {
  /// Returns a new [Pet] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Pet merge(Pet other) {
    return copyWith(
      id: other.id,
      category: other.category,
      name: other.name,
      photoUrls: other.photoUrls,
      tags: other.tags,
      status: other.status,
    );
  }
}
