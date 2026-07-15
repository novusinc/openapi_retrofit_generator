// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'cat.dart';
import 'pet.dart';

part 'pet_house.g.dart';

/// References a leaf class directly and the union itself.
@JsonSerializable()
class PetHouse {
  const PetHouse({required this.occupant, this.backup});

  factory PetHouse.fromJson(Map<String, Object?> json) =>
      _$PetHouseFromJson(json);

  final Cat occupant;
  @JsonKey(includeIfNull: false)
  final Pet? backup;

  Map<String, Object?> toJson() => _$PetHouseToJson(this);
}
