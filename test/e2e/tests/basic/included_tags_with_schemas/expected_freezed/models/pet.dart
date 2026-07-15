// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'pet_availability_availability.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

@Freezed()
abstract class Pet with _$Pet {
  const factory Pet({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) PetAvailabilityAvailability? availability,
    @JsonKey(includeIfNull: false) Category? category,
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
      name: other.name,
      availability: other.availability,
      category: other.category,
    );
  }
}
