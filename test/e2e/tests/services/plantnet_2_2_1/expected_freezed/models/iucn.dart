// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'iucn.freezed.dart';
part 'iucn.g.dart';

@Freezed()
abstract class Iucn with _$Iucn {
  const factory Iucn({num? id, String? category, String? populationTrend}) =
      _Iucn;

  Map<String, dynamic> toJson() => _$IucnToJson(this as _Iucn);
  factory Iucn.fromJson(Map<String, Object?> json) => _$IucnFromJson(json);
}

extension IucnMergeX on Iucn {
  /// Returns a new [Iucn] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Iucn merge(Iucn other) {
    return copyWith(
      id: other.id,
      category: other.category,
      populationTrend: other.populationTrend,
    );
  }
}
