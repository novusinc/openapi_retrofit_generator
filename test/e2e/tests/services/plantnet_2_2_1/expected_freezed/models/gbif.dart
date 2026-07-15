// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gbif.freezed.dart';
part 'gbif.g.dart';

@Freezed()
abstract class Gbif with _$Gbif {
  const factory Gbif({required num id}) = _Gbif;

  Map<String, dynamic> toJson() => _$GbifToJson(this as _Gbif);
  factory Gbif.fromJson(Map<String, Object?> json) => _$GbifFromJson(json);
}

extension GbifMergeX on Gbif {
  /// Returns a new [Gbif] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Gbif merge(Gbif other) {
    return copyWith(id: other.id);
  }
}
