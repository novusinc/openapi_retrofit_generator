// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'dog_type_type.dart';
import 'family_members.dart';

part 'dog.freezed.dart';
part 'dog.g.dart';

@Freezed()
abstract class Dog with _$Dog {
  const factory Dog({
    required DogTypeType type,

    /// The sound of the dog's bark.
    required String barkSound,
  }) = _Dog;

  Map<String, dynamic> toJson() => _$DogToJson(this as _Dog);
  factory Dog.fromJson(Map<String, Object?> json) => _$DogFromJson(json);
}

extension DogMergeX on Dog {
  /// Returns a new [Dog] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Dog merge(Dog other) {
    return copyWith(type: other.type, barkSound: other.barkSound);
  }
}
