// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_share.freezed.dart';
part 'session_share.g.dart';

@Freezed()
abstract class SessionShare with _$SessionShare {
  const factory SessionShare({required String url}) = _SessionShare;

  Map<String, dynamic> toJson() => _$SessionShareToJson(this as _SessionShare);
  factory SessionShare.fromJson(Map<String, Object?> json) =>
      _$SessionShareFromJson(json);
}

extension SessionShareMergeX on SessionShare {
  /// Returns a new [SessionShare] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionShare merge(SessionShare other) {
    return copyWith(url: other.url);
  }
}
