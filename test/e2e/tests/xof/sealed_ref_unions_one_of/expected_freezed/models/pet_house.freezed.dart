// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_house.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PetHouse {

 Cat get occupant;@JsonKey(includeIfNull: false) Pet? get backup;
/// Create a copy of PetHouse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetHouseCopyWith<PetHouse> get copyWith => _$PetHouseCopyWithImpl<PetHouse>(this as PetHouse, _$identity);

  /// Serializes this PetHouse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PetHouse&&(identical(other.occupant, occupant) || other.occupant == occupant)&&(identical(other.backup, backup) || other.backup == backup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occupant,backup);

@override
String toString() {
  return 'PetHouse(occupant: $occupant, backup: $backup)';
}


}

/// @nodoc
abstract mixin class $PetHouseCopyWith<$Res>  {
  factory $PetHouseCopyWith(PetHouse value, $Res Function(PetHouse) _then) = _$PetHouseCopyWithImpl;
@useResult
$Res call({
 Cat occupant,@JsonKey(includeIfNull: false) Pet? backup
});


$CatCopyWith<$Res> get occupant;

}
/// @nodoc
class _$PetHouseCopyWithImpl<$Res>
    implements $PetHouseCopyWith<$Res> {
  _$PetHouseCopyWithImpl(this._self, this._then);

  final PetHouse _self;
  final $Res Function(PetHouse) _then;

/// Create a copy of PetHouse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? occupant = null,Object? backup = freezed,}) {
  return _then(_self.copyWith(
occupant: null == occupant ? _self.occupant : occupant // ignore: cast_nullable_to_non_nullable
as Cat,backup: freezed == backup ? _self.backup : backup // ignore: cast_nullable_to_non_nullable
as Pet?,
  ));
}
/// Create a copy of PetHouse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatCopyWith<$Res> get occupant {
  
  return $CatCopyWith<$Res>(_self.occupant, (value) {
    return _then(_self.copyWith(occupant: value));
  });
}
}


/// Adds pattern-matching-related methods to [PetHouse].
extension PetHousePatterns on PetHouse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PetHouse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PetHouse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PetHouse value)  $default,){
final _that = this;
switch (_that) {
case _PetHouse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PetHouse value)?  $default,){
final _that = this;
switch (_that) {
case _PetHouse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Cat occupant, @JsonKey(includeIfNull: false)  Pet? backup)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PetHouse() when $default != null:
return $default(_that.occupant,_that.backup);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Cat occupant, @JsonKey(includeIfNull: false)  Pet? backup)  $default,) {final _that = this;
switch (_that) {
case _PetHouse():
return $default(_that.occupant,_that.backup);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Cat occupant, @JsonKey(includeIfNull: false)  Pet? backup)?  $default,) {final _that = this;
switch (_that) {
case _PetHouse() when $default != null:
return $default(_that.occupant,_that.backup);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PetHouse implements PetHouse {
  const _PetHouse({required this.occupant, @JsonKey(includeIfNull: false) this.backup});
  factory _PetHouse.fromJson(Map<String, dynamic> json) => _$PetHouseFromJson(json);

@override final  Cat occupant;
@override@JsonKey(includeIfNull: false) final  Pet? backup;

/// Create a copy of PetHouse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetHouseCopyWith<_PetHouse> get copyWith => __$PetHouseCopyWithImpl<_PetHouse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PetHouseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PetHouse&&(identical(other.occupant, occupant) || other.occupant == occupant)&&(identical(other.backup, backup) || other.backup == backup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,occupant,backup);

@override
String toString() {
  return 'PetHouse(occupant: $occupant, backup: $backup)';
}


}

/// @nodoc
abstract mixin class _$PetHouseCopyWith<$Res> implements $PetHouseCopyWith<$Res> {
  factory _$PetHouseCopyWith(_PetHouse value, $Res Function(_PetHouse) _then) = __$PetHouseCopyWithImpl;
@override @useResult
$Res call({
 Cat occupant,@JsonKey(includeIfNull: false) Pet? backup
});


@override $CatCopyWith<$Res> get occupant;

}
/// @nodoc
class __$PetHouseCopyWithImpl<$Res>
    implements _$PetHouseCopyWith<$Res> {
  __$PetHouseCopyWithImpl(this._self, this._then);

  final _PetHouse _self;
  final $Res Function(_PetHouse) _then;

/// Create a copy of PetHouse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? occupant = null,Object? backup = freezed,}) {
  return _then(_PetHouse(
occupant: null == occupant ? _self.occupant : occupant // ignore: cast_nullable_to_non_nullable
as Cat,backup: freezed == backup ? _self.backup : backup // ignore: cast_nullable_to_non_nullable
as Pet?,
  ));
}

/// Create a copy of PetHouse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatCopyWith<$Res> get occupant {
  
  return $CatCopyWith<$Res>(_self.occupant, (value) {
    return _then(_self.copyWith(occupant: value));
  });
}
}

// dart format on
