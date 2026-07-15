// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'cat.dart';
import 'pet.dart';

part 'pet_house.mapper.dart';

/// References a leaf class directly and the union itself.
@MappableClass()
class PetHouse with PetHouseMappable {
  const PetHouse({required this.occupant, this.backup});

  final Cat occupant;
  final Pet? backup;

  static PetHouse fromJson(Map<String, dynamic> json) =>
      PetHouseMapper.fromJson(json);

  /// Returns a new [PetHouse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PetHouse merge(PetHouse other) {
    return copyWith(occupant: other.occupant, backup: other.backup);
  }
}
