// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'family_members.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@Freezed()
abstract class Family with _$Family {
  const factory Family({required List<FamilyMembers> members}) = _Family;

  Map<String, dynamic> toJson() => _$FamilyToJson(this as _Family);
  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);
}

extension FamilyMergeX on Family {
  /// Returns a new [Family] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Family merge(Family other) {
    return copyWith(members: other.members);
  }
}
