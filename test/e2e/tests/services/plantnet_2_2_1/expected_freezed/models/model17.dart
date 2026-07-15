// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model17.freezed.dart';
part 'model17.g.dart';

@Freezed()
abstract class Model17 with _$Model17 {
  const factory Model17({
    String? image,
    String? filename,
    String? organ,
    num? score,
  }) = _Model17;

  Map<String, dynamic> toJson() => _$Model17ToJson(this as _Model17);
  factory Model17.fromJson(Map<String, Object?> json) =>
      _$Model17FromJson(json);
}

extension Model17MergeX on Model17 {
  /// Returns a new [Model17] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model17 merge(Model17 other) {
    return copyWith(
      image: other.image,
      filename: other.filename,
      organ: other.organ,
      score: other.score,
    );
  }
}
