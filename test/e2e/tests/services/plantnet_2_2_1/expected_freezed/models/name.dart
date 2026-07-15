// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@Freezed()
abstract class Name with _$Name {
  const factory Name({String? first, String? last}) = _Name;

  Map<String, dynamic> toJson() => _$NameToJson(this as _Name);
  factory Name.fromJson(Map<String, Object?> json) => _$NameFromJson(json);
}

extension NameMergeX on Name {
  /// Returns a new [Name] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Name merge(Name other) {
    return copyWith(first: other.first, last: other.last);
  }
}
