// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@Freezed()
abstract class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    String? slug,

    /// Circular reference for nested categories
    Category? parent,
  }) = _Category;

  Map<String, dynamic> toJson() => _$CategoryToJson(this as _Category);
  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}

extension CategoryMergeX on Category {
  /// Returns a new [Category] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Category merge(Category other) {
    return copyWith(
      id: other.id,
      name: other.name,
      slug: other.slug,
      parent: other.parent,
    );
  }
}
