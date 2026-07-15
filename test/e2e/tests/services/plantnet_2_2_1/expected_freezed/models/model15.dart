// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common_names.dart';
import 'family.dart';
import 'genus.dart';

part 'model15.freezed.dart';
part 'model15.g.dart';

@Freezed()
abstract class Model15 with _$Model15 {
  const factory Model15({
    String? scientificNameWithoutAuthor,
    String? scientificNameAuthorship,
    String? scientificName,
    Genus? genus,
    Family? family,
    CommonNames? commonNames,
  }) = _Model15;

  Map<String, dynamic> toJson() => _$Model15ToJson(this as _Model15);
  factory Model15.fromJson(Map<String, Object?> json) =>
      _$Model15FromJson(json);
}

extension Model15MergeX on Model15 {
  /// Returns a new [Model15] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model15 merge(Model15 other) {
    return copyWith(
      scientificNameWithoutAuthor: other.scientificNameWithoutAuthor,
      scientificNameAuthorship: other.scientificNameAuthorship,
      scientificName: other.scientificName,
      genus: other.genus,
      family: other.family,
      commonNames: other.commonNames,
    );
  }
}
