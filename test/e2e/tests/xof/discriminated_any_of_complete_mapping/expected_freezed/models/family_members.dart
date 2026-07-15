// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cat.dart';
import 'cat_type_type.dart';
import 'dog.dart';
import 'dog_type_type.dart';
import 'human.dart';
import 'human_type_type.dart';

part 'family_members.freezed.dart';
part 'family_members.g.dart';

@Freezed(unionKey: 'type')
sealed class FamilyMembers with _$FamilyMembers {
  @FreezedUnionValue('Cat')
  const factory FamilyMembers.cat({
    /// Number of times the cat meows.
    required int mewCount,
  }) = FamilyMembersCat;

  @FreezedUnionValue('Dog')
  const factory FamilyMembers.dog({
    /// The sound of the dog's bark.
    required String barkSound,
  }) = FamilyMembersDog;

  @FreezedUnionValue('Human')
  const factory FamilyMembers.human({
    /// The job of the human.
    required String job,
  }) = FamilyMembersHuman;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory FamilyMembers.fromJson(Map<String, Object?> json) =>
      _$FamilyMembersFromJson(json);
}
