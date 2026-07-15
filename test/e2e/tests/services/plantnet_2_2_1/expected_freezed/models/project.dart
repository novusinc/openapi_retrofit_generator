// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@Freezed()
abstract class Project with _$Project {
  const factory Project({
    String? id,
    String? title,
    String? description,
    num? speciesCount,
  }) = _Project;

  Map<String, dynamic> toJson() => _$ProjectToJson(this as _Project);
  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}

extension ProjectMergeX on Project {
  /// Returns a new [Project] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Project merge(Project other) {
    return copyWith(
      id: other.id,
      title: other.title,
      description: other.description,
      speciesCount: other.speciesCount,
    );
  }
}
