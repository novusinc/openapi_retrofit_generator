// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'class_with_nullable_types_p3.dart';
import 'class_with_nullable_types_p3_n.dart';

part 'class_with_nullable_types.freezed.dart';
part 'class_with_nullable_types.g.dart';

@Freezed()
abstract class ClassWithNullableTypes with _$ClassWithNullableTypes {
  const factory ClassWithNullableTypes({
    required String p1,
    required List<String> p2,
    @JsonKey(name: 'p2_null_item') required List<List<String?>> p2NullItem,
    @JsonKey(name: 'p2_null_all') required List<dynamic>? p2NullAll,
    required ClassWithNullableTypesP3 p3,
    @JsonKey(name: 'required_null_anyOf') required dynamic requiredNullAnyOf,
    @JsonKey(name: 'p1_anyOf') required dynamic p1AnyOf,
    @JsonKey(name: 'p2_anyOf') required dynamic p2AnyOf,
    @JsonKey(name: 'p3_anyOf') required dynamic p3AnyOf,
    @JsonKey(name: 'p1_oneOf') required dynamic p1OneOf,
    @JsonKey(name: 'p2_oneOf') required dynamic p2OneOf,
    @JsonKey(name: 'p3_oneOf') required dynamic p3OneOf,
    @JsonKey(name: 'p1_allOf') required dynamic p1AllOf,
    @JsonKey(name: 'p2_allOf') required dynamic p2AllOf,
    @JsonKey(name: 'p3_allOf') required dynamic p3AllOf,
    @JsonKey(name: 'valid_int') int? validInt,
    @JsonKey(name: 'valid_string') String? validString,
    @JsonKey(name: 'valid_array') List<String>? validArray,
    @JsonKey(name: 'p2_null') List<dynamic>? p2Null,
    @JsonKey(name: 'p1_n') String? p1N,
    @JsonKey(name: 'p2_n') List<String?>? p2N,
    @JsonKey(name: 'p3_n') ClassWithNullableTypesP3N? p3N,
    @JsonKey(name: 'p1_list') String? p1List,
    @JsonKey(name: 'p2_list') List<dynamic>? p2List,
    @JsonKey(name: 'p3_list') dynamic p3List,
    @JsonKey(name: 'nonNull_anyOf') dynamic nonNullAnyOf,
    @JsonKey(name: 'optional_null_anyOf') dynamic optionalNullAnyOf,
  }) = _ClassWithNullableTypes;

  Map<String, dynamic> toJson() =>
      _$ClassWithNullableTypesToJson(this as _ClassWithNullableTypes);
  factory ClassWithNullableTypes.fromJson(Map<String, Object?> json) =>
      _$ClassWithNullableTypesFromJson(json);
  static const int validIntMin = 0;
  static const int validIntMax = 100;
  static const int validStringMinLength = 0;
  static const int validStringMaxLength = 100;
  static const String validStringPattern = r"^[a-zA-Z0-9]*$";
  static const int validArrayMinItems = 0;
  static const int validArrayMaxItems = 100;
  static const bool validArrayUniqueItems = true;
}

extension ClassWithNullableTypesValidationX on ClassWithNullableTypes {
  bool validate() {
    try {
      if (validInt != null && validInt! < ClassWithNullableTypes.validIntMin) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (validInt != null && validInt! > ClassWithNullableTypes.validIntMax) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (validString != null &&
          validString!.length < ClassWithNullableTypes.validStringMinLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (validString != null &&
          validString!.length > ClassWithNullableTypes.validStringMaxLength) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (validString != null &&
          !RegExp(
            ClassWithNullableTypes.validStringPattern,
          ).hasMatch(validString!)) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (validArray != null &&
          validArray!.length < ClassWithNullableTypes.validArrayMinItems) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (validArray != null &&
          validArray!.length > ClassWithNullableTypes.validArrayMaxItems) {
        return false;
      }
    } catch (e) {
      return false;
    }
    try {
      if (validArray != null &&
          ClassWithNullableTypes.validArrayUniqueItems &&
          validArray!.toSet().length != validArray!.length) {
        return false;
      }
    } catch (e) {
      return false;
    }
    return true;
  }
}

extension ClassWithNullableTypesMergeX on ClassWithNullableTypes {
  /// Returns a new [ClassWithNullableTypes] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ClassWithNullableTypes merge(ClassWithNullableTypes other) {
    return copyWith(
      validInt: other.validInt,
      validString: other.validString,
      validArray: other.validArray,
      p1: other.p1,
      p2: other.p2,
      p2Null: other.p2Null,
      p2NullItem: other.p2NullItem,
      p2NullAll: other.p2NullAll,
      p3: other.p3,
      p1N: other.p1N,
      p2N: other.p2N,
      p3N: other.p3N,
      p1List: other.p1List,
      p2List: other.p2List,
      p3List: other.p3List,
      nonNullAnyOf: other.nonNullAnyOf,
      optionalNullAnyOf: other.optionalNullAnyOf,
      requiredNullAnyOf: other.requiredNullAnyOf,
      p1AnyOf: other.p1AnyOf,
      p2AnyOf: other.p2AnyOf,
      p3AnyOf: other.p3AnyOf,
      p1OneOf: other.p1OneOf,
      p2OneOf: other.p2OneOf,
      p3OneOf: other.p3OneOf,
      p1AllOf: other.p1AllOf,
      p2AllOf: other.p2AllOf,
      p3AllOf: other.p3AllOf,
    );
  }
}
