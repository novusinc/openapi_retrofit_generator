// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cat_type_type.dart';
import 'family_members.dart';

part 'cat.freezed.dart';
part 'cat.g.dart';

@Freezed()
abstract class Cat with _$Cat {
  const factory Cat({
    required CatTypeType type,

    /// Number of times the cat meows.
    required int mewCount,
  }) = _Cat;

  Map<String, dynamic> toJson() => _$CatToJson(this as _Cat);
  factory Cat.fromJson(Map<String, Object?> json) => _$CatFromJson(json);
}

extension CatMergeX on Cat {
  /// Returns a new [Cat] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Cat merge(Cat other) {
    return copyWith(type: other.type, mewCount: other.mewCount);
  }
}
