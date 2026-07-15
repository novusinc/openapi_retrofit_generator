// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'toy.mapper.dart';

@MappableClass()
class Toy with ToyMappable {
  const Toy({required this.name});

  final String name;

  static Toy fromJson(Map<String, dynamic> json) => ToyMapper.fromJson(json);

  /// Returns a new [Toy] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Toy merge(Toy other) {
    return copyWith(name: other.name);
  }
}
