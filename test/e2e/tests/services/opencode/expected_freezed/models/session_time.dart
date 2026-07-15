// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_time.freezed.dart';
part 'session_time.g.dart';

@Freezed()
abstract class SessionTime with _$SessionTime {
  const factory SessionTime({
    required num created,
    required num updated,
    num? compacting,
  }) = _SessionTime;

  Map<String, dynamic> toJson() => _$SessionTimeToJson(this as _SessionTime);
  factory SessionTime.fromJson(Map<String, Object?> json) =>
      _$SessionTimeFromJson(json);
}

extension SessionTimeMergeX on SessionTime {
  /// Returns a new [SessionTime] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SessionTime merge(SessionTime other) {
    return copyWith(
      created: other.created,
      updated: other.updated,
      compacting: other.compacting,
    );
  }
}
