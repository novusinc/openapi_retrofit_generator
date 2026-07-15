// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'common_names.dart';

part 'model20.freezed.dart';
part 'model20.g.dart';

@Freezed()
abstract class Model20 with _$Model20 {
  const factory Model20({String? scientificName, CommonNames? commonNames}) =
      _Model20;

  Map<String, dynamic> toJson() => _$Model20ToJson(this as _Model20);
  factory Model20.fromJson(Map<String, Object?> json) =>
      _$Model20FromJson(json);
}

extension Model20MergeX on Model20 {
  /// Returns a new [Model20] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model20 merge(Model20 other) {
    return copyWith(
      scientificName: other.scientificName,
      commonNames: other.commonNames,
    );
  }
}
