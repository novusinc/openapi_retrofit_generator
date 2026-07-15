// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_duplicate_response_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetDuplicateResponseMetadata {

@JsonKey(includeIfNull: false) String? get id;@JsonKey(includeIfNull: false) int? get value;
/// Create a copy of GetDuplicateResponseMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDuplicateResponseMetadataCopyWith<GetDuplicateResponseMetadata> get copyWith => _$GetDuplicateResponseMetadataCopyWithImpl<GetDuplicateResponseMetadata>(this as GetDuplicateResponseMetadata, _$identity);

  /// Serializes this GetDuplicateResponseMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDuplicateResponseMetadata&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value);

@override
String toString() {
  return 'GetDuplicateResponseMetadata(id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class $GetDuplicateResponseMetadataCopyWith<$Res>  {
  factory $GetDuplicateResponseMetadataCopyWith(GetDuplicateResponseMetadata value, $Res Function(GetDuplicateResponseMetadata) _then) = _$GetDuplicateResponseMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? id,@JsonKey(includeIfNull: false) int? value
});




}
/// @nodoc
class _$GetDuplicateResponseMetadataCopyWithImpl<$Res>
    implements $GetDuplicateResponseMetadataCopyWith<$Res> {
  _$GetDuplicateResponseMetadataCopyWithImpl(this._self, this._then);

  final GetDuplicateResponseMetadata _self;
  final $Res Function(GetDuplicateResponseMetadata) _then;

/// Create a copy of GetDuplicateResponseMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDuplicateResponseMetadata].
extension GetDuplicateResponseMetadataPatterns on GetDuplicateResponseMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDuplicateResponseMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDuplicateResponseMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDuplicateResponseMetadata value)  $default,){
final _that = this;
switch (_that) {
case _GetDuplicateResponseMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDuplicateResponseMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _GetDuplicateResponseMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? id, @JsonKey(includeIfNull: false)  int? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDuplicateResponseMetadata() when $default != null:
return $default(_that.id,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? id, @JsonKey(includeIfNull: false)  int? value)  $default,) {final _that = this;
switch (_that) {
case _GetDuplicateResponseMetadata():
return $default(_that.id,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? id, @JsonKey(includeIfNull: false)  int? value)?  $default,) {final _that = this;
switch (_that) {
case _GetDuplicateResponseMetadata() when $default != null:
return $default(_that.id,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDuplicateResponseMetadata implements GetDuplicateResponseMetadata {
  const _GetDuplicateResponseMetadata({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.value});
  factory _GetDuplicateResponseMetadata.fromJson(Map<String, dynamic> json) => _$GetDuplicateResponseMetadataFromJson(json);

@override@JsonKey(includeIfNull: false) final  String? id;
@override@JsonKey(includeIfNull: false) final  int? value;

/// Create a copy of GetDuplicateResponseMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDuplicateResponseMetadataCopyWith<_GetDuplicateResponseMetadata> get copyWith => __$GetDuplicateResponseMetadataCopyWithImpl<_GetDuplicateResponseMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDuplicateResponseMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDuplicateResponseMetadata&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value);

@override
String toString() {
  return 'GetDuplicateResponseMetadata(id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class _$GetDuplicateResponseMetadataCopyWith<$Res> implements $GetDuplicateResponseMetadataCopyWith<$Res> {
  factory _$GetDuplicateResponseMetadataCopyWith(_GetDuplicateResponseMetadata value, $Res Function(_GetDuplicateResponseMetadata) _then) = __$GetDuplicateResponseMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? id,@JsonKey(includeIfNull: false) int? value
});




}
/// @nodoc
class __$GetDuplicateResponseMetadataCopyWithImpl<$Res>
    implements _$GetDuplicateResponseMetadataCopyWith<$Res> {
  __$GetDuplicateResponseMetadataCopyWithImpl(this._self, this._then);

  final _GetDuplicateResponseMetadata _self;
  final $Res Function(_GetDuplicateResponseMetadata) _then;

/// Create a copy of GetDuplicateResponseMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? value = freezed,}) {
  return _then(_GetDuplicateResponseMetadata(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
