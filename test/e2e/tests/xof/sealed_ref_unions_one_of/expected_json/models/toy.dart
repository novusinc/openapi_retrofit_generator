// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'toy.g.dart';

@JsonSerializable()
class Toy {
  const Toy({required this.name});

  factory Toy.fromJson(Map<String, Object?> json) => _$ToyFromJson(json);

  final String name;

  Map<String, Object?> toJson() => _$ToyToJson(this);
}
