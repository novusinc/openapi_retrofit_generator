// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model9.freezed.dart';
part 'model9.g.dart';

@Freezed()
abstract class Model9 with _$Model9 {
  const factory Model9({String? name, String? alias, String? description}) =
      _Model9;

  Map<String, dynamic> toJson() => _$Model9ToJson(this as _Model9);
  factory Model9.fromJson(Map<String, Object?> json) => _$Model9FromJson(json);
}

extension Model9MergeX on Model9 {
  /// Returns a new [Model9] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model9 merge(Model9 other) {
    return copyWith(
      name: other.name,
      alias: other.alias,
      description: other.description,
    );
  }
}
