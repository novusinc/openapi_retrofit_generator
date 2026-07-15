// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_text_response_path.freezed.dart';
part 'find_text_response_path.g.dart';

@Freezed()
abstract class FindTextResponsePath with _$FindTextResponsePath {
  const factory FindTextResponsePath({required String text}) =
      _FindTextResponsePath;

  Map<String, dynamic> toJson() =>
      _$FindTextResponsePathToJson(this as _FindTextResponsePath);
  factory FindTextResponsePath.fromJson(Map<String, Object?> json) =>
      _$FindTextResponsePathFromJson(json);
}

extension FindTextResponsePathMergeX on FindTextResponsePath {
  /// Returns a new [FindTextResponsePath] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FindTextResponsePath merge(FindTextResponsePath other) {
    return copyWith(text: other.text);
  }
}
