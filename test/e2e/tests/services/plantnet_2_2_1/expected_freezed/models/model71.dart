// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common_names.dart';
import 'images.dart';
import 'iucn.dart';

part 'model71.freezed.dart';
part 'model71.g.dart';

@Freezed()
abstract class Model71 with _$Model71 {
  const factory Model71({
    String? name,
    String? author,
    String? family,
    CommonNames? commonNames,
    Images? images,
    Iucn? iucn,
    String? predictedName,
    @JsonKey(name: 'gpn_id') num? gpnId,
    @JsonKey(name: 'plantnet_id') String? plantnetId,
    @JsonKey(name: 'gbif_taxon_key') num? gbifTaxonKey,
    @JsonKey(name: 'is_tree') bool? isTree,
    @JsonKey(name: 'is_invasive') bool? isInvasive,
    @JsonKey(name: 'is_eu_directive') bool? isEuDirective,
    @JsonKey(name: 'is_grin_uses') bool? isGrinUses,
    @JsonKey(name: 'iucn_red_list_category') String? iucnRedListCategory,
    @JsonKey(name: 'area_surface') num? areaSurface,
    @JsonKey(name: 'area_species') num? areaSpecies,
    @JsonKey(name: 'percentage_covered') num? percentageCovered,
  }) = _Model71;

  Map<String, dynamic> toJson() => _$Model71ToJson(this as _Model71);
  factory Model71.fromJson(Map<String, Object?> json) =>
      _$Model71FromJson(json);
}

extension Model71MergeX on Model71 {
  /// Returns a new [Model71] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model71 merge(Model71 other) {
    return copyWith(
      name: other.name,
      author: other.author,
      family: other.family,
      commonNames: other.commonNames,
      images: other.images,
      iucn: other.iucn,
      predictedName: other.predictedName,
      gpnId: other.gpnId,
      plantnetId: other.plantnetId,
      gbifTaxonKey: other.gbifTaxonKey,
      isTree: other.isTree,
      isInvasive: other.isInvasive,
      isEuDirective: other.isEuDirective,
      isGrinUses: other.isGrinUses,
      iucnRedListCategory: other.iucnRedListCategory,
      areaSurface: other.areaSurface,
      areaSpecies: other.areaSpecies,
      percentageCovered: other.percentageCovered,
    );
  }
}
