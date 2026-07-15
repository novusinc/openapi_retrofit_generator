// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_ai.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomAi {

/// Discriminator value for CustomAI
 CustomAiTypeType get type;/// CustomAI ID
 String get id;/// CustomAI name
 String get name;/// Reference to base AI model/agent ID
 String get baseAiId;/// Recursive reference: CustomAI can have a baseAi which is also an AI (SELF-REFERENCE TEST)
@JsonKey(includeIfNull: false) Ai? get baseAi;
/// Create a copy of CustomAi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomAiCopyWith<CustomAi> get copyWith => _$CustomAiCopyWithImpl<CustomAi>(this as CustomAi, _$identity);

  /// Serializes this CustomAi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomAi&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseAiId, baseAiId) || other.baseAiId == baseAiId)&&(identical(other.baseAi, baseAi) || other.baseAi == baseAi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,name,baseAiId,baseAi);

@override
String toString() {
  return 'CustomAi(type: $type, id: $id, name: $name, baseAiId: $baseAiId, baseAi: $baseAi)';
}


}

/// @nodoc
abstract mixin class $CustomAiCopyWith<$Res>  {
  factory $CustomAiCopyWith(CustomAi value, $Res Function(CustomAi) _then) = _$CustomAiCopyWithImpl;
@useResult
$Res call({
 CustomAiTypeType type, String id, String name, String baseAiId,@JsonKey(includeIfNull: false) Ai? baseAi
});


$AiCopyWith<$Res>? get baseAi;

}
/// @nodoc
class _$CustomAiCopyWithImpl<$Res>
    implements $CustomAiCopyWith<$Res> {
  _$CustomAiCopyWithImpl(this._self, this._then);

  final CustomAi _self;
  final $Res Function(CustomAi) _then;

/// Create a copy of CustomAi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? id = null,Object? name = null,Object? baseAiId = null,Object? baseAi = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CustomAiTypeType,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseAiId: null == baseAiId ? _self.baseAiId : baseAiId // ignore: cast_nullable_to_non_nullable
as String,baseAi: freezed == baseAi ? _self.baseAi : baseAi // ignore: cast_nullable_to_non_nullable
as Ai?,
  ));
}
/// Create a copy of CustomAi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiCopyWith<$Res>? get baseAi {
    if (_self.baseAi == null) {
    return null;
  }

  return $AiCopyWith<$Res>(_self.baseAi!, (value) {
    return _then(_self.copyWith(baseAi: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomAi].
extension CustomAiPatterns on CustomAi {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomAi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomAi() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomAi value)  $default,){
final _that = this;
switch (_that) {
case _CustomAi():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomAi value)?  $default,){
final _that = this;
switch (_that) {
case _CustomAi() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CustomAiTypeType type,  String id,  String name,  String baseAiId, @JsonKey(includeIfNull: false)  Ai? baseAi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomAi() when $default != null:
return $default(_that.type,_that.id,_that.name,_that.baseAiId,_that.baseAi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CustomAiTypeType type,  String id,  String name,  String baseAiId, @JsonKey(includeIfNull: false)  Ai? baseAi)  $default,) {final _that = this;
switch (_that) {
case _CustomAi():
return $default(_that.type,_that.id,_that.name,_that.baseAiId,_that.baseAi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CustomAiTypeType type,  String id,  String name,  String baseAiId, @JsonKey(includeIfNull: false)  Ai? baseAi)?  $default,) {final _that = this;
switch (_that) {
case _CustomAi() when $default != null:
return $default(_that.type,_that.id,_that.name,_that.baseAiId,_that.baseAi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomAi implements CustomAi {
  const _CustomAi({required this.type, required this.id, required this.name, required this.baseAiId, @JsonKey(includeIfNull: false) this.baseAi});
  factory _CustomAi.fromJson(Map<String, dynamic> json) => _$CustomAiFromJson(json);

/// Discriminator value for CustomAI
@override final  CustomAiTypeType type;
/// CustomAI ID
@override final  String id;
/// CustomAI name
@override final  String name;
/// Reference to base AI model/agent ID
@override final  String baseAiId;
/// Recursive reference: CustomAI can have a baseAi which is also an AI (SELF-REFERENCE TEST)
@override@JsonKey(includeIfNull: false) final  Ai? baseAi;

/// Create a copy of CustomAi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomAiCopyWith<_CustomAi> get copyWith => __$CustomAiCopyWithImpl<_CustomAi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomAiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomAi&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseAiId, baseAiId) || other.baseAiId == baseAiId)&&(identical(other.baseAi, baseAi) || other.baseAi == baseAi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,name,baseAiId,baseAi);

@override
String toString() {
  return 'CustomAi(type: $type, id: $id, name: $name, baseAiId: $baseAiId, baseAi: $baseAi)';
}


}

/// @nodoc
abstract mixin class _$CustomAiCopyWith<$Res> implements $CustomAiCopyWith<$Res> {
  factory _$CustomAiCopyWith(_CustomAi value, $Res Function(_CustomAi) _then) = __$CustomAiCopyWithImpl;
@override @useResult
$Res call({
 CustomAiTypeType type, String id, String name, String baseAiId,@JsonKey(includeIfNull: false) Ai? baseAi
});


@override $AiCopyWith<$Res>? get baseAi;

}
/// @nodoc
class __$CustomAiCopyWithImpl<$Res>
    implements _$CustomAiCopyWith<$Res> {
  __$CustomAiCopyWithImpl(this._self, this._then);

  final _CustomAi _self;
  final $Res Function(_CustomAi) _then;

/// Create a copy of CustomAi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? id = null,Object? name = null,Object? baseAiId = null,Object? baseAi = freezed,}) {
  return _then(_CustomAi(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CustomAiTypeType,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseAiId: null == baseAiId ? _self.baseAiId : baseAiId // ignore: cast_nullable_to_non_nullable
as String,baseAi: freezed == baseAi ? _self.baseAi : baseAi // ignore: cast_nullable_to_non_nullable
as Ai?,
  ));
}

/// Create a copy of CustomAi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiCopyWith<$Res>? get baseAi {
    if (_self.baseAi == null) {
    return null;
  }

  return $AiCopyWith<$Res>(_self.baseAi!, (value) {
    return _then(_self.copyWith(baseAi: value));
  });
}
}

// dart format on
