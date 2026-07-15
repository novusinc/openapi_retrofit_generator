// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_edited.freezed.dart';
part 'file_edited.g.dart';

@Freezed()
abstract class FileEdited with _$FileEdited {
  const factory FileEdited({
    required List<String> command,
    Map<String, String>? environment,
  }) = _FileEdited;

  Map<String, dynamic> toJson() => _$FileEditedToJson(this as _FileEdited);
  factory FileEdited.fromJson(Map<String, Object?> json) =>
      _$FileEditedFromJson(json);
}

extension FileEditedMergeX on FileEdited {
  /// Returns a new [FileEdited] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileEdited merge(FileEdited other) {
    return copyWith(command: other.command, environment: other.environment);
  }
}
