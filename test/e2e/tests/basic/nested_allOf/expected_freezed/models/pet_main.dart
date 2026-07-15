// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_main.freezed.dart';
part 'pet_main.g.dart';

@Freezed()
abstract class PetMain with _$PetMain {
  const factory PetMain({int? propC, int? propB, int? propA, int? propMain}) =
      _PetMain;

  Map<String, dynamic> toJson() => _$PetMainToJson(this as _PetMain);
  factory PetMain.fromJson(Map<String, Object?> json) =>
      _$PetMainFromJson(json);
}

extension PetMainMergeX on PetMain {
  /// Returns a new [PetMain] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PetMain merge(PetMain other) {
    return copyWith(
      propC: other.propC,
      propB: other.propB,
      propA: other.propA,
      propMain: other.propMain,
    );
  }
}
