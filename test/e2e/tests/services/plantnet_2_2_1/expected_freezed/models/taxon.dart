// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common_names.dart';

part 'taxon.freezed.dart';
part 'taxon.g.dart';

@Freezed()
abstract class Taxon with _$Taxon {
  const factory Taxon({
    num? id,
    String? name,
    String? rank,
    @JsonKey(name: 'rank_level') num? rankLevel,
    String? kingdom,
    String? family,
    String? genus,
    String? url,
    @JsonKey(name: 'common_names') CommonNames? commonNames,
    @JsonKey(name: 'iucn_red_list_category') String? iucnRedListCategory,
  }) = _Taxon;

  Map<String, dynamic> toJson() => _$TaxonToJson(this as _Taxon);
  factory Taxon.fromJson(Map<String, Object?> json) => _$TaxonFromJson(json);
}

extension TaxonMergeX on Taxon {
  /// Returns a new [Taxon] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Taxon merge(Taxon other) {
    return copyWith(
      id: other.id,
      name: other.name,
      rank: other.rank,
      rankLevel: other.rankLevel,
      kingdom: other.kingdom,
      family: other.family,
      genus: other.genus,
      url: other.url,
      commonNames: other.commonNames,
      iucnRedListCategory: other.iucnRedListCategory,
    );
  }
}
