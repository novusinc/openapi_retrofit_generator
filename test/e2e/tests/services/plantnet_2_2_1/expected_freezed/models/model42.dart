// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common_names.dart';
import 'images.dart';
import 'iucn.dart';

part 'model42.freezed.dart';
part 'model42.g.dart';

@Freezed()
abstract class Model42 with _$Model42 {
  const factory Model42({
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
  }) = _Model42;

  Map<String, dynamic> toJson() => _$Model42ToJson(this as _Model42);
  factory Model42.fromJson(Map<String, Object?> json) =>
      _$Model42FromJson(json);
}

extension Model42MergeX on Model42 {
  /// Returns a new [Model42] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model42 merge(Model42 other) {
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
    );
  }
}
