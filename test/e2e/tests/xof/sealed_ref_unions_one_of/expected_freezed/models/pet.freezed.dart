// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cat {

/// Unique identifier.
 String get id;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? get updatedAt;@JsonKey(includeIfNull: false) String? get nickname;@JsonKey(includeIfNull: false) PetStatus? get status;@JsonKey(includeIfNull: false) Pet? get friend; String get type;@JsonKey(name: 'schema_version') int get schemaVersion;@JsonKey(name: 'mew_count') int get mewCount;
/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatCopyWith<Cat> get copyWith => _$CatCopyWithImpl<Cat>(this as Cat, _$identity);

  /// Serializes this Cat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cat&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.status, status) || other.status == status)&&(identical(other.friend, friend) || other.friend == friend)&&(identical(other.type, type) || other.type == type)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.mewCount, mewCount) || other.mewCount == mewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,nickname,status,friend,type,schemaVersion,mewCount);

@override
String toString() {
  return 'Cat(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, nickname: $nickname, status: $status, friend: $friend, type: $type, schemaVersion: $schemaVersion, mewCount: $mewCount)';
}


}

/// @nodoc
abstract mixin class $CatCopyWith<$Res>  {
  factory $CatCopyWith(Cat value, $Res Function(Cat) _then) = _$CatCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,@JsonKey(includeIfNull: false) String? nickname,@JsonKey(includeIfNull: false) PetStatus? status,@JsonKey(includeIfNull: false) Pet? friend, String type,@JsonKey(name: 'schema_version') int schemaVersion,@JsonKey(name: 'mew_count') int mewCount
});




}
/// @nodoc
class _$CatCopyWithImpl<$Res>
    implements $CatCopyWith<$Res> {
  _$CatCopyWithImpl(this._self, this._then);

  final Cat _self;
  final $Res Function(Cat) _then;

/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = freezed,Object? nickname = freezed,Object? status = freezed,Object? friend = freezed,Object? type = null,Object? schemaVersion = null,Object? mewCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,friend: freezed == friend ? _self.friend : friend // ignore: cast_nullable_to_non_nullable
as Pet?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,mewCount: null == mewCount ? _self.mewCount : mewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Cat].
extension CatPatterns on Cat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cat value)  $default,){
final _that = this;
switch (_that) {
case _Cat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cat value)?  $default,){
final _that = this;
switch (_that) {
case _Cat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status, @JsonKey(includeIfNull: false)  Pet? friend,  String type, @JsonKey(name: 'schema_version')  int schemaVersion, @JsonKey(name: 'mew_count')  int mewCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cat() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.nickname,_that.status,_that.friend,_that.type,_that.schemaVersion,_that.mewCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status, @JsonKey(includeIfNull: false)  Pet? friend,  String type, @JsonKey(name: 'schema_version')  int schemaVersion, @JsonKey(name: 'mew_count')  int mewCount)  $default,) {final _that = this;
switch (_that) {
case _Cat():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.nickname,_that.status,_that.friend,_that.type,_that.schemaVersion,_that.mewCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status, @JsonKey(includeIfNull: false)  Pet? friend,  String type, @JsonKey(name: 'schema_version')  int schemaVersion, @JsonKey(name: 'mew_count')  int mewCount)?  $default,) {final _that = this;
switch (_that) {
case _Cat() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.nickname,_that.status,_that.friend,_that.type,_that.schemaVersion,_that.mewCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cat implements Cat {
  const _Cat({required this.id, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(includeIfNull: false, name: 'updated_at') this.updatedAt, @JsonKey(includeIfNull: false) this.nickname, @JsonKey(includeIfNull: false) this.status, @JsonKey(includeIfNull: false) this.friend, this.type = 'cat', @JsonKey(name: 'schema_version') this.schemaVersion = 1, @JsonKey(name: 'mew_count') this.mewCount = 0});
  factory _Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

/// Unique identifier.
@override final  String id;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(includeIfNull: false, name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(includeIfNull: false) final  String? nickname;
@override@JsonKey(includeIfNull: false) final  PetStatus? status;
@override@JsonKey(includeIfNull: false) final  Pet? friend;
@override@JsonKey() final  String type;
@override@JsonKey(name: 'schema_version') final  int schemaVersion;
@override@JsonKey(name: 'mew_count') final  int mewCount;

/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatCopyWith<_Cat> get copyWith => __$CatCopyWithImpl<_Cat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cat&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.status, status) || other.status == status)&&(identical(other.friend, friend) || other.friend == friend)&&(identical(other.type, type) || other.type == type)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.mewCount, mewCount) || other.mewCount == mewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,nickname,status,friend,type,schemaVersion,mewCount);

