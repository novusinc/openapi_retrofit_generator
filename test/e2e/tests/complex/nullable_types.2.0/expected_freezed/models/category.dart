// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

/// A category for a pet
@Freezed()
abstract class Category with _$Category {
  const factory Category({
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(includeIfNull: false) String? name,
  }) = _Category;

  Map<String, dynamic> toJson() => _$CategoryToJson(this as _Category);
  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}

extension CategoryMergeX on Category {
  /// Returns a new [Category] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Category merge(Category other) {
    return copyWith(id: other.id, name: other.name);
  }
}
