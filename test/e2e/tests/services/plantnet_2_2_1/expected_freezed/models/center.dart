// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'center.freezed.dart';
part 'center.g.dart';

@Freezed()
abstract class Center with _$Center {
  const factory Center({num? x, num? y}) = _Center;

  Map<String, dynamic> toJson() => _$CenterToJson(this as _Center);
  factory Center.fromJson(Map<String, Object?> json) => _$CenterFromJson(json);
}

extension CenterMergeX on Center {
  /// Returns a new [Center] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Center merge(Center other) {
    return copyWith(x: other.x, y: other.y);
  }
}
