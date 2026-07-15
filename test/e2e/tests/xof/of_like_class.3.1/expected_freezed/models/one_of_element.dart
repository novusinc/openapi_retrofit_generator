// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum_class.dart';

part 'one_of_element.freezed.dart';
part 'one_of_element.g.dart';

@Freezed()
abstract class OneOfElement with _$OneOfElement {
  const factory OneOfElement({
    @JsonKey(includeIfNull: true) required EnumClass? nullableButRequiredClass,
    @JsonKey(includeIfNull: true)
    required List<int>? requiredNullableListNonNullItems,
    @JsonKey(includeIfNull: true)
    required List<int?>? requiredNullableListNullableItems,
    @Default(EnumClass.value1) EnumClass anyClass,
    @Default(const []) List<EnumClass> oneType,
    @JsonKey(includeIfNull: true)
    @Default(const [])
    List<EnumClass>? nullableType,
    @JsonKey(includeIfNull: false) EnumClass? allClass,
    @JsonKey(includeIfNull: false) EnumClass? oneClass,
    @JsonKey(includeIfNull: false) int? allType,
    @JsonKey(includeIfNull: false) DateTime? anyType,
    @JsonKey(includeIfNull: false) EnumClass? nullableClass,
    @JsonKey(includeIfNull: false) List<int>? nullableListNonNullItems,
    @JsonKey(includeIfNull: false) List<int?>? nullableListNullableItems,
  }) = _OneOfElement;

  Map<String, dynamic> toJson() => _$OneOfElementToJson(this as _OneOfElement);
  factory OneOfElement.fromJson(Map<String, Object?> json) =>
      _$OneOfElementFromJson(json);
}

extension OneOfElementMergeX on OneOfElement {
  /// Returns a new [OneOfElement] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  OneOfElement merge(OneOfElement other) {
    return copyWith(
      allClass: other.allClass,
      anyClass: other.anyClass,
      oneClass: other.oneClass,
      allType: other.allType,
      anyType: other.anyType,
      oneType: other.oneType,
      nullableButRequiredClass: other.nullableButRequiredClass,
      nullableClass: other.nullableClass,
      nullableType: other.nullableType,
      nullableListNonNullItems: other.nullableListNonNullItems,
      requiredNullableListNonNullItems: other.requiredNullableListNonNullItems,
      nullableListNullableItems: other.nullableListNullableItems,
      requiredNullableListNullableItems:
          other.requiredNullableListNullableItems,
    );
  }
}
