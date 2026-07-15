// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'pet_status.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum PetStatus {
  @MappableValue('available')
  available,

  @MappableValue('adopted')
  adopted,

  @MappableValue('unknown')
  unknown;

  String toJson() => toValue().toString();

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<PetStatus> get $valuesDefined =>
      values.where((value) => value != PetStatus.unknown).toList();
}
