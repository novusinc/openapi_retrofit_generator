// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'well_known_auth.freezed.dart';
part 'well_known_auth.g.dart';

@Freezed()
abstract class WellKnownAuth with _$WellKnownAuth {
  const factory WellKnownAuth({
    required String type,
    required String key,
    required String token,
  }) = _WellKnownAuth;

  Map<String, dynamic> toJson() =>
      _$WellKnownAuthToJson(this as _WellKnownAuth);
  factory WellKnownAuth.fromJson(Map<String, Object?> json) =>
      _$WellKnownAuthFromJson(json);
}

extension WellKnownAuthMergeX on WellKnownAuth {
  /// Returns a new [WellKnownAuth] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  WellKnownAuth merge(WellKnownAuth other) {
    return copyWith(type: other.type, key: other.key, token: other.token);
  }
}
