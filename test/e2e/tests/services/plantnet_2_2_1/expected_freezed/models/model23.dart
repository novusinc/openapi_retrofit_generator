// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common_names.dart';
import 'secondary_common_names.dart';

part 'model23.freezed.dart';
part 'model23.g.dart';

@Freezed()
abstract class Model23 with _$Model23 {
  const factory Model23({
    required String name,
    required String author,
    required String family,
    CommonNames? commonNames,
    SecondaryCommonNames? secondaryCommonNames,
    String? project,
    String? genus,
    String? powoId,
    String? gbifId,
  }) = _Model23;

  Map<String, dynamic> toJson() => _$Model23ToJson(this as _Model23);
  factory Model23.fromJson(Map<String, Object?> json) =>
      _$Model23FromJson(json);
}

extension Model23MergeX on Model23 {
  /// Returns a new [Model23] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model23 merge(Model23 other) {
    return copyWith(
      name: other.name,
      author: other.author,
      commonNames: other.commonNames,
      secondaryCommonNames: other.secondaryCommonNames,
      project: other.project,
      family: other.family,
      genus: other.genus,
      powoId: other.powoId,
      gbifId: other.gbifId,
    );
  }
}
