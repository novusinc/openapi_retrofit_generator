// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'family_members.dart';
import 'human_type_type.dart';

part 'human.freezed.dart';
part 'human.g.dart';

@Freezed()
abstract class Human with _$Human {
  const factory Human({
    required HumanTypeType type,

    /// The job of the human.
    required String job,
  }) = _Human;

  Map<String, dynamic> toJson() => _$HumanToJson(this as _Human);
  factory Human.fromJson(Map<String, Object?> json) => _$HumanFromJson(json);
}

extension HumanMergeX on Human {
  /// Returns a new [Human] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Human merge(Human other) {
    return copyWith(type: other.type, job: other.job);
  }
}
