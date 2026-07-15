// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'toy.freezed.dart';
part 'toy.g.dart';

@Freezed()
abstract class Toy with _$Toy {
  const factory Toy({required String name}) = _Toy;

  Map<String, dynamic> toJson() => _$ToyToJson(this as _Toy);
  factory Toy.fromJson(Map<String, Object?> json) => _$ToyFromJson(json);
}

extension ToyMergeX on Toy {
  /// Returns a new [Toy] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Toy merge(Toy other) {
    return copyWith(name: other.name);
  }
}
