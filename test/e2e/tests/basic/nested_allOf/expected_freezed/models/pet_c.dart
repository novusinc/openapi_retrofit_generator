// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_c.freezed.dart';
part 'pet_c.g.dart';

@Freezed()
abstract class PetC with _$PetC {
  const factory PetC({int? propC}) = _PetC;

  Map<String, dynamic> toJson() => _$PetCToJson(this as _PetC);
  factory PetC.fromJson(Map<String, Object?> json) => _$PetCFromJson(json);
}

extension PetCMergeX on PetC {
  /// Returns a new [PetC] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PetC merge(PetC other) {
    return copyWith(propC: other.propC);
  }
}
