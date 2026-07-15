// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_node_type_type.dart';

part 'file_node.freezed.dart';
part 'file_node.g.dart';

@Freezed()
abstract class FileNode with _$FileNode {
  const factory FileNode({
    required String name,
    required String path,
    required String absolute,
    required FileNodeTypeType type,
    required bool ignored,
  }) = _FileNode;

  Map<String, dynamic> toJson() => _$FileNodeToJson(this as _FileNode);
  factory FileNode.fromJson(Map<String, Object?> json) =>
      _$FileNodeFromJson(json);
}

extension FileNodeMergeX on FileNode {
  /// Returns a new [FileNode] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileNode merge(FileNode other) {
    return copyWith(
      name: other.name,
      path: other.path,
      absolute: other.absolute,
      type: other.type,
      ignored: other.ignored,
    );
  }
}
