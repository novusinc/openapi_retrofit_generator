// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'o_auth.freezed.dart';
part 'o_auth.g.dart';

@Freezed()
abstract class OAuth with _$OAuth {
  const factory OAuth({
    required String type,
    required String refresh,
    required String access,
    required num expires,
  }) = _OAuth;

  Map<String, dynamic> toJson() => _$OAuthToJson(this as _OAuth);
  factory OAuth.fromJson(Map<String, Object?> json) => _$OAuthFromJson(json);
}

extension OAuthMergeX on OAuth {
  /// Returns a new [OAuth] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  OAuth merge(OAuth other) {
    return copyWith(
      type: other.type,
      refresh: other.refresh,
      access: other.access,
      expires: other.expires,
    );
  }
}