@override
String toString() {
  return 'Cat(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, nickname: $nickname, status: $status, friend: $friend, type: $type, schemaVersion: $schemaVersion, mewCount: $mewCount)';
}


}

/// @nodoc
abstract mixin class _$CatCopyWith<$Res> implements $CatCopyWith<$Res> {
  factory _$CatCopyWith(_Cat value, $Res Function(_Cat) _then) = __$CatCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,@JsonKey(includeIfNull: false) String? nickname,@JsonKey(includeIfNull: false) PetStatus? status,@JsonKey(includeIfNull: false) Pet? friend, String type,@JsonKey(name: 'schema_version') int schemaVersion,@JsonKey(name: 'mew_count') int mewCount
});




}
/// @nodoc
class __$CatCopyWithImpl<$Res>
    implements _$CatCopyWith<$Res> {
  __$CatCopyWithImpl(this._self, this._then);

  final _Cat _self;
  final $Res Function(_Cat) _then;

/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = freezed,Object? nickname = freezed,Object? status = freezed,Object? friend = freezed,Object? type = null,Object? schemaVersion = null,Object? mewCount = null,}) {
  return _then(_Cat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,friend: freezed == friend ? _self.friend : friend // ignore: cast_nullable_to_non_nullable
as Pet?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,mewCount: null == mewCount ? _self.mewCount : mewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Dog {

/// Unique identifier.
 String get id;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'bark_sound') String get barkSound;@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? get updatedAt;@JsonKey(includeIfNull: false) String? get nickname;@JsonKey(includeIfNull: false) PetStatus? get status;@JsonKey(includeIfNull: false) Toy? get toy; String get type;@JsonKey(name: 'schema_version') int get schemaVersion;
/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DogCopyWith<Dog> get copyWith => _$DogCopyWithImpl<Dog>(this as Dog, _$identity);

  /// Serializes this Dog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dog&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.barkSound, barkSound) || other.barkSound == barkSound)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.status, status) || other.status == status)&&(identical(other.toy, toy) || other.toy == toy)&&(identical(other.type, type) || other.type == type)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,barkSound,updatedAt,nickname,status,toy,type,schemaVersion);

@override
String toString() {
  return 'Dog(id: $id, createdAt: $createdAt, barkSound: $barkSound, updatedAt: $updatedAt, nickname: $nickname, status: $status, toy: $toy, type: $type, schemaVersion: $schemaVersion)';
}


}

/// @nodoc
abstract mixin class $DogCopyWith<$Res>  {
  factory $DogCopyWith(Dog value, $Res Function(Dog) _then) = _$DogCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'bark_sound') String barkSound,@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,@JsonKey(includeIfNull: false) String? nickname,@JsonKey(includeIfNull: false) PetStatus? status,@JsonKey(includeIfNull: false) Toy? toy, String type,@JsonKey(name: 'schema_version') int schemaVersion
});


$ToyCopyWith<$Res>? get toy;

}
/// @nodoc
class _$DogCopyWithImpl<$Res>
    implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._self, this._then);

  final Dog _self;
  final $Res Function(Dog) _then;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? barkSound = null,Object? updatedAt = freezed,Object? nickname = freezed,Object? status = freezed,Object? toy = freezed,Object? type = null,Object? schemaVersion = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,barkSound: null == barkSound ? _self.barkSound : barkSound // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,toy: freezed == toy ? _self.toy : toy // ignore: cast_nullable_to_non_nullable
