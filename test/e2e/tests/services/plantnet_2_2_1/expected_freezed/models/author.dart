// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';
part 'author.g.dart';

@Freezed()
abstract class Author with _$Author {
  const factory Author({required String id, required String name}) = _Author;

  Map<String, dynamic> toJson() => _$AuthorToJson(this as _Author);
  factory Author.fromJson(Map<String, Object?> json) => _$AuthorFromJson(json);
}

extension AuthorMergeX on Author {
  /// Returns a new [Author] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Author merge(Author other) {
    return copyWith(id: other.id, name: other.name);
  }
}
