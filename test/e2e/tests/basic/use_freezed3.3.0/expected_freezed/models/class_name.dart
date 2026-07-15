// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'dart:typed_data';

part 'class_name.freezed.dart';
part 'class_name.g.dart';

@Freezed()
abstract class ClassName with _$ClassName {
  const factory ClassName({
    required int integer1,
    required double float1,
    required double double1,
    required String string1,
    required num number1,
    @JsonKey(
      fromJson: _Base64Converter.staticFromJson,
      toJson: _Base64Converter.staticToJson,
    )
    required Uint8List string2,
    required DateTime string3,
    required String string4,
    required String string5,
    required bool bool1,
    required dynamic object1,
    required List<String> array1,
    required List<List<List<String>>> array2,
  }) = _ClassName;

  Map<String, dynamic> toJson() => _$ClassNameToJson(this as _ClassName);
  factory ClassName.fromJson(Map<String, Object?> json) =>
      _$ClassNameFromJson(json);
}

extension ClassNameMergeX on ClassName {
  /// Returns a new [ClassName] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ClassName merge(ClassName other) {
    return copyWith(
      integer1: other.integer1,
      float1: other.float1,
      double1: other.double1,
      string1: other.string1,
      number1: other.number1,
      string2: other.string2,
      string3: other.string3,
      string4: other.string4,
      string5: other.string5,
      bool1: other.bool1,
      object1: other.object1,
      array1: other.array1,
      array2: other.array2,
    );
  }
}

class _Base64Converter implements JsonConverter<Uint8List, String> {
  const _Base64Converter();

  static const instance = _Base64Converter();

  static Uint8List staticFromJson(String json) => instance.fromJson(json);

  static String staticToJson(Uint8List object) => instance.toJson(object);

  @override
  Uint8List fromJson(String json) => base64Decode(json);

  @override
  String toJson(Uint8List object) => base64Encode(object);
}