as Toy?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToyCopyWith<$Res>? get toy {
    if (_self.toy == null) {
    return null;
  }

  return $ToyCopyWith<$Res>(_self.toy!, (value) {
    return _then(_self.copyWith(toy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Dog].
extension DogPatterns on Dog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dog value)  $default,){
final _that = this;
switch (_that) {
case _Dog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dog value)?  $default,){
final _that = this;
switch (_that) {
case _Dog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'bark_sound')  String barkSound, @JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status, @JsonKey(includeIfNull: false)  Toy? toy,  String type, @JsonKey(name: 'schema_version')  int schemaVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dog() when $default != null:
return $default(_that.id,_that.createdAt,_that.barkSound,_that.updatedAt,_that.nickname,_that.status,_that.toy,_that.type,_that.schemaVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'bark_sound')  String barkSound, @JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status, @JsonKey(includeIfNull: false)  Toy? toy,  String type, @JsonKey(name: 'schema_version')  int schemaVersion)  $default,) {final _that = this;
switch (_that) {
case _Dog():
return $default(_that.id,_that.createdAt,_that.barkSound,_that.updatedAt,_that.nickname,_that.status,_that.toy,_that.type,_that.schemaVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'bark_sound')  String barkSound, @JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status, @JsonKey(includeIfNull: false)  Toy? toy,  String type, @JsonKey(name: 'schema_version')  int schemaVersion)?  $default,) {final _that = this;
switch (_that) {
case _Dog() when $default != null:
return $default(_that.id,_that.createdAt,_that.barkSound,_that.updatedAt,_that.nickname,_that.status,_that.toy,_that.type,_that.schemaVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Dog implements Dog {
  const _Dog({required this.id, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'bark_sound') required this.barkSound, @JsonKey(includeIfNull: false, name: 'updated_at') this.updatedAt, @JsonKey(includeIfNull: false) this.nickname, @JsonKey(includeIfNull: false) this.status, @JsonKey(includeIfNull: false) this.toy, this.type = 'dog', @JsonKey(name: 'schema_version') this.schemaVersion = 1});
  factory _Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);

/// Unique identifier.
@override final  String id;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'bark_sound') final  String barkSound;
@override@JsonKey(includeIfNull: false, name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(includeIfNull: false) final  String? nickname;
@override@JsonKey(includeIfNull: false) final  PetStatus? status;
@override@JsonKey(includeIfNull: false) final  Toy? toy;
@override@JsonKey() final  String type;
@override@JsonKey(name: 'schema_version') final  int schemaVersion;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DogCopyWith<_Dog> get copyWith => __$DogCopyWithImpl<_Dog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dog&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.barkSound, barkSound) || other.barkSound == barkSound)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.status, status) || other.status == status)&&(identical(other.toy, toy) || other.toy == toy)&&(identical(other.type, type) || other.type == type)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,barkSound,updatedAt,nickname,status,toy,type,schemaVersion);

@override
String toString() {
  return 'Dog(id: $id, createdAt: $createdAt, barkSound: $barkSound, updatedAt: $updatedAt, nickname: $nickname, status: $status, toy: $toy, type: $type, schemaVersion: $schemaVersion)';
}


}

/// @nodoc
abstract mixin class _$DogCopyWith<$Res> implements $DogCopyWith<$Res> {
  factory _$DogCopyWith(_Dog value, $Res Function(_Dog) _then) = __$DogCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'bark_sound') String barkSound,@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,@JsonKey(includeIfNull: false) String? nickname,@JsonKey(includeIfNull: false) PetStatus? status,@JsonKey(includeIfNull: false) Toy? toy, String type,@JsonKey(name: 'schema_version') int schemaVersion
});


