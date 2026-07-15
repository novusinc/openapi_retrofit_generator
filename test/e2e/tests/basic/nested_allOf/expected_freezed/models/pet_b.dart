// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_b.freezed.dart';
part 'pet_b.g.dart';

@Freezed()
abstract class PetB with _$PetB {
  const factory PetB({int? propC, int? propB}) = _PetB;

  Map<String, dynamic> toJson() => _$PetBToJson(this as _PetB);
  factory PetB.fromJson(Map<String, Object?> json) => _$PetBFromJson(json);
}

extension PetBMergeX on PetB {
  /// Returns a new [PetB] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PetB merge(PetB other) {
    return copyWith(propC: other.propC, propB: other.propB);
  }
}
