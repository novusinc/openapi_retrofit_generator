// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'family_members.g.dart';

class FamilyMembers {
  final Map<String, dynamic> _json;

  const FamilyMembers(this._json);

  factory FamilyMembers.fromJson(Map<String, dynamic> json) =>
      FamilyMembers(json);

  Map<String, dynamic> toJson() => _json;

  FamilyMembersCat toCat() => FamilyMembersCat.fromJson(_json);
  FamilyMembersVariant2 toVariant2() => FamilyMembersVariant2.fromJson(_json);
  FamilyMembersDog toDog() => FamilyMembersDog.fromJson(_json);
  FamilyMembersVariant4 toVariant4() => FamilyMembersVariant4.fromJson(_json);
}

@JsonSerializable()
class FamilyMembersCat {
  final int mewCount;

  const FamilyMembersCat({required this.mewCount});

  factory FamilyMembersCat.fromJson(Map<String, Object?> json) =>
      _$FamilyMembersCatFromJson(json);

  Map<String, Object?> toJson() => _$FamilyMembersCatToJson(this);
}

@JsonSerializable()
class FamilyMembersVariant2 {
  final int chirpVolume;

  const FamilyMembersVariant2({required this.chirpVolume});

  factory FamilyMembersVariant2.fromJson(Map<String, Object?> json) =>
      _$FamilyMembersVariant2FromJson(json);

  Map<String, Object?> toJson() => _$FamilyMembersVariant2ToJson(this);
}

@JsonSerializable()
class FamilyMembersDog {
  final String barkSound;

  const FamilyMembersDog({required this.barkSound});

  factory FamilyMembersDog.fromJson(Map<String, Object?> json) =>
      _$FamilyMembersDogFromJson(json);

  Map<String, Object?> toJson() => _$FamilyMembersDogToJson(this);
}

@JsonSerializable()
class FamilyMembersVariant4 {
  final String job;

  const FamilyMembersVariant4({required this.job});

  factory FamilyMembersVariant4.fromJson(Map<String, Object?> json) =>
      _$FamilyMembersVariant4FromJson(json);

  Map<String, Object?> toJson() => _$FamilyMembersVariant4ToJson(this);
}
