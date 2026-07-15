// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pet.dart';

part 'pet_house.freezed.dart';
part 'pet_house.g.dart';

/// References a leaf class directly and the union itself.
@Freezed()
abstract class PetHouse with _$PetHouse {
  const factory PetHouse({
    required Cat occupant,
    @JsonKey(includeIfNull: false) Pet? backup,
  }) = _PetHouse;

  Map<String, dynamic> toJson() => _$PetHouseToJson(this as _PetHouse);
  factory PetHouse.fromJson(Map<String, Object?> json) =>
      _$PetHouseFromJson(json);
}

extension PetHouseMergeX on PetHouse {
  /// Returns a new [PetHouse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PetHouse merge(PetHouse other) {
    return copyWith(occupant: other.occupant, backup: other.backup);
  }
}
