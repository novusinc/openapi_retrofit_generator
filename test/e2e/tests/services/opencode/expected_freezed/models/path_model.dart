// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'path_model.freezed.dart';
part 'path_model.g.dart';

@Freezed()
abstract class PathModel with _$PathModel {
  const factory PathModel({
    required String state,
    required String config,
    required String worktree,
    required String directory,
  }) = _PathModel;

  Map<String, dynamic> toJson() => _$PathModelToJson(this as _PathModel);
  factory PathModel.fromJson(Map<String, Object?> json) =>
      _$PathModelFromJson(json);
}

extension PathModelMergeX on PathModel {
  /// Returns a new [PathModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PathModel merge(PathModel other) {
    return copyWith(
      state: other.state,
      config: other.config,
      worktree: other.worktree,
      directory: other.directory,
    );
  }
}
