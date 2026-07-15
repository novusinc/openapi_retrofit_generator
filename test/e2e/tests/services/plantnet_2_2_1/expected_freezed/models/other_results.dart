// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model19.dart';
import 'model22.dart';

part 'other_results.freezed.dart';
part 'other_results.g.dart';

@Freezed()
abstract class OtherResults with _$OtherResults {
  const factory OtherResults({Model19? genus, Model22? family}) = _OtherResults;

  Map<String, dynamic> toJson() => _$OtherResultsToJson(this as _OtherResults);
  factory OtherResults.fromJson(Map<String, Object?> json) =>
      _$OtherResultsFromJson(json);
}

extension OtherResultsMergeX on OtherResults {
  /// Returns a new [OtherResults] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  OtherResults merge(OtherResults other) {
    return copyWith(genus: other.genus, family: other.family);
  }
}
