// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'organs.dart';
import 'taxon.dart';

part 'model65.freezed.dart';
part 'model65.g.dart';

@Freezed()
abstract class Model65 with _$Model65 {
  const factory Model65({
    required String name,
    required String organismQuantityType,
    num? organismQuantity,
    Organs? organs,
    Taxon? taxon,
  }) = _Model65;

  Map<String, dynamic> toJson() => _$Model65ToJson(this as _Model65);
  factory Model65.fromJson(Map<String, Object?> json) =>
      _$Model65FromJson(json);
}

extension Model65MergeX on Model65 {
  /// Returns a new [Model65] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model65 merge(Model65 other) {
    return copyWith(
      name: other.name,
      organismQuantity: other.organismQuantity,
      organismQuantityType: other.organismQuantityType,
      organs: other.organs,
      taxon: other.taxon,
    );
  }
}
