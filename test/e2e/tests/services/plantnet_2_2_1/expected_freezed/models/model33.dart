// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model33.freezed.dart';
part 'model33.g.dart';

@Freezed()
abstract class Model33 with _$Model33 {
  const factory Model33({
    String? type,
    String? format,
    String? identifier,
    @JsonKey(name: 'medium_url') String? mediumUrl,
    @JsonKey(name: 'large_url') String? largeUrl,
    String? organ,
  }) = _Model33;

  Map<String, dynamic> toJson() => _$Model33ToJson(this as _Model33);
  factory Model33.fromJson(Map<String, Object?> json) =>
      _$Model33FromJson(json);
}

extension Model33MergeX on Model33 {
  /// Returns a new [Model33] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model33 merge(Model33 other) {
    return copyWith(
      type: other.type,
      format: other.format,
      identifier: other.identifier,
      mediumUrl: other.mediumUrl,
      largeUrl: other.largeUrl,
      organ: other.organ,
    );
  }
}
