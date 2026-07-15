// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'session_revert.dart';
import 'session_share.dart';
import 'session_time.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@Freezed()
abstract class Session with _$Session {
  const factory Session({
    required String id,
    @JsonKey(name: 'projectID') required String projectId,
    required String directory,
    required String title,
    required String version,
    required SessionTime time,
    @JsonKey(name: 'parentID') String? parentId,
    SessionShare? share,
    SessionRevert? revert,
  }) = _Session;

  Map<String, dynamic> toJson() => _$SessionToJson(this as _Session);
  factory Session.fromJson(Map<String, Object?> json) =>
      _$SessionFromJson(json);
}

extension SessionMergeX on Session {
  /// Returns a new [Session] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Session merge(Session other) {
    return copyWith(
      id: other.id,
      projectId: other.projectId,
      directory: other.directory,
      parentId: other.parentId,
      share: other.share,
      title: other.title,
      version: other.version,
      time: other.time,
      revert: other.revert,
    );
  }
}
