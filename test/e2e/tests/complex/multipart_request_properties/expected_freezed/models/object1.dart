// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'object1.freezed.dart';
part 'object1.g.dart';

@Freezed()
abstract class Object1 with _$Object1 {
  const factory Object1({@JsonKey(includeIfNull: false) String? street}) =
      _Object1;

  Map<String, dynamic> toJson() => _$Object1ToJson(this as _Object1);
  factory Object1.fromJson(Map<String, Object?> json) =>
      _$Object1FromJson(json);
}

extension Object1MergeX on Object1 {
  /// Returns a new [Object1] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Object1 merge(Object1 other) {
    return copyWith(street: other.street);
  }
}
