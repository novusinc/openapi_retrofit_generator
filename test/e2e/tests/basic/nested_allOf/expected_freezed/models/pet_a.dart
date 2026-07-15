// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_a.freezed.dart';
part 'pet_a.g.dart';

@Freezed()
abstract class PetA with _$PetA {
  const factory PetA({int? propC, int? propB, int? propA}) = _PetA;

  Map<String, dynamic> toJson() => _$PetAToJson(this as _PetA);
  factory PetA.fromJson(Map<String, Object?> json) => _$PetAFromJson(json);
}

extension PetAMergeX on PetA {
  /// Returns a new [PetA] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PetA merge(PetA other) {
    return copyWith(propC: other.propC, propB: other.propB, propA: other.propA);
  }
}
