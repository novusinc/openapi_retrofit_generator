// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'domains.dart';
import 'ips.dart';

part 'security.freezed.dart';
part 'security.g.dart';

@Freezed()
abstract class Security with _$Security {
  const factory Security({bool? exposeKey, Ips? ips, Domains? domains}) =
      _Security;

  Map<String, dynamic> toJson() => _$SecurityToJson(this as _Security);
  factory Security.fromJson(Map<String, Object?> json) =>
      _$SecurityFromJson(json);
}

extension SecurityMergeX on Security {
  /// Returns a new [Security] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Security merge(Security other) {
    return copyWith(
      exposeKey: other.exposeKey,
      ips: other.ips,
      domains: other.domains,
    );
  }
}