@override $ToyCopyWith<$Res>? get toy;

}
/// @nodoc
class __$DogCopyWithImpl<$Res>
    implements _$DogCopyWith<$Res> {
  __$DogCopyWithImpl(this._self, this._then);

  final _Dog _self;
  final $Res Function(_Dog) _then;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? barkSound = null,Object? updatedAt = freezed,Object? nickname = freezed,Object? status = freezed,Object? toy = freezed,Object? type = null,Object? schemaVersion = null,}) {
  return _then(_Dog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,barkSound: null == barkSound ? _self.barkSound : barkSound // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,toy: freezed == toy ? _self.toy : toy // ignore: cast_nullable_to_non_nullable
as Toy?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToyCopyWith<$Res>? get toy {
    if (_self.toy == null) {
    return null;
  }

  return $ToyCopyWith<$Res>(_self.toy!, (value) {
    return _then(_self.copyWith(toy: value));
  });
}
}


/// @nodoc
mixin _$Robot {

@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? get updatedAt;@JsonKey(includeIfNull: false) String? get nickname;@JsonKey(includeIfNull: false) PetStatus? get status; String get type;@JsonKey(name: 'schema_version') int get schemaVersion; int get battery;
/// Create a copy of Robot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RobotCopyWith<Robot> get copyWith => _$RobotCopyWithImpl<Robot>(this as Robot, _$identity);

  /// Serializes this Robot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Robot&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.battery, battery) || other.battery == battery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,updatedAt,nickname,status,type,schemaVersion,battery);

@override
String toString() {
  return 'Robot(updatedAt: $updatedAt, nickname: $nickname, status: $status, type: $type, schemaVersion: $schemaVersion, battery: $battery)';
}


}

/// @nodoc
abstract mixin class $RobotCopyWith<$Res>  {
  factory $RobotCopyWith(Robot value, $Res Function(Robot) _then) = _$RobotCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,@JsonKey(includeIfNull: false) String? nickname,@JsonKey(includeIfNull: false) PetStatus? status, String type,@JsonKey(name: 'schema_version') int schemaVersion, int battery
});




}
/// @nodoc
class _$RobotCopyWithImpl<$Res>
    implements $RobotCopyWith<$Res> {
  _$RobotCopyWithImpl(this._self, this._then);

  final Robot _self;
  final $Res Function(Robot) _then;

/// Create a copy of Robot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? updatedAt = freezed,Object? nickname = freezed,Object? status = freezed,Object? type = null,Object? schemaVersion = null,Object? battery = null,}) {
  return _then(_self.copyWith(
updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,battery: null == battery ? _self.battery : battery // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Robot].
extension RobotPatterns on Robot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Robot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Robot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Robot value)  $default,){
final _that = this;
switch (_that) {
case _Robot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Robot value)?  $default,){
final _that = this;
switch (_that) {
case _Robot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status,  String type, @JsonKey(name: 'schema_version')  int schemaVersion,  int battery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Robot() when $default != null:
return $default(_that.updatedAt,_that.nickname,_that.status,_that.type,_that.schemaVersion,_that.battery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status,  String type, @JsonKey(name: 'schema_version')  int schemaVersion,  int battery)  $default,) {final _that = this;
switch (_that) {
case _Robot():
return $default(_that.updatedAt,_that.nickname,_that.status,_that.type,_that.schemaVersion,_that.battery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false, name: 'updated_at')  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? nickname, @JsonKey(includeIfNull: false)  PetStatus? status,  String type, @JsonKey(name: 'schema_version')  int schemaVersion,  int battery)?  $default,) {final _that = this;
switch (_that) {
case _Robot() when $default != null:
return $default(_that.updatedAt,_that.nickname,_that.status,_that.type,_that.schemaVersion,_that.battery);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Robot implements Robot {
  const _Robot({@JsonKey(includeIfNull: false, name: 'updated_at') this.updatedAt, @JsonKey(includeIfNull: false) this.nickname, @JsonKey(includeIfNull: false) this.status, this.type = 'robot', @JsonKey(name: 'schema_version') this.schemaVersion = 1, this.battery = 100});
  factory _Robot.fromJson(Map<String, dynamic> json) => _$RobotFromJson(json);

@override@JsonKey(includeIfNull: false, name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(includeIfNull: false) final  String? nickname;
@override@JsonKey(includeIfNull: false) final  PetStatus? status;
@override@JsonKey() final  String type;
@override@JsonKey(name: 'schema_version') final  int schemaVersion;
@override@JsonKey() final  int battery;

/// Create a copy of Robot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RobotCopyWith<_Robot> get copyWith => __$RobotCopyWithImpl<_Robot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RobotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Robot&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&(identical(other.battery, battery) || other.battery == battery));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,updatedAt,nickname,status,type,schemaVersion,battery);

@override
String toString() {
  return 'Robot(updatedAt: $updatedAt, nickname: $nickname, status: $status, type: $type, schemaVersion: $schemaVersion, battery: $battery)';
}


}

/// @nodoc
abstract mixin class _$RobotCopyWith<$Res> implements $RobotCopyWith<$Res> {
  factory _$RobotCopyWith(_Robot value, $Res Function(_Robot) _then) = __$RobotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,@JsonKey(includeIfNull: false) String? nickname,@JsonKey(includeIfNull: false) PetStatus? status, String type,@JsonKey(name: 'schema_version') int schemaVersion, int battery
});




}
/// @nodoc
class __$RobotCopyWithImpl<$Res>
    implements _$RobotCopyWith<$Res> {
  __$RobotCopyWithImpl(this._self, this._then);

  final _Robot _self;
  final $Res Function(_Robot) _then;

/// Create a copy of Robot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? updatedAt = freezed,Object? nickname = freezed,Object? status = freezed,Object? type = null,Object? schemaVersion = null,Object? battery = null,}) {
  return _then(_Robot(
updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as int,battery: null == battery ? _self.battery : battery // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
