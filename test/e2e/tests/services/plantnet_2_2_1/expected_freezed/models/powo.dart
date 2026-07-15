// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'powo.freezed.dart';
part 'powo.g.dart';

@Freezed()
abstract class Powo with _$Powo {
  const factory Powo({required String id}) = _Powo;

  Map<String, dynamic> toJson() => _$PowoToJson(this as _Powo);
  factory Powo.fromJson(Map<String, Object?> json) => _$PowoFromJson(json);
}

extension PowoMergeX on Powo {
  /// Returns a new [Powo] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Powo merge(Powo other) {
    return copyWith(id: other.id);
  }
}
