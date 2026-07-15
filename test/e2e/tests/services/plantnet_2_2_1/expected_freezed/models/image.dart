// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'date.dart';
import 'url.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@Freezed()
abstract class Image with _$Image {
  const factory Image({
    String? organ,
    String? author,
    String? license,
    Date? date,
    String? citation,
    Url? url,
  }) = _Image;

  Map<String, dynamic> toJson() => _$ImageToJson(this as _Image);
  factory Image.fromJson(Map<String, Object?> json) => _$ImageFromJson(json);
}

extension ImageMergeX on Image {
  /// Returns a new [Image] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Image merge(Image other) {
    return copyWith(
      organ: other.organ,
      author: other.author,
      license: other.license,
      date: other.date,
      citation: other.citation,
      url: other.url,
    );
  }
}
