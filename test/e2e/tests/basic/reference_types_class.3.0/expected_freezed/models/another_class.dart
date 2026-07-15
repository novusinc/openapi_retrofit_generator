// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'another_class.freezed.dart';
part 'another_class.g.dart';

@Freezed()
abstract class AnotherClass with _$AnotherClass {
  const factory AnotherClass({required int id, required String name}) =
      _AnotherClass;

  Map<String, dynamic> toJson() => _$AnotherClassToJson(this as _AnotherClass);
  factory AnotherClass.fromJson(Map<String, Object?> json) =>
      _$AnotherClassFromJson(json);
}

extension AnotherClassMergeX on AnotherClass {
  /// Returns a new [AnotherClass] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  AnotherClass merge(AnotherClass other) {
    return copyWith(id: other.id, name: other.name);
  }
}
