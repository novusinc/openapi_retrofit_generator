// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'url.freezed.dart';
part 'url.g.dart';

@Freezed()
abstract class Url with _$Url {
  const factory Url({String? o, String? m, String? s}) = _Url;

  Map<String, dynamic> toJson() => _$UrlToJson(this as _Url);
  factory Url.fromJson(Map<String, Object?> json) => _$UrlFromJson(json);
}

extension UrlMergeX on Url {
  /// Returns a new [Url] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Url merge(Url other) {
    return copyWith(o: other.o, m: other.m, s: other.s);
  }
}
