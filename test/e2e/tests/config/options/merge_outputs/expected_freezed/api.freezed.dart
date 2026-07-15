// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String get id; String get email; String get username; UserRole get role; DateTime get createdAt; String? get firstName; String? get lastName; int? get age; UserStatus? get status; String? get avatar; String? get bio; UserSettings? get settings; Map<String, String>? get metadata;/// Circular reference to User
 List<User>? get friends; DateTime? get updatedAt; DateTime? get deletedAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.status, status) || other.status == status)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.settings, settings) || other.settings == settings)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.friends, friends)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,role,createdAt,firstName,lastName,age,status,avatar,bio,settings,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(friends),updatedAt,deletedAt);

@override
String toString() {
  return 'User(id: $id, email: $email, username: $username, role: $role, createdAt: $createdAt, firstName: $firstName, lastName: $lastName, age: $age, status: $status, avatar: $avatar, bio: $bio, settings: $settings, metadata: $metadata, friends: $friends, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, String email, String username, UserRole role, DateTime createdAt, String? firstName, String? lastName, int? age, UserStatus? status, String? avatar, String? bio, UserSettings? settings, Map<String, String>? metadata, List<User>? friends, DateTime? updatedAt, DateTime? deletedAt
});


$UserSettingsCopyWith<$Res>? get settings;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? username = null,Object? role = null,Object? createdAt = null,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? status = freezed,Object? avatar = freezed,Object? bio = freezed,Object? settings = freezed,Object? metadata = freezed,Object? friends = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as UserSettings?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,friends: freezed == friends ? _self.friends : friends // ignore: cast_nullable_to_non_nullable
as List<User>?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsCopyWith<$Res>? get settings {
    if (_self.settings == null) {
    return null;
  }

  return $UserSettingsCopyWith<$Res>(_self.settings!, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String username,  UserRole role,  DateTime createdAt,  String? firstName,  String? lastName,  int? age,  UserStatus? status,  String? avatar,  String? bio,  UserSettings? settings,  Map<String, String>? metadata,  List<User>? friends,  DateTime? updatedAt,  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.role,_that.createdAt,_that.firstName,_that.lastName,_that.age,_that.status,_that.avatar,_that.bio,_that.settings,_that.metadata,_that.friends,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String username,  UserRole role,  DateTime createdAt,  String? firstName,  String? lastName,  int? age,  UserStatus? status,  String? avatar,  String? bio,  UserSettings? settings,  Map<String, String>? metadata,  List<User>? friends,  DateTime? updatedAt,  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.email,_that.username,_that.role,_that.createdAt,_that.firstName,_that.lastName,_that.age,_that.status,_that.avatar,_that.bio,_that.settings,_that.metadata,_that.friends,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String username,  UserRole role,  DateTime createdAt,  String? firstName,  String? lastName,  int? age,  UserStatus? status,  String? avatar,  String? bio,  UserSettings? settings,  Map<String, String>? metadata,  List<User>? friends,  DateTime? updatedAt,  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.role,_that.createdAt,_that.firstName,_that.lastName,_that.age,_that.status,_that.avatar,_that.bio,_that.settings,_that.metadata,_that.friends,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.email, required this.username, required this.role, required this.createdAt, this.firstName, this.lastName, this.age, this.status, this.avatar, this.bio, this.settings, final  Map<String, String>? metadata, final  List<User>? friends, this.updatedAt, this.deletedAt}): _metadata = metadata,_friends = friends;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String id;
@override final  String email;
@override final  String username;
@override final  UserRole role;
@override final  DateTime createdAt;
@override final  String? firstName;
@override final  String? lastName;
@override final  int? age;
@override final  UserStatus? status;
@override final  String? avatar;
@override final  String? bio;
@override final  UserSettings? settings;
 final  Map<String, String>? _metadata;
@override Map<String, String>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Circular reference to User
 final  List<User>? _friends;
/// Circular reference to User
@override List<User>? get friends {
  final value = _friends;
  if (value == null) return null;
  if (_friends is EqualUnmodifiableListView) return _friends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? updatedAt;
@override final  DateTime? deletedAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.status, status) || other.status == status)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.settings, settings) || other.settings == settings)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._friends, _friends)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,role,createdAt,firstName,lastName,age,status,avatar,bio,settings,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_friends),updatedAt,deletedAt);

@override
String toString() {
  return 'User(id: $id, email: $email, username: $username, role: $role, createdAt: $createdAt, firstName: $firstName, lastName: $lastName, age: $age, status: $status, avatar: $avatar, bio: $bio, settings: $settings, metadata: $metadata, friends: $friends, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String username, UserRole role, DateTime createdAt, String? firstName, String? lastName, int? age, UserStatus? status, String? avatar, String? bio, UserSettings? settings, Map<String, String>? metadata, List<User>? friends, DateTime? updatedAt, DateTime? deletedAt
});


@override $UserSettingsCopyWith<$Res>? get settings;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? username = null,Object? role = null,Object? createdAt = null,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? status = freezed,Object? avatar = freezed,Object? bio = freezed,Object? settings = freezed,Object? metadata = freezed,Object? friends = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as UserSettings?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,friends: freezed == friends ? _self._friends : friends // ignore: cast_nullable_to_non_nullable
as List<User>?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsCopyWith<$Res>? get settings {
    if (_self.settings == null) {
    return null;
  }

  return $UserSettingsCopyWith<$Res>(_self.settings!, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// @nodoc
mixin _$CreateUserRequest {

 String get email; String get username; String get password; String? get firstName; String? get lastName; int? get age; UserRole? get role;
/// Create a copy of CreateUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserRequestCopyWith<CreateUserRequest> get copyWith => _$CreateUserRequestCopyWithImpl<CreateUserRequest>(this as CreateUserRequest, _$identity);

  /// Serializes this CreateUserRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,password,firstName,lastName,age,role);

@override
String toString() {
  return 'CreateUserRequest(email: $email, username: $username, password: $password, firstName: $firstName, lastName: $lastName, age: $age, role: $role)';
}


}

/// @nodoc
abstract mixin class $CreateUserRequestCopyWith<$Res>  {
  factory $CreateUserRequestCopyWith(CreateUserRequest value, $Res Function(CreateUserRequest) _then) = _$CreateUserRequestCopyWithImpl;
@useResult
$Res call({
 String email, String username, String password, String? firstName, String? lastName, int? age, UserRole? role
});




}
/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._self, this._then);

  final CreateUserRequest _self;
  final $Res Function(CreateUserRequest) _then;

/// Create a copy of CreateUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? username = null,Object? password = null,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUserRequest].
extension CreateUserRequestPatterns on CreateUserRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUserRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUserRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateUserRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUserRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUserRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String username,  String password,  String? firstName,  String? lastName,  int? age,  UserRole? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUserRequest() when $default != null:
return $default(_that.email,_that.username,_that.password,_that.firstName,_that.lastName,_that.age,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String username,  String password,  String? firstName,  String? lastName,  int? age,  UserRole? role)  $default,) {final _that = this;
switch (_that) {
case _CreateUserRequest():
return $default(_that.email,_that.username,_that.password,_that.firstName,_that.lastName,_that.age,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String username,  String password,  String? firstName,  String? lastName,  int? age,  UserRole? role)?  $default,) {final _that = this;
switch (_that) {
case _CreateUserRequest() when $default != null:
return $default(_that.email,_that.username,_that.password,_that.firstName,_that.lastName,_that.age,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateUserRequest implements CreateUserRequest {
  const _CreateUserRequest({required this.email, required this.username, required this.password, this.firstName, this.lastName, this.age, this.role});
  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) => _$CreateUserRequestFromJson(json);

@override final  String email;
@override final  String username;
@override final  String password;
@override final  String? firstName;
@override final  String? lastName;
@override final  int? age;
@override final  UserRole? role;

/// Create a copy of CreateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserRequestCopyWith<_CreateUserRequest> get copyWith => __$CreateUserRequestCopyWithImpl<_CreateUserRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUserRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,password,firstName,lastName,age,role);

@override
String toString() {
  return 'CreateUserRequest(email: $email, username: $username, password: $password, firstName: $firstName, lastName: $lastName, age: $age, role: $role)';
}


}

/// @nodoc
abstract mixin class _$CreateUserRequestCopyWith<$Res> implements $CreateUserRequestCopyWith<$Res> {
  factory _$CreateUserRequestCopyWith(_CreateUserRequest value, $Res Function(_CreateUserRequest) _then) = __$CreateUserRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String username, String password, String? firstName, String? lastName, int? age, UserRole? role
});




}
/// @nodoc
class __$CreateUserRequestCopyWithImpl<$Res>
    implements _$CreateUserRequestCopyWith<$Res> {
  __$CreateUserRequestCopyWithImpl(this._self, this._then);

  final _CreateUserRequest _self;
  final $Res Function(_CreateUserRequest) _then;

/// Create a copy of CreateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? username = null,Object? password = null,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? role = freezed,}) {
  return _then(_CreateUserRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole?,
  ));
}


}


/// @nodoc
mixin _$UpdateUserRequest {

 String get email; String get username; String? get firstName; String? get lastName; int? get age; String? get bio;
/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserRequestCopyWith<UpdateUserRequest> get copyWith => _$UpdateUserRequestCopyWithImpl<UpdateUserRequest>(this as UpdateUserRequest, _$identity);

  /// Serializes this UpdateUserRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.bio, bio) || other.bio == bio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,firstName,lastName,age,bio);

@override
String toString() {
  return 'UpdateUserRequest(email: $email, username: $username, firstName: $firstName, lastName: $lastName, age: $age, bio: $bio)';
}


}

/// @nodoc
abstract mixin class $UpdateUserRequestCopyWith<$Res>  {
  factory $UpdateUserRequestCopyWith(UpdateUserRequest value, $Res Function(UpdateUserRequest) _then) = _$UpdateUserRequestCopyWithImpl;
@useResult
$Res call({
 String email, String username, String? firstName, String? lastName, int? age, String? bio
});




}
/// @nodoc
class _$UpdateUserRequestCopyWithImpl<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  _$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final UpdateUserRequest _self;
  final $Res Function(UpdateUserRequest) _then;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? username = null,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? bio = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserRequest].
extension UpdateUserRequestPatterns on UpdateUserRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String username,  String? firstName,  String? lastName,  int? age,  String? bio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
return $default(_that.email,_that.username,_that.firstName,_that.lastName,_that.age,_that.bio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String username,  String? firstName,  String? lastName,  int? age,  String? bio)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserRequest():
return $default(_that.email,_that.username,_that.firstName,_that.lastName,_that.age,_that.bio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String username,  String? firstName,  String? lastName,  int? age,  String? bio)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserRequest() when $default != null:
return $default(_that.email,_that.username,_that.firstName,_that.lastName,_that.age,_that.bio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateUserRequest implements UpdateUserRequest {
  const _UpdateUserRequest({required this.email, required this.username, this.firstName, this.lastName, this.age, this.bio});
  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) => _$UpdateUserRequestFromJson(json);

@override final  String email;
@override final  String username;
@override final  String? firstName;
@override final  String? lastName;
@override final  int? age;
@override final  String? bio;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserRequestCopyWith<_UpdateUserRequest> get copyWith => __$UpdateUserRequestCopyWithImpl<_UpdateUserRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.bio, bio) || other.bio == bio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,firstName,lastName,age,bio);

@override
String toString() {
  return 'UpdateUserRequest(email: $email, username: $username, firstName: $firstName, lastName: $lastName, age: $age, bio: $bio)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserRequestCopyWith<$Res> implements $UpdateUserRequestCopyWith<$Res> {
  factory _$UpdateUserRequestCopyWith(_UpdateUserRequest value, $Res Function(_UpdateUserRequest) _then) = __$UpdateUserRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String username, String? firstName, String? lastName, int? age, String? bio
});




}
/// @nodoc
class __$UpdateUserRequestCopyWithImpl<$Res>
    implements _$UpdateUserRequestCopyWith<$Res> {
  __$UpdateUserRequestCopyWithImpl(this._self, this._then);

  final _UpdateUserRequest _self;
  final $Res Function(_UpdateUserRequest) _then;

/// Create a copy of UpdateUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? username = null,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? bio = freezed,}) {
  return _then(_UpdateUserRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PatchUserRequest {

 String? get email; String? get username; String? get firstName; String? get lastName; int? get age; String? get bio; UserSettings? get settings;
/// Create a copy of PatchUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchUserRequestCopyWith<PatchUserRequest> get copyWith => _$PatchUserRequestCopyWithImpl<PatchUserRequest>(this as PatchUserRequest, _$identity);

  /// Serializes this PatchUserRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchUserRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,firstName,lastName,age,bio,settings);

@override
String toString() {
  return 'PatchUserRequest(email: $email, username: $username, firstName: $firstName, lastName: $lastName, age: $age, bio: $bio, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $PatchUserRequestCopyWith<$Res>  {
  factory $PatchUserRequestCopyWith(PatchUserRequest value, $Res Function(PatchUserRequest) _then) = _$PatchUserRequestCopyWithImpl;
@useResult
$Res call({
 String? email, String? username, String? firstName, String? lastName, int? age, String? bio, UserSettings? settings
});


$UserSettingsCopyWith<$Res>? get settings;

}
/// @nodoc
class _$PatchUserRequestCopyWithImpl<$Res>
    implements $PatchUserRequestCopyWith<$Res> {
  _$PatchUserRequestCopyWithImpl(this._self, this._then);

  final PatchUserRequest _self;
  final $Res Function(PatchUserRequest) _then;

/// Create a copy of PatchUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? username = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? bio = freezed,Object? settings = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as UserSettings?,
  ));
}
/// Create a copy of PatchUserRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsCopyWith<$Res>? get settings {
    if (_self.settings == null) {
    return null;
  }

  return $UserSettingsCopyWith<$Res>(_self.settings!, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatchUserRequest].
extension PatchUserRequestPatterns on PatchUserRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatchUserRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatchUserRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatchUserRequest value)  $default,){
final _that = this;
switch (_that) {
case _PatchUserRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatchUserRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PatchUserRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? username,  String? firstName,  String? lastName,  int? age,  String? bio,  UserSettings? settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatchUserRequest() when $default != null:
return $default(_that.email,_that.username,_that.firstName,_that.lastName,_that.age,_that.bio,_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? username,  String? firstName,  String? lastName,  int? age,  String? bio,  UserSettings? settings)  $default,) {final _that = this;
switch (_that) {
case _PatchUserRequest():
return $default(_that.email,_that.username,_that.firstName,_that.lastName,_that.age,_that.bio,_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? username,  String? firstName,  String? lastName,  int? age,  String? bio,  UserSettings? settings)?  $default,) {final _that = this;
switch (_that) {
case _PatchUserRequest() when $default != null:
return $default(_that.email,_that.username,_that.firstName,_that.lastName,_that.age,_that.bio,_that.settings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatchUserRequest implements PatchUserRequest {
  const _PatchUserRequest({this.email, this.username, this.firstName, this.lastName, this.age, this.bio, this.settings});
  factory _PatchUserRequest.fromJson(Map<String, dynamic> json) => _$PatchUserRequestFromJson(json);

@override final  String? email;
@override final  String? username;
@override final  String? firstName;
@override final  String? lastName;
@override final  int? age;
@override final  String? bio;
@override final  UserSettings? settings;

/// Create a copy of PatchUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatchUserRequestCopyWith<_PatchUserRequest> get copyWith => __$PatchUserRequestCopyWithImpl<_PatchUserRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatchUserRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatchUserRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.age, age) || other.age == age)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,username,firstName,lastName,age,bio,settings);

@override
String toString() {
  return 'PatchUserRequest(email: $email, username: $username, firstName: $firstName, lastName: $lastName, age: $age, bio: $bio, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$PatchUserRequestCopyWith<$Res> implements $PatchUserRequestCopyWith<$Res> {
  factory _$PatchUserRequestCopyWith(_PatchUserRequest value, $Res Function(_PatchUserRequest) _then) = __$PatchUserRequestCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? username, String? firstName, String? lastName, int? age, String? bio, UserSettings? settings
});


@override $UserSettingsCopyWith<$Res>? get settings;

}
/// @nodoc
class __$PatchUserRequestCopyWithImpl<$Res>
    implements _$PatchUserRequestCopyWith<$Res> {
  __$PatchUserRequestCopyWithImpl(this._self, this._then);

  final _PatchUserRequest _self;
  final $Res Function(_PatchUserRequest) _then;

/// Create a copy of PatchUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? username = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? age = freezed,Object? bio = freezed,Object? settings = freezed,}) {
  return _then(_PatchUserRequest(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as UserSettings?,
  ));
}

/// Create a copy of PatchUserRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsCopyWith<$Res>? get settings {
    if (_self.settings == null) {
    return null;
  }

  return $UserSettingsCopyWith<$Res>(_self.settings!, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// @nodoc
mixin _$UserSettings {

 UserSettingsNotifications? get notifications; UserSettingsPrivacy? get privacy; UserSettingsThemeTheme get theme; String get language;
/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSettingsCopyWith<UserSettings> get copyWith => _$UserSettingsCopyWithImpl<UserSettings>(this as UserSettings, _$identity);

  /// Serializes this UserSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSettings&&(identical(other.notifications, notifications) || other.notifications == notifications)&&(identical(other.privacy, privacy) || other.privacy == privacy)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notifications,privacy,theme,language);

@override
String toString() {
  return 'UserSettings(notifications: $notifications, privacy: $privacy, theme: $theme, language: $language)';
}


}

/// @nodoc
abstract mixin class $UserSettingsCopyWith<$Res>  {
  factory $UserSettingsCopyWith(UserSettings value, $Res Function(UserSettings) _then) = _$UserSettingsCopyWithImpl;
@useResult
$Res call({
 UserSettingsNotifications? notifications, UserSettingsPrivacy? privacy, UserSettingsThemeTheme theme, String language
});


$UserSettingsNotificationsCopyWith<$Res>? get notifications;$UserSettingsPrivacyCopyWith<$Res>? get privacy;

}
/// @nodoc
class _$UserSettingsCopyWithImpl<$Res>
    implements $UserSettingsCopyWith<$Res> {
  _$UserSettingsCopyWithImpl(this._self, this._then);

  final UserSettings _self;
  final $Res Function(UserSettings) _then;

/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = freezed,Object? privacy = freezed,Object? theme = null,Object? language = null,}) {
  return _then(_self.copyWith(
notifications: freezed == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as UserSettingsNotifications?,privacy: freezed == privacy ? _self.privacy : privacy // ignore: cast_nullable_to_non_nullable
as UserSettingsPrivacy?,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as UserSettingsThemeTheme,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsNotificationsCopyWith<$Res>? get notifications {
    if (_self.notifications == null) {
    return null;
  }

  return $UserSettingsNotificationsCopyWith<$Res>(_self.notifications!, (value) {
    return _then(_self.copyWith(notifications: value));
  });
}/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsPrivacyCopyWith<$Res>? get privacy {
    if (_self.privacy == null) {
    return null;
  }

  return $UserSettingsPrivacyCopyWith<$Res>(_self.privacy!, (value) {
    return _then(_self.copyWith(privacy: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserSettings].
extension UserSettingsPatterns on UserSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSettings value)  $default,){
final _that = this;
switch (_that) {
case _UserSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSettings value)?  $default,){
final _that = this;
switch (_that) {
case _UserSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserSettingsNotifications? notifications,  UserSettingsPrivacy? privacy,  UserSettingsThemeTheme theme,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSettings() when $default != null:
return $default(_that.notifications,_that.privacy,_that.theme,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserSettingsNotifications? notifications,  UserSettingsPrivacy? privacy,  UserSettingsThemeTheme theme,  String language)  $default,) {final _that = this;
switch (_that) {
case _UserSettings():
return $default(_that.notifications,_that.privacy,_that.theme,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserSettingsNotifications? notifications,  UserSettingsPrivacy? privacy,  UserSettingsThemeTheme theme,  String language)?  $default,) {final _that = this;
switch (_that) {
case _UserSettings() when $default != null:
return $default(_that.notifications,_that.privacy,_that.theme,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSettings implements UserSettings {
  const _UserSettings({this.notifications, this.privacy, this.theme = UserSettingsThemeTheme.auto, this.language = 'en'});
  factory _UserSettings.fromJson(Map<String, dynamic> json) => _$UserSettingsFromJson(json);

@override final  UserSettingsNotifications? notifications;
@override final  UserSettingsPrivacy? privacy;
@override@JsonKey() final  UserSettingsThemeTheme theme;
@override@JsonKey() final  String language;

/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSettingsCopyWith<_UserSettings> get copyWith => __$UserSettingsCopyWithImpl<_UserSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSettings&&(identical(other.notifications, notifications) || other.notifications == notifications)&&(identical(other.privacy, privacy) || other.privacy == privacy)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notifications,privacy,theme,language);

@override
String toString() {
  return 'UserSettings(notifications: $notifications, privacy: $privacy, theme: $theme, language: $language)';
}


}

/// @nodoc
abstract mixin class _$UserSettingsCopyWith<$Res> implements $UserSettingsCopyWith<$Res> {
  factory _$UserSettingsCopyWith(_UserSettings value, $Res Function(_UserSettings) _then) = __$UserSettingsCopyWithImpl;
@override @useResult
$Res call({
 UserSettingsNotifications? notifications, UserSettingsPrivacy? privacy, UserSettingsThemeTheme theme, String language
});


@override $UserSettingsNotificationsCopyWith<$Res>? get notifications;@override $UserSettingsPrivacyCopyWith<$Res>? get privacy;

}
/// @nodoc
class __$UserSettingsCopyWithImpl<$Res>
    implements _$UserSettingsCopyWith<$Res> {
  __$UserSettingsCopyWithImpl(this._self, this._then);

  final _UserSettings _self;
  final $Res Function(_UserSettings) _then;

/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notifications = freezed,Object? privacy = freezed,Object? theme = null,Object? language = null,}) {
  return _then(_UserSettings(
notifications: freezed == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as UserSettingsNotifications?,privacy: freezed == privacy ? _self.privacy : privacy // ignore: cast_nullable_to_non_nullable
as UserSettingsPrivacy?,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as UserSettingsThemeTheme,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsNotificationsCopyWith<$Res>? get notifications {
    if (_self.notifications == null) {
    return null;
  }

  return $UserSettingsNotificationsCopyWith<$Res>(_self.notifications!, (value) {
    return _then(_self.copyWith(notifications: value));
  });
}/// Create a copy of UserSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSettingsPrivacyCopyWith<$Res>? get privacy {
    if (_self.privacy == null) {
    return null;
  }

  return $UserSettingsPrivacyCopyWith<$Res>(_self.privacy!, (value) {
    return _then(_self.copyWith(privacy: value));
  });
}
}


/// @nodoc
mixin _$UserListResponse {

 List<User> get users; int get total; int? get page; int? get limit;
/// Create a copy of UserListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListResponseCopyWith<UserListResponse> get copyWith => _$UserListResponseCopyWithImpl<UserListResponse>(this as UserListResponse, _$identity);

  /// Serializes this UserListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListResponse&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),total,page,limit);

@override
String toString() {
  return 'UserListResponse(users: $users, total: $total, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $UserListResponseCopyWith<$Res>  {
  factory $UserListResponseCopyWith(UserListResponse value, $Res Function(UserListResponse) _then) = _$UserListResponseCopyWithImpl;
@useResult
$Res call({
 List<User> users, int total, int? page, int? limit
});




}
/// @nodoc
class _$UserListResponseCopyWithImpl<$Res>
    implements $UserListResponseCopyWith<$Res> {
  _$UserListResponseCopyWithImpl(this._self, this._then);

  final UserListResponse _self;
  final $Res Function(UserListResponse) _then;

/// Create a copy of UserListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? total = null,Object? page = freezed,Object? limit = freezed,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListResponse].
extension UserListResponsePatterns on UserListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<User> users,  int total,  int? page,  int? limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListResponse() when $default != null:
return $default(_that.users,_that.total,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<User> users,  int total,  int? page,  int? limit)  $default,) {final _that = this;
switch (_that) {
case _UserListResponse():
return $default(_that.users,_that.total,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<User> users,  int total,  int? page,  int? limit)?  $default,) {final _that = this;
switch (_that) {
case _UserListResponse() when $default != null:
return $default(_that.users,_that.total,_that.page,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserListResponse implements UserListResponse {
  const _UserListResponse({required final  List<User> users, required this.total, this.page, this.limit}): _users = users;
  factory _UserListResponse.fromJson(Map<String, dynamic> json) => _$UserListResponseFromJson(json);

 final  List<User> _users;
@override List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override final  int total;
@override final  int? page;
@override final  int? limit;

/// Create a copy of UserListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListResponseCopyWith<_UserListResponse> get copyWith => __$UserListResponseCopyWithImpl<_UserListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListResponse&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),total,page,limit);

@override
String toString() {
  return 'UserListResponse(users: $users, total: $total, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$UserListResponseCopyWith<$Res> implements $UserListResponseCopyWith<$Res> {
  factory _$UserListResponseCopyWith(_UserListResponse value, $Res Function(_UserListResponse) _then) = __$UserListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<User> users, int total, int? page, int? limit
});




}
/// @nodoc
class __$UserListResponseCopyWithImpl<$Res>
    implements _$UserListResponseCopyWith<$Res> {
  __$UserListResponseCopyWithImpl(this._self, this._then);

  final _UserListResponse _self;
  final $Res Function(_UserListResponse) _then;

/// Create a copy of UserListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? total = null,Object? page = freezed,Object? limit = freezed,}) {
  return _then(_UserListResponse(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$LegacyUser {

 int? get id; String? get name; String? get email;
/// Create a copy of LegacyUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegacyUserCopyWith<LegacyUser> get copyWith => _$LegacyUserCopyWithImpl<LegacyUser>(this as LegacyUser, _$identity);

  /// Serializes this LegacyUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegacyUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'LegacyUser(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class $LegacyUserCopyWith<$Res>  {
  factory $LegacyUserCopyWith(LegacyUser value, $Res Function(LegacyUser) _then) = _$LegacyUserCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? email
});




}
/// @nodoc
class _$LegacyUserCopyWithImpl<$Res>
    implements $LegacyUserCopyWith<$Res> {
  _$LegacyUserCopyWithImpl(this._self, this._then);

  final LegacyUser _self;
  final $Res Function(LegacyUser) _then;

/// Create a copy of LegacyUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LegacyUser].
extension LegacyUserPatterns on LegacyUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegacyUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegacyUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegacyUser value)  $default,){
final _that = this;
switch (_that) {
case _LegacyUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegacyUser value)?  $default,){
final _that = this;
switch (_that) {
case _LegacyUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegacyUser() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email)  $default,) {final _that = this;
switch (_that) {
case _LegacyUser():
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _LegacyUser() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegacyUser implements LegacyUser {
  const _LegacyUser({this.id, this.name, this.email});
  factory _LegacyUser.fromJson(Map<String, dynamic> json) => _$LegacyUserFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? email;

/// Create a copy of LegacyUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegacyUserCopyWith<_LegacyUser> get copyWith => __$LegacyUserCopyWithImpl<_LegacyUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegacyUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegacyUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'LegacyUser(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$LegacyUserCopyWith<$Res> implements $LegacyUserCopyWith<$Res> {
  factory _$LegacyUserCopyWith(_LegacyUser value, $Res Function(_LegacyUser) _then) = __$LegacyUserCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? email
});




}
/// @nodoc
class __$LegacyUserCopyWithImpl<$Res>
    implements _$LegacyUserCopyWith<$Res> {
  __$LegacyUserCopyWithImpl(this._self, this._then);

  final _LegacyUser _self;
  final $Res Function(_LegacyUser) _then;

/// Create a copy of LegacyUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_LegacyUser(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PostModel {

 String get id; String get title; String get content; String get authorId; PostStatus get status; DateTime get createdAt; int get viewCount; int get likeCount; String? get excerpt; User? get author; List<String>? get tags; List<Category>? get categories; DateTime? get publishedAt; dynamic get metadata; DateTime? get updatedAt;
/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostModelCopyWith<PostModel> get copyWith => _$PostModelCopyWithImpl<PostModel>(this as PostModel, _$identity);

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.excerpt, excerpt) || other.excerpt == excerpt)&&(identical(other.author, author) || other.author == author)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,authorId,status,createdAt,viewCount,likeCount,excerpt,author,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(categories),publishedAt,const DeepCollectionEquality().hash(metadata),updatedAt);

@override
String toString() {
  return 'PostModel(id: $id, title: $title, content: $content, authorId: $authorId, status: $status, createdAt: $createdAt, viewCount: $viewCount, likeCount: $likeCount, excerpt: $excerpt, author: $author, tags: $tags, categories: $categories, publishedAt: $publishedAt, metadata: $metadata, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PostModelCopyWith<$Res>  {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) _then) = _$PostModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content, String authorId, PostStatus status, DateTime createdAt, int viewCount, int likeCount, String? excerpt, User? author, List<String>? tags, List<Category>? categories, DateTime? publishedAt, dynamic metadata, DateTime? updatedAt
});


$UserCopyWith<$Res>? get author;

}
/// @nodoc
class _$PostModelCopyWithImpl<$Res>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._self, this._then);

  final PostModel _self;
  final $Res Function(PostModel) _then;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? authorId = null,Object? status = null,Object? createdAt = null,Object? viewCount = null,Object? likeCount = null,Object? excerpt = freezed,Object? author = freezed,Object? tags = freezed,Object? categories = freezed,Object? publishedAt = freezed,Object? metadata = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,excerpt: freezed == excerpt ? _self.excerpt : excerpt // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostModel].
extension PostModelPatterns on PostModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostModel value)  $default,){
final _that = this;
switch (_that) {
case _PostModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String content,  String authorId,  PostStatus status,  DateTime createdAt,  int viewCount,  int likeCount,  String? excerpt,  User? author,  List<String>? tags,  List<Category>? categories,  DateTime? publishedAt,  dynamic metadata,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostModel() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.status,_that.createdAt,_that.viewCount,_that.likeCount,_that.excerpt,_that.author,_that.tags,_that.categories,_that.publishedAt,_that.metadata,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String content,  String authorId,  PostStatus status,  DateTime createdAt,  int viewCount,  int likeCount,  String? excerpt,  User? author,  List<String>? tags,  List<Category>? categories,  DateTime? publishedAt,  dynamic metadata,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PostModel():
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.status,_that.createdAt,_that.viewCount,_that.likeCount,_that.excerpt,_that.author,_that.tags,_that.categories,_that.publishedAt,_that.metadata,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String content,  String authorId,  PostStatus status,  DateTime createdAt,  int viewCount,  int likeCount,  String? excerpt,  User? author,  List<String>? tags,  List<Category>? categories,  DateTime? publishedAt,  dynamic metadata,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PostModel() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.status,_that.createdAt,_that.viewCount,_that.likeCount,_that.excerpt,_that.author,_that.tags,_that.categories,_that.publishedAt,_that.metadata,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostModel implements PostModel {
  const _PostModel({required this.id, required this.title, required this.content, required this.authorId, required this.status, required this.createdAt, this.viewCount = 0, this.likeCount = 0, this.excerpt, this.author, final  List<String>? tags, final  List<Category>? categories, this.publishedAt, this.metadata, this.updatedAt}): _tags = tags,_categories = categories;
  factory _PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String content;
@override final  String authorId;
@override final  PostStatus status;
@override final  DateTime createdAt;
@override@JsonKey() final  int viewCount;
@override@JsonKey() final  int likeCount;
@override final  String? excerpt;
@override final  User? author;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Category>? _categories;
@override List<Category>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? publishedAt;
@override final  dynamic metadata;
@override final  DateTime? updatedAt;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostModelCopyWith<_PostModel> get copyWith => __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.excerpt, excerpt) || other.excerpt == excerpt)&&(identical(other.author, author) || other.author == author)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,authorId,status,createdAt,viewCount,likeCount,excerpt,author,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_categories),publishedAt,const DeepCollectionEquality().hash(metadata),updatedAt);

@override
String toString() {
  return 'PostModel(id: $id, title: $title, content: $content, authorId: $authorId, status: $status, createdAt: $createdAt, viewCount: $viewCount, likeCount: $likeCount, excerpt: $excerpt, author: $author, tags: $tags, categories: $categories, publishedAt: $publishedAt, metadata: $metadata, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(_PostModel value, $Res Function(_PostModel) _then) = __$PostModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content, String authorId, PostStatus status, DateTime createdAt, int viewCount, int likeCount, String? excerpt, User? author, List<String>? tags, List<Category>? categories, DateTime? publishedAt, dynamic metadata, DateTime? updatedAt
});


@override $UserCopyWith<$Res>? get author;

}
/// @nodoc
class __$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(this._self, this._then);

  final _PostModel _self;
  final $Res Function(_PostModel) _then;

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? authorId = null,Object? status = null,Object? createdAt = null,Object? viewCount = null,Object? likeCount = null,Object? excerpt = freezed,Object? author = freezed,Object? tags = freezed,Object? categories = freezed,Object? publishedAt = freezed,Object? metadata = freezed,Object? updatedAt = freezed,}) {
  return _then(_PostModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,excerpt: freezed == excerpt ? _self.excerpt : excerpt // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of PostModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// @nodoc
mixin _$Category {

 String get id; String get name; String? get slug;/// Circular reference for nested categories
 Category? get parent;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parent, parent) || other.parent == parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,parent);

@override
String toString() {
  return 'Category(id: $id, name: $name, slug: $slug, parent: $parent)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug, Category? parent
});


$CategoryCopyWith<$Res>? get parent;

}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? parent = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Category?,
  ));
}
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  Category? parent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  Category? parent)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name,_that.slug,_that.parent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug,  Category? parent)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({required this.id, required this.name, this.slug, this.parent});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? slug;
/// Circular reference for nested categories
@override final  Category? parent;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parent, parent) || other.parent == parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,parent);

@override
String toString() {
  return 'Category(id: $id, name: $name, slug: $slug, parent: $parent)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug, Category? parent
});


@override $CategoryCopyWith<$Res>? get parent;

}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? parent = freezed,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Category?,
  ));
}

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$Comment {

 String get id; String get content; String get authorId; DateTime get createdAt; int get depth; int get likeCount; User? get author; String? get postId;/// Parent comment ID (for nested replies)
 String? get parentId;/// Circular reference to parent comment
 Comment? get parent;/// Nested replies (circular)
 List<Comment>? get replies; DateTime? get updatedAt; DateTime? get deletedAt;
/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentCopyWith<Comment> get copyWith => _$CommentCopyWithImpl<Comment>(this as Comment, _$identity);

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Comment&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.depth, depth) || other.depth == depth)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.author, author) || other.author == author)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other.replies, replies)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,authorId,createdAt,depth,likeCount,author,postId,parentId,parent,const DeepCollectionEquality().hash(replies),updatedAt,deletedAt);

@override
String toString() {
  return 'Comment(id: $id, content: $content, authorId: $authorId, createdAt: $createdAt, depth: $depth, likeCount: $likeCount, author: $author, postId: $postId, parentId: $parentId, parent: $parent, replies: $replies, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $CommentCopyWith<$Res>  {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) _then) = _$CommentCopyWithImpl;
@useResult
$Res call({
 String id, String content, String authorId, DateTime createdAt, int depth, int likeCount, User? author, String? postId, String? parentId, Comment? parent, List<Comment>? replies, DateTime? updatedAt, DateTime? deletedAt
});


$UserCopyWith<$Res>? get author;$CommentCopyWith<$Res>? get parent;

}
/// @nodoc
class _$CommentCopyWithImpl<$Res>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._self, this._then);

  final Comment _self;
  final $Res Function(Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? authorId = null,Object? createdAt = null,Object? depth = null,Object? likeCount = null,Object? author = freezed,Object? postId = freezed,Object? parentId = freezed,Object? parent = freezed,Object? replies = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Comment?,replies: freezed == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<Comment>?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CommentCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [Comment].
extension CommentPatterns on Comment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Comment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Comment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Comment value)  $default,){
final _that = this;
switch (_that) {
case _Comment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Comment value)?  $default,){
final _that = this;
switch (_that) {
case _Comment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String content,  String authorId,  DateTime createdAt,  int depth,  int likeCount,  User? author,  String? postId,  String? parentId,  Comment? parent,  List<Comment>? replies,  DateTime? updatedAt,  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Comment() when $default != null:
return $default(_that.id,_that.content,_that.authorId,_that.createdAt,_that.depth,_that.likeCount,_that.author,_that.postId,_that.parentId,_that.parent,_that.replies,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String content,  String authorId,  DateTime createdAt,  int depth,  int likeCount,  User? author,  String? postId,  String? parentId,  Comment? parent,  List<Comment>? replies,  DateTime? updatedAt,  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _Comment():
return $default(_that.id,_that.content,_that.authorId,_that.createdAt,_that.depth,_that.likeCount,_that.author,_that.postId,_that.parentId,_that.parent,_that.replies,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String content,  String authorId,  DateTime createdAt,  int depth,  int likeCount,  User? author,  String? postId,  String? parentId,  Comment? parent,  List<Comment>? replies,  DateTime? updatedAt,  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _Comment() when $default != null:
return $default(_that.id,_that.content,_that.authorId,_that.createdAt,_that.depth,_that.likeCount,_that.author,_that.postId,_that.parentId,_that.parent,_that.replies,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Comment implements Comment {
  const _Comment({required this.id, required this.content, required this.authorId, required this.createdAt, this.depth = 0, this.likeCount = 0, this.author, this.postId, this.parentId, this.parent, final  List<Comment>? replies, this.updatedAt, this.deletedAt}): _replies = replies;
  factory _Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

@override final  String id;
@override final  String content;
@override final  String authorId;
@override final  DateTime createdAt;
@override@JsonKey() final  int depth;
@override@JsonKey() final  int likeCount;
@override final  User? author;
@override final  String? postId;
/// Parent comment ID (for nested replies)
@override final  String? parentId;
/// Circular reference to parent comment
@override final  Comment? parent;
/// Nested replies (circular)
 final  List<Comment>? _replies;
/// Nested replies (circular)
@override List<Comment>? get replies {
  final value = _replies;
  if (value == null) return null;
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? updatedAt;
@override final  DateTime? deletedAt;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentCopyWith<_Comment> get copyWith => __$CommentCopyWithImpl<_Comment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Comment&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.depth, depth) || other.depth == depth)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.author, author) || other.author == author)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,authorId,createdAt,depth,likeCount,author,postId,parentId,parent,const DeepCollectionEquality().hash(_replies),updatedAt,deletedAt);

@override
String toString() {
  return 'Comment(id: $id, content: $content, authorId: $authorId, createdAt: $createdAt, depth: $depth, likeCount: $likeCount, author: $author, postId: $postId, parentId: $parentId, parent: $parent, replies: $replies, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) _then) = __$CommentCopyWithImpl;
@override @useResult
$Res call({
 String id, String content, String authorId, DateTime createdAt, int depth, int likeCount, User? author, String? postId, String? parentId, Comment? parent, List<Comment>? replies, DateTime? updatedAt, DateTime? deletedAt
});


@override $UserCopyWith<$Res>? get author;@override $CommentCopyWith<$Res>? get parent;

}
/// @nodoc
class __$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(this._self, this._then);

  final _Comment _self;
  final $Res Function(_Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? authorId = null,Object? createdAt = null,Object? depth = null,Object? likeCount = null,Object? author = freezed,Object? postId = freezed,Object? parentId = freezed,Object? parent = freezed,Object? replies = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_Comment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User?,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Comment?,replies: freezed == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<Comment>?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CommentCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$CreateCommentRequest {

 String get content; String get authorId; String? get postId; String? get parentId;
/// Create a copy of CreateCommentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCommentRequestCopyWith<CreateCommentRequest> get copyWith => _$CreateCommentRequestCopyWithImpl<CreateCommentRequest>(this as CreateCommentRequest, _$identity);

  /// Serializes this CreateCommentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCommentRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,authorId,postId,parentId);

@override
String toString() {
  return 'CreateCommentRequest(content: $content, authorId: $authorId, postId: $postId, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $CreateCommentRequestCopyWith<$Res>  {
  factory $CreateCommentRequestCopyWith(CreateCommentRequest value, $Res Function(CreateCommentRequest) _then) = _$CreateCommentRequestCopyWithImpl;
@useResult
$Res call({
 String content, String authorId, String? postId, String? parentId
});




}
/// @nodoc
class _$CreateCommentRequestCopyWithImpl<$Res>
    implements $CreateCommentRequestCopyWith<$Res> {
  _$CreateCommentRequestCopyWithImpl(this._self, this._then);

  final CreateCommentRequest _self;
  final $Res Function(CreateCommentRequest) _then;

/// Create a copy of CreateCommentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? authorId = null,Object? postId = freezed,Object? parentId = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCommentRequest].
extension CreateCommentRequestPatterns on CreateCommentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCommentRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCommentRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCommentRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateCommentRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCommentRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCommentRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  String authorId,  String? postId,  String? parentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCommentRequest() when $default != null:
return $default(_that.content,_that.authorId,_that.postId,_that.parentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  String authorId,  String? postId,  String? parentId)  $default,) {final _that = this;
switch (_that) {
case _CreateCommentRequest():
return $default(_that.content,_that.authorId,_that.postId,_that.parentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  String authorId,  String? postId,  String? parentId)?  $default,) {final _that = this;
switch (_that) {
case _CreateCommentRequest() when $default != null:
return $default(_that.content,_that.authorId,_that.postId,_that.parentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCommentRequest implements CreateCommentRequest {
  const _CreateCommentRequest({required this.content, required this.authorId, this.postId, this.parentId});
  factory _CreateCommentRequest.fromJson(Map<String, dynamic> json) => _$CreateCommentRequestFromJson(json);

@override final  String content;
@override final  String authorId;
@override final  String? postId;
@override final  String? parentId;

/// Create a copy of CreateCommentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCommentRequestCopyWith<_CreateCommentRequest> get copyWith => __$CreateCommentRequestCopyWithImpl<_CreateCommentRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCommentRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCommentRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,authorId,postId,parentId);

@override
String toString() {
  return 'CreateCommentRequest(content: $content, authorId: $authorId, postId: $postId, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class _$CreateCommentRequestCopyWith<$Res> implements $CreateCommentRequestCopyWith<$Res> {
  factory _$CreateCommentRequestCopyWith(_CreateCommentRequest value, $Res Function(_CreateCommentRequest) _then) = __$CreateCommentRequestCopyWithImpl;
@override @useResult
$Res call({
 String content, String authorId, String? postId, String? parentId
});




}
/// @nodoc
class __$CreateCommentRequestCopyWithImpl<$Res>
    implements _$CreateCommentRequestCopyWith<$Res> {
  __$CreateCommentRequestCopyWithImpl(this._self, this._then);

  final _CreateCommentRequest _self;
  final $Res Function(_CreateCommentRequest) _then;

/// Create a copy of CreateCommentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? authorId = null,Object? postId = freezed,Object? parentId = freezed,}) {
  return _then(_CreateCommentRequest(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FileMetadata {

 String? get filename; String? get mimeType; int? get size; List<String>? get tags;
/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileMetadataCopyWith<FileMetadata> get copyWith => _$FileMetadataCopyWithImpl<FileMetadata>(this as FileMetadata, _$identity);

  /// Serializes this FileMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileMetadata&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.size, size) || other.size == size)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filename,mimeType,size,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'FileMetadata(filename: $filename, mimeType: $mimeType, size: $size, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $FileMetadataCopyWith<$Res>  {
  factory $FileMetadataCopyWith(FileMetadata value, $Res Function(FileMetadata) _then) = _$FileMetadataCopyWithImpl;
@useResult
$Res call({
 String? filename, String? mimeType, int? size, List<String>? tags
});




}
/// @nodoc
class _$FileMetadataCopyWithImpl<$Res>
    implements $FileMetadataCopyWith<$Res> {
  _$FileMetadataCopyWithImpl(this._self, this._then);

  final FileMetadata _self;
  final $Res Function(FileMetadata) _then;

/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filename = freezed,Object? mimeType = freezed,Object? size = freezed,Object? tags = freezed,}) {
  return _then(_self.copyWith(
filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FileMetadata].
extension FileMetadataPatterns on FileMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileMetadata value)  $default,){
final _that = this;
switch (_that) {
case _FileMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? filename,  String? mimeType,  int? size,  List<String>? tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
return $default(_that.filename,_that.mimeType,_that.size,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? filename,  String? mimeType,  int? size,  List<String>? tags)  $default,) {final _that = this;
switch (_that) {
case _FileMetadata():
return $default(_that.filename,_that.mimeType,_that.size,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? filename,  String? mimeType,  int? size,  List<String>? tags)?  $default,) {final _that = this;
switch (_that) {
case _FileMetadata() when $default != null:
return $default(_that.filename,_that.mimeType,_that.size,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileMetadata implements FileMetadata {
  const _FileMetadata({this.filename, this.mimeType, this.size, final  List<String>? tags}): _tags = tags;
  factory _FileMetadata.fromJson(Map<String, dynamic> json) => _$FileMetadataFromJson(json);

@override final  String? filename;
@override final  String? mimeType;
@override final  int? size;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileMetadataCopyWith<_FileMetadata> get copyWith => __$FileMetadataCopyWithImpl<_FileMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileMetadata&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.size, size) || other.size == size)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filename,mimeType,size,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'FileMetadata(filename: $filename, mimeType: $mimeType, size: $size, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$FileMetadataCopyWith<$Res> implements $FileMetadataCopyWith<$Res> {
  factory _$FileMetadataCopyWith(_FileMetadata value, $Res Function(_FileMetadata) _then) = __$FileMetadataCopyWithImpl;
@override @useResult
$Res call({
 String? filename, String? mimeType, int? size, List<String>? tags
});




}
/// @nodoc
class __$FileMetadataCopyWithImpl<$Res>
    implements _$FileMetadataCopyWith<$Res> {
  __$FileMetadataCopyWithImpl(this._self, this._then);

  final _FileMetadata _self;
  final $Res Function(_FileMetadata) _then;

/// Create a copy of FileMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filename = freezed,Object? mimeType = freezed,Object? size = freezed,Object? tags = freezed,}) {
  return _then(_FileMetadata(
filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$FileUploadResponse {

 String get id; String get url; String get filename; int get size; String? get mimeType; DateTime? get uploadedAt;
/// Create a copy of FileUploadResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileUploadResponseCopyWith<FileUploadResponse> get copyWith => _$FileUploadResponseCopyWithImpl<FileUploadResponse>(this as FileUploadResponse, _$identity);

  /// Serializes this FileUploadResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileUploadResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.size, size) || other.size == size)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,filename,size,mimeType,uploadedAt);

@override
String toString() {
  return 'FileUploadResponse(id: $id, url: $url, filename: $filename, size: $size, mimeType: $mimeType, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $FileUploadResponseCopyWith<$Res>  {
  factory $FileUploadResponseCopyWith(FileUploadResponse value, $Res Function(FileUploadResponse) _then) = _$FileUploadResponseCopyWithImpl;
@useResult
$Res call({
 String id, String url, String filename, int size, String? mimeType, DateTime? uploadedAt
});




}
/// @nodoc
class _$FileUploadResponseCopyWithImpl<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  _$FileUploadResponseCopyWithImpl(this._self, this._then);

  final FileUploadResponse _self;
  final $Res Function(FileUploadResponse) _then;

/// Create a copy of FileUploadResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? filename = null,Object? size = null,Object? mimeType = freezed,Object? uploadedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FileUploadResponse].
extension FileUploadResponsePatterns on FileUploadResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileUploadResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileUploadResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileUploadResponse value)  $default,){
final _that = this;
switch (_that) {
case _FileUploadResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileUploadResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FileUploadResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url,  String filename,  int size,  String? mimeType,  DateTime? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileUploadResponse() when $default != null:
return $default(_that.id,_that.url,_that.filename,_that.size,_that.mimeType,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url,  String filename,  int size,  String? mimeType,  DateTime? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _FileUploadResponse():
return $default(_that.id,_that.url,_that.filename,_that.size,_that.mimeType,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url,  String filename,  int size,  String? mimeType,  DateTime? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _FileUploadResponse() when $default != null:
return $default(_that.id,_that.url,_that.filename,_that.size,_that.mimeType,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileUploadResponse implements FileUploadResponse {
  const _FileUploadResponse({required this.id, required this.url, required this.filename, required this.size, this.mimeType, this.uploadedAt});
  factory _FileUploadResponse.fromJson(Map<String, dynamic> json) => _$FileUploadResponseFromJson(json);

@override final  String id;
@override final  String url;
@override final  String filename;
@override final  int size;
@override final  String? mimeType;
@override final  DateTime? uploadedAt;

/// Create a copy of FileUploadResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileUploadResponseCopyWith<_FileUploadResponse> get copyWith => __$FileUploadResponseCopyWithImpl<_FileUploadResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileUploadResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileUploadResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.size, size) || other.size == size)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,filename,size,mimeType,uploadedAt);

@override
String toString() {
  return 'FileUploadResponse(id: $id, url: $url, filename: $filename, size: $size, mimeType: $mimeType, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$FileUploadResponseCopyWith<$Res> implements $FileUploadResponseCopyWith<$Res> {
  factory _$FileUploadResponseCopyWith(_FileUploadResponse value, $Res Function(_FileUploadResponse) _then) = __$FileUploadResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String filename, int size, String? mimeType, DateTime? uploadedAt
});




}
/// @nodoc
class __$FileUploadResponseCopyWithImpl<$Res>
    implements _$FileUploadResponseCopyWith<$Res> {
  __$FileUploadResponseCopyWithImpl(this._self, this._then);

  final _FileUploadResponse _self;
  final $Res Function(_FileUploadResponse) _then;

/// Create a copy of FileUploadResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? filename = null,Object? size = null,Object? mimeType = freezed,Object? uploadedAt = freezed,}) {
  return _then(_FileUploadResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

PaymentRequest _$PaymentRequestFromJson(
  Map<String, dynamic> json
) {
        switch (json['paymentType']) {
                  case 'credit_card':
          return PaymentRequestCreditCard.fromJson(
            json
          );
                case 'bank_transfer':
          return PaymentRequestBankTransfer.fromJson(
            json
          );
                case 'crypto':
          return PaymentRequestCrypto.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'paymentType',
  'PaymentRequest',
  'Invalid union type "${json['paymentType']}"!'
);
        }
      
}

/// @nodoc
mixin _$PaymentRequest {

 double get amount;
/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestCopyWith<PaymentRequest> get copyWith => _$PaymentRequestCopyWithImpl<PaymentRequest>(this as PaymentRequest, _$identity);

  /// Serializes this PaymentRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequest&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'PaymentRequest(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestCopyWith<$Res>  {
  factory $PaymentRequestCopyWith(PaymentRequest value, $Res Function(PaymentRequest) _then) = _$PaymentRequestCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class _$PaymentRequestCopyWithImpl<$Res>
    implements $PaymentRequestCopyWith<$Res> {
  _$PaymentRequestCopyWithImpl(this._self, this._then);

  final PaymentRequest _self;
  final $Res Function(PaymentRequest) _then;

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentRequest].
extension PaymentRequestPatterns on PaymentRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentRequestCreditCard value)?  creditCard,TResult Function( PaymentRequestBankTransfer value)?  bankTransfer,TResult Function( PaymentRequestCrypto value)?  crypto,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentRequestCreditCard() when creditCard != null:
return creditCard(_that);case PaymentRequestBankTransfer() when bankTransfer != null:
return bankTransfer(_that);case PaymentRequestCrypto() when crypto != null:
return crypto(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentRequestCreditCard value)  creditCard,required TResult Function( PaymentRequestBankTransfer value)  bankTransfer,required TResult Function( PaymentRequestCrypto value)  crypto,}){
final _that = this;
switch (_that) {
case PaymentRequestCreditCard():
return creditCard(_that);case PaymentRequestBankTransfer():
return bankTransfer(_that);case PaymentRequestCrypto():
return crypto(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentRequestCreditCard value)?  creditCard,TResult? Function( PaymentRequestBankTransfer value)?  bankTransfer,TResult? Function( PaymentRequestCrypto value)?  crypto,}){
final _that = this;
switch (_that) {
case PaymentRequestCreditCard() when creditCard != null:
return creditCard(_that);case PaymentRequestBankTransfer() when bankTransfer != null:
return bankTransfer(_that);case PaymentRequestCrypto() when crypto != null:
return crypto(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  creditCard,TResult Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  bankTransfer,TResult Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  crypto,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentRequestCreditCard() when creditCard != null:
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentRequestBankTransfer() when bankTransfer != null:
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentRequestCrypto() when crypto != null:
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)  creditCard,required TResult Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)  bankTransfer,required TResult Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)  crypto,}) {final _that = this;
switch (_that) {
case PaymentRequestCreditCard():
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentRequestBankTransfer():
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentRequestCrypto():
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  creditCard,TResult? Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  bankTransfer,TResult? Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  crypto,}) {final _that = this;
switch (_that) {
case PaymentRequestCreditCard() when creditCard != null:
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentRequestBankTransfer() when bankTransfer != null:
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentRequestCrypto() when crypto != null:
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PaymentRequestCreditCard implements PaymentRequest {
  const PaymentRequestCreditCard({required this.cardNumber, required this.expiryMonth, required this.expiryYear, required this.cvv, required this.amount, this.cardholderName, final  String? $type}): $type = $type ?? 'credit_card';
  factory PaymentRequestCreditCard.fromJson(Map<String, dynamic> json) => _$PaymentRequestCreditCardFromJson(json);

 final  String cardNumber;
 final  int expiryMonth;
 final  int expiryYear;
 final  String cvv;
@override final  double amount;
 final  String? cardholderName;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestCreditCardCopyWith<PaymentRequestCreditCard> get copyWith => _$PaymentRequestCreditCardCopyWithImpl<PaymentRequestCreditCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRequestCreditCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestCreditCard&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expiryMonth,expiryYear,cvv,amount,cardholderName);

@override
String toString() {
  return 'PaymentRequest.creditCard(cardNumber: $cardNumber, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cvv: $cvv, amount: $amount, cardholderName: $cardholderName)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestCreditCardCopyWith<$Res> implements $PaymentRequestCopyWith<$Res> {
  factory $PaymentRequestCreditCardCopyWith(PaymentRequestCreditCard value, $Res Function(PaymentRequestCreditCard) _then) = _$PaymentRequestCreditCardCopyWithImpl;
@override @useResult
$Res call({
 String cardNumber, int expiryMonth, int expiryYear, String cvv, double amount, String? cardholderName
});




}
/// @nodoc
class _$PaymentRequestCreditCardCopyWithImpl<$Res>
    implements $PaymentRequestCreditCardCopyWith<$Res> {
  _$PaymentRequestCreditCardCopyWithImpl(this._self, this._then);

  final PaymentRequestCreditCard _self;
  final $Res Function(PaymentRequestCreditCard) _then;

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expiryMonth = null,Object? expiryYear = null,Object? cvv = null,Object? amount = null,Object? cardholderName = freezed,}) {
  return _then(PaymentRequestCreditCard(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryMonth: null == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int,expiryYear: null == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PaymentRequestBankTransfer implements PaymentRequest {
  const PaymentRequestBankTransfer({required this.accountNumber, required this.routingNumber, required this.amount, this.accountHolder, this.reference, final  String? $type}): $type = $type ?? 'bank_transfer';
  factory PaymentRequestBankTransfer.fromJson(Map<String, dynamic> json) => _$PaymentRequestBankTransferFromJson(json);

 final  String accountNumber;
 final  String routingNumber;
@override final  double amount;
 final  String? accountHolder;
 final  String? reference;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestBankTransferCopyWith<PaymentRequestBankTransfer> get copyWith => _$PaymentRequestBankTransferCopyWithImpl<PaymentRequestBankTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRequestBankTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestBankTransfer&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.routingNumber, routingNumber) || other.routingNumber == routingNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,routingNumber,amount,accountHolder,reference);

@override
String toString() {
  return 'PaymentRequest.bankTransfer(accountNumber: $accountNumber, routingNumber: $routingNumber, amount: $amount, accountHolder: $accountHolder, reference: $reference)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestBankTransferCopyWith<$Res> implements $PaymentRequestCopyWith<$Res> {
  factory $PaymentRequestBankTransferCopyWith(PaymentRequestBankTransfer value, $Res Function(PaymentRequestBankTransfer) _then) = _$PaymentRequestBankTransferCopyWithImpl;
@override @useResult
$Res call({
 String accountNumber, String routingNumber, double amount, String? accountHolder, String? reference
});




}
/// @nodoc
class _$PaymentRequestBankTransferCopyWithImpl<$Res>
    implements $PaymentRequestBankTransferCopyWith<$Res> {
  _$PaymentRequestBankTransferCopyWithImpl(this._self, this._then);

  final PaymentRequestBankTransfer _self;
  final $Res Function(PaymentRequestBankTransfer) _then;

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? routingNumber = null,Object? amount = null,Object? accountHolder = freezed,Object? reference = freezed,}) {
  return _then(PaymentRequestBankTransfer(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,routingNumber: null == routingNumber ? _self.routingNumber : routingNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,accountHolder: freezed == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PaymentRequestCrypto implements PaymentRequest {
  const PaymentRequestCrypto({required this.walletAddress, required this.cryptocurrency, required this.amount, this.transactionHash, final  String? $type}): $type = $type ?? 'crypto';
  factory PaymentRequestCrypto.fromJson(Map<String, dynamic> json) => _$PaymentRequestCryptoFromJson(json);

 final  String walletAddress;
 final  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency;
@override final  double amount;
 final  String? transactionHash;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentRequestCryptoCopyWith<PaymentRequestCrypto> get copyWith => _$PaymentRequestCryptoCopyWithImpl<PaymentRequestCrypto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentRequestCryptoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentRequestCrypto&&(identical(other.walletAddress, walletAddress) || other.walletAddress == walletAddress)&&(identical(other.cryptocurrency, cryptocurrency) || other.cryptocurrency == cryptocurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionHash, transactionHash) || other.transactionHash == transactionHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,walletAddress,cryptocurrency,amount,transactionHash);

@override
String toString() {
  return 'PaymentRequest.crypto(walletAddress: $walletAddress, cryptocurrency: $cryptocurrency, amount: $amount, transactionHash: $transactionHash)';
}


}

/// @nodoc
abstract mixin class $PaymentRequestCryptoCopyWith<$Res> implements $PaymentRequestCopyWith<$Res> {
  factory $PaymentRequestCryptoCopyWith(PaymentRequestCrypto value, $Res Function(PaymentRequestCrypto) _then) = _$PaymentRequestCryptoCopyWithImpl;
@override @useResult
$Res call({
 String walletAddress, CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency, double amount, String? transactionHash
});




}
/// @nodoc
class _$PaymentRequestCryptoCopyWithImpl<$Res>
    implements $PaymentRequestCryptoCopyWith<$Res> {
  _$PaymentRequestCryptoCopyWithImpl(this._self, this._then);

  final PaymentRequestCrypto _self;
  final $Res Function(PaymentRequestCrypto) _then;

/// Create a copy of PaymentRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? walletAddress = null,Object? cryptocurrency = null,Object? amount = null,Object? transactionHash = freezed,}) {
  return _then(PaymentRequestCrypto(
walletAddress: null == walletAddress ? _self.walletAddress : walletAddress // ignore: cast_nullable_to_non_nullable
as String,cryptocurrency: null == cryptocurrency ? _self.cryptocurrency : cryptocurrency // ignore: cast_nullable_to_non_nullable
as CryptoPaymentCryptocurrencyCryptocurrency,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transactionHash: freezed == transactionHash ? _self.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreditCardPayment {

 CreditCardPaymentPaymentTypePaymentType get paymentType; String get cardNumber; int get expiryMonth; int get expiryYear; String get cvv; double get amount; String? get cardholderName;
/// Create a copy of CreditCardPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditCardPaymentCopyWith<CreditCardPayment> get copyWith => _$CreditCardPaymentCopyWithImpl<CreditCardPayment>(this as CreditCardPayment, _$identity);

  /// Serializes this CreditCardPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditCardPayment&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentType,cardNumber,expiryMonth,expiryYear,cvv,amount,cardholderName);

@override
String toString() {
  return 'CreditCardPayment(paymentType: $paymentType, cardNumber: $cardNumber, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cvv: $cvv, amount: $amount, cardholderName: $cardholderName)';
}


}

/// @nodoc
abstract mixin class $CreditCardPaymentCopyWith<$Res>  {
  factory $CreditCardPaymentCopyWith(CreditCardPayment value, $Res Function(CreditCardPayment) _then) = _$CreditCardPaymentCopyWithImpl;
@useResult
$Res call({
 CreditCardPaymentPaymentTypePaymentType paymentType, String cardNumber, int expiryMonth, int expiryYear, String cvv, double amount, String? cardholderName
});




}
/// @nodoc
class _$CreditCardPaymentCopyWithImpl<$Res>
    implements $CreditCardPaymentCopyWith<$Res> {
  _$CreditCardPaymentCopyWithImpl(this._self, this._then);

  final CreditCardPayment _self;
  final $Res Function(CreditCardPayment) _then;

/// Create a copy of CreditCardPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentType = null,Object? cardNumber = null,Object? expiryMonth = null,Object? expiryYear = null,Object? cvv = null,Object? amount = null,Object? cardholderName = freezed,}) {
  return _then(_self.copyWith(
paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as CreditCardPaymentPaymentTypePaymentType,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryMonth: null == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int,expiryYear: null == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditCardPayment].
extension CreditCardPaymentPatterns on CreditCardPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditCardPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditCardPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditCardPayment value)  $default,){
final _that = this;
switch (_that) {
case _CreditCardPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditCardPayment value)?  $default,){
final _that = this;
switch (_that) {
case _CreditCardPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreditCardPaymentPaymentTypePaymentType paymentType,  String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditCardPayment() when $default != null:
return $default(_that.paymentType,_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreditCardPaymentPaymentTypePaymentType paymentType,  String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)  $default,) {final _that = this;
switch (_that) {
case _CreditCardPayment():
return $default(_that.paymentType,_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreditCardPaymentPaymentTypePaymentType paymentType,  String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  $default,) {final _that = this;
switch (_that) {
case _CreditCardPayment() when $default != null:
return $default(_that.paymentType,_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreditCardPayment implements CreditCardPayment {
  const _CreditCardPayment({required this.paymentType, required this.cardNumber, required this.expiryMonth, required this.expiryYear, required this.cvv, required this.amount, this.cardholderName});
  factory _CreditCardPayment.fromJson(Map<String, dynamic> json) => _$CreditCardPaymentFromJson(json);

@override final  CreditCardPaymentPaymentTypePaymentType paymentType;
@override final  String cardNumber;
@override final  int expiryMonth;
@override final  int expiryYear;
@override final  String cvv;
@override final  double amount;
@override final  String? cardholderName;

/// Create a copy of CreditCardPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditCardPaymentCopyWith<_CreditCardPayment> get copyWith => __$CreditCardPaymentCopyWithImpl<_CreditCardPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreditCardPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditCardPayment&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentType,cardNumber,expiryMonth,expiryYear,cvv,amount,cardholderName);

@override
String toString() {
  return 'CreditCardPayment(paymentType: $paymentType, cardNumber: $cardNumber, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cvv: $cvv, amount: $amount, cardholderName: $cardholderName)';
}


}

/// @nodoc
abstract mixin class _$CreditCardPaymentCopyWith<$Res> implements $CreditCardPaymentCopyWith<$Res> {
  factory _$CreditCardPaymentCopyWith(_CreditCardPayment value, $Res Function(_CreditCardPayment) _then) = __$CreditCardPaymentCopyWithImpl;
@override @useResult
$Res call({
 CreditCardPaymentPaymentTypePaymentType paymentType, String cardNumber, int expiryMonth, int expiryYear, String cvv, double amount, String? cardholderName
});




}
/// @nodoc
class __$CreditCardPaymentCopyWithImpl<$Res>
    implements _$CreditCardPaymentCopyWith<$Res> {
  __$CreditCardPaymentCopyWithImpl(this._self, this._then);

  final _CreditCardPayment _self;
  final $Res Function(_CreditCardPayment) _then;

/// Create a copy of CreditCardPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentType = null,Object? cardNumber = null,Object? expiryMonth = null,Object? expiryYear = null,Object? cvv = null,Object? amount = null,Object? cardholderName = freezed,}) {
  return _then(_CreditCardPayment(
paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as CreditCardPaymentPaymentTypePaymentType,cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryMonth: null == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int,expiryYear: null == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BankTransferPayment {

 BankTransferPaymentPaymentTypePaymentType get paymentType; String get accountNumber; String get routingNumber; double get amount; String? get accountHolder; String? get reference;
/// Create a copy of BankTransferPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankTransferPaymentCopyWith<BankTransferPayment> get copyWith => _$BankTransferPaymentCopyWithImpl<BankTransferPayment>(this as BankTransferPayment, _$identity);

  /// Serializes this BankTransferPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankTransferPayment&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.routingNumber, routingNumber) || other.routingNumber == routingNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentType,accountNumber,routingNumber,amount,accountHolder,reference);

@override
String toString() {
  return 'BankTransferPayment(paymentType: $paymentType, accountNumber: $accountNumber, routingNumber: $routingNumber, amount: $amount, accountHolder: $accountHolder, reference: $reference)';
}


}

/// @nodoc
abstract mixin class $BankTransferPaymentCopyWith<$Res>  {
  factory $BankTransferPaymentCopyWith(BankTransferPayment value, $Res Function(BankTransferPayment) _then) = _$BankTransferPaymentCopyWithImpl;
@useResult
$Res call({
 BankTransferPaymentPaymentTypePaymentType paymentType, String accountNumber, String routingNumber, double amount, String? accountHolder, String? reference
});




}
/// @nodoc
class _$BankTransferPaymentCopyWithImpl<$Res>
    implements $BankTransferPaymentCopyWith<$Res> {
  _$BankTransferPaymentCopyWithImpl(this._self, this._then);

  final BankTransferPayment _self;
  final $Res Function(BankTransferPayment) _then;

/// Create a copy of BankTransferPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentType = null,Object? accountNumber = null,Object? routingNumber = null,Object? amount = null,Object? accountHolder = freezed,Object? reference = freezed,}) {
  return _then(_self.copyWith(
paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as BankTransferPaymentPaymentTypePaymentType,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,routingNumber: null == routingNumber ? _self.routingNumber : routingNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,accountHolder: freezed == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BankTransferPayment].
extension BankTransferPaymentPatterns on BankTransferPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankTransferPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankTransferPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankTransferPayment value)  $default,){
final _that = this;
switch (_that) {
case _BankTransferPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankTransferPayment value)?  $default,){
final _that = this;
switch (_that) {
case _BankTransferPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BankTransferPaymentPaymentTypePaymentType paymentType,  String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankTransferPayment() when $default != null:
return $default(_that.paymentType,_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BankTransferPaymentPaymentTypePaymentType paymentType,  String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)  $default,) {final _that = this;
switch (_that) {
case _BankTransferPayment():
return $default(_that.paymentType,_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BankTransferPaymentPaymentTypePaymentType paymentType,  String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  $default,) {final _that = this;
switch (_that) {
case _BankTransferPayment() when $default != null:
return $default(_that.paymentType,_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankTransferPayment implements BankTransferPayment {
  const _BankTransferPayment({required this.paymentType, required this.accountNumber, required this.routingNumber, required this.amount, this.accountHolder, this.reference});
  factory _BankTransferPayment.fromJson(Map<String, dynamic> json) => _$BankTransferPaymentFromJson(json);

@override final  BankTransferPaymentPaymentTypePaymentType paymentType;
@override final  String accountNumber;
@override final  String routingNumber;
@override final  double amount;
@override final  String? accountHolder;
@override final  String? reference;

/// Create a copy of BankTransferPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankTransferPaymentCopyWith<_BankTransferPayment> get copyWith => __$BankTransferPaymentCopyWithImpl<_BankTransferPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankTransferPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankTransferPayment&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.routingNumber, routingNumber) || other.routingNumber == routingNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentType,accountNumber,routingNumber,amount,accountHolder,reference);

@override
String toString() {
  return 'BankTransferPayment(paymentType: $paymentType, accountNumber: $accountNumber, routingNumber: $routingNumber, amount: $amount, accountHolder: $accountHolder, reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$BankTransferPaymentCopyWith<$Res> implements $BankTransferPaymentCopyWith<$Res> {
  factory _$BankTransferPaymentCopyWith(_BankTransferPayment value, $Res Function(_BankTransferPayment) _then) = __$BankTransferPaymentCopyWithImpl;
@override @useResult
$Res call({
 BankTransferPaymentPaymentTypePaymentType paymentType, String accountNumber, String routingNumber, double amount, String? accountHolder, String? reference
});




}
/// @nodoc
class __$BankTransferPaymentCopyWithImpl<$Res>
    implements _$BankTransferPaymentCopyWith<$Res> {
  __$BankTransferPaymentCopyWithImpl(this._self, this._then);

  final _BankTransferPayment _self;
  final $Res Function(_BankTransferPayment) _then;

/// Create a copy of BankTransferPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentType = null,Object? accountNumber = null,Object? routingNumber = null,Object? amount = null,Object? accountHolder = freezed,Object? reference = freezed,}) {
  return _then(_BankTransferPayment(
paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as BankTransferPaymentPaymentTypePaymentType,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,routingNumber: null == routingNumber ? _self.routingNumber : routingNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,accountHolder: freezed == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CryptoPayment {

 CryptoPaymentPaymentTypePaymentType get paymentType; String get walletAddress; CryptoPaymentCryptocurrencyCryptocurrency get cryptocurrency; double get amount; String? get transactionHash;
/// Create a copy of CryptoPayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoPaymentCopyWith<CryptoPayment> get copyWith => _$CryptoPaymentCopyWithImpl<CryptoPayment>(this as CryptoPayment, _$identity);

  /// Serializes this CryptoPayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoPayment&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.walletAddress, walletAddress) || other.walletAddress == walletAddress)&&(identical(other.cryptocurrency, cryptocurrency) || other.cryptocurrency == cryptocurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionHash, transactionHash) || other.transactionHash == transactionHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentType,walletAddress,cryptocurrency,amount,transactionHash);

@override
String toString() {
  return 'CryptoPayment(paymentType: $paymentType, walletAddress: $walletAddress, cryptocurrency: $cryptocurrency, amount: $amount, transactionHash: $transactionHash)';
}


}

/// @nodoc
abstract mixin class $CryptoPaymentCopyWith<$Res>  {
  factory $CryptoPaymentCopyWith(CryptoPayment value, $Res Function(CryptoPayment) _then) = _$CryptoPaymentCopyWithImpl;
@useResult
$Res call({
 CryptoPaymentPaymentTypePaymentType paymentType, String walletAddress, CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency, double amount, String? transactionHash
});




}
/// @nodoc
class _$CryptoPaymentCopyWithImpl<$Res>
    implements $CryptoPaymentCopyWith<$Res> {
  _$CryptoPaymentCopyWithImpl(this._self, this._then);

  final CryptoPayment _self;
  final $Res Function(CryptoPayment) _then;

/// Create a copy of CryptoPayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentType = null,Object? walletAddress = null,Object? cryptocurrency = null,Object? amount = null,Object? transactionHash = freezed,}) {
  return _then(_self.copyWith(
paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as CryptoPaymentPaymentTypePaymentType,walletAddress: null == walletAddress ? _self.walletAddress : walletAddress // ignore: cast_nullable_to_non_nullable
as String,cryptocurrency: null == cryptocurrency ? _self.cryptocurrency : cryptocurrency // ignore: cast_nullable_to_non_nullable
as CryptoPaymentCryptocurrencyCryptocurrency,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transactionHash: freezed == transactionHash ? _self.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CryptoPayment].
extension CryptoPaymentPatterns on CryptoPayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryptoPayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryptoPayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryptoPayment value)  $default,){
final _that = this;
switch (_that) {
case _CryptoPayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryptoPayment value)?  $default,){
final _that = this;
switch (_that) {
case _CryptoPayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CryptoPaymentPaymentTypePaymentType paymentType,  String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryptoPayment() when $default != null:
return $default(_that.paymentType,_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CryptoPaymentPaymentTypePaymentType paymentType,  String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)  $default,) {final _that = this;
switch (_that) {
case _CryptoPayment():
return $default(_that.paymentType,_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CryptoPaymentPaymentTypePaymentType paymentType,  String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  $default,) {final _that = this;
switch (_that) {
case _CryptoPayment() when $default != null:
return $default(_that.paymentType,_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CryptoPayment implements CryptoPayment {
  const _CryptoPayment({required this.paymentType, required this.walletAddress, required this.cryptocurrency, required this.amount, this.transactionHash});
  factory _CryptoPayment.fromJson(Map<String, dynamic> json) => _$CryptoPaymentFromJson(json);

@override final  CryptoPaymentPaymentTypePaymentType paymentType;
@override final  String walletAddress;
@override final  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency;
@override final  double amount;
@override final  String? transactionHash;

/// Create a copy of CryptoPayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoPaymentCopyWith<_CryptoPayment> get copyWith => __$CryptoPaymentCopyWithImpl<_CryptoPayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoPaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoPayment&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.walletAddress, walletAddress) || other.walletAddress == walletAddress)&&(identical(other.cryptocurrency, cryptocurrency) || other.cryptocurrency == cryptocurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionHash, transactionHash) || other.transactionHash == transactionHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentType,walletAddress,cryptocurrency,amount,transactionHash);

@override
String toString() {
  return 'CryptoPayment(paymentType: $paymentType, walletAddress: $walletAddress, cryptocurrency: $cryptocurrency, amount: $amount, transactionHash: $transactionHash)';
}


}

/// @nodoc
abstract mixin class _$CryptoPaymentCopyWith<$Res> implements $CryptoPaymentCopyWith<$Res> {
  factory _$CryptoPaymentCopyWith(_CryptoPayment value, $Res Function(_CryptoPayment) _then) = __$CryptoPaymentCopyWithImpl;
@override @useResult
$Res call({
 CryptoPaymentPaymentTypePaymentType paymentType, String walletAddress, CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency, double amount, String? transactionHash
});




}
/// @nodoc
class __$CryptoPaymentCopyWithImpl<$Res>
    implements _$CryptoPaymentCopyWith<$Res> {
  __$CryptoPaymentCopyWithImpl(this._self, this._then);

  final _CryptoPayment _self;
  final $Res Function(_CryptoPayment) _then;

/// Create a copy of CryptoPayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentType = null,Object? walletAddress = null,Object? cryptocurrency = null,Object? amount = null,Object? transactionHash = freezed,}) {
  return _then(_CryptoPayment(
paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as CryptoPaymentPaymentTypePaymentType,walletAddress: null == walletAddress ? _self.walletAddress : walletAddress // ignore: cast_nullable_to_non_nullable
as String,cryptocurrency: null == cryptocurrency ? _self.cryptocurrency : cryptocurrency // ignore: cast_nullable_to_non_nullable
as CryptoPaymentCryptocurrencyCryptocurrency,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transactionHash: freezed == transactionHash ? _self.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentResponse {

 String get transactionId; PaymentResponseStatusStatus get status; double get amount; DateTime? get processedAt; PaymentResponseDetails? get details; String get currency;
/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseCopyWith<PaymentResponse> get copyWith => _$PaymentResponseCopyWithImpl<PaymentResponse>(this as PaymentResponse, _$identity);

  /// Serializes this PaymentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponse&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.details, details) || other.details == details)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,status,amount,processedAt,details,currency);

@override
String toString() {
  return 'PaymentResponse(transactionId: $transactionId, status: $status, amount: $amount, processedAt: $processedAt, details: $details, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseCopyWith<$Res>  {
  factory $PaymentResponseCopyWith(PaymentResponse value, $Res Function(PaymentResponse) _then) = _$PaymentResponseCopyWithImpl;
@useResult
$Res call({
 String transactionId, PaymentResponseStatusStatus status, double amount, DateTime? processedAt, PaymentResponseDetails? details, String currency
});


$PaymentResponseDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._self, this._then);

  final PaymentResponse _self;
  final $Res Function(PaymentResponse) _then;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? status = null,Object? amount = null,Object? processedAt = freezed,Object? details = freezed,Object? currency = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentResponseStatusStatus,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as PaymentResponseDetails?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentResponseDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $PaymentResponseDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentResponse].
extension PaymentResponsePatterns on PaymentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  PaymentResponseStatusStatus status,  double amount,  DateTime? processedAt,  PaymentResponseDetails? details,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
return $default(_that.transactionId,_that.status,_that.amount,_that.processedAt,_that.details,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  PaymentResponseStatusStatus status,  double amount,  DateTime? processedAt,  PaymentResponseDetails? details,  String currency)  $default,) {final _that = this;
switch (_that) {
case _PaymentResponse():
return $default(_that.transactionId,_that.status,_that.amount,_that.processedAt,_that.details,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  PaymentResponseStatusStatus status,  double amount,  DateTime? processedAt,  PaymentResponseDetails? details,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResponse() when $default != null:
return $default(_that.transactionId,_that.status,_that.amount,_that.processedAt,_that.details,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentResponse implements PaymentResponse {
  const _PaymentResponse({required this.transactionId, required this.status, required this.amount, this.processedAt, this.details, this.currency = 'USD'});
  factory _PaymentResponse.fromJson(Map<String, dynamic> json) => _$PaymentResponseFromJson(json);

@override final  String transactionId;
@override final  PaymentResponseStatusStatus status;
@override final  double amount;
@override final  DateTime? processedAt;
@override final  PaymentResponseDetails? details;
@override@JsonKey() final  String currency;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResponseCopyWith<_PaymentResponse> get copyWith => __$PaymentResponseCopyWithImpl<_PaymentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResponse&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt)&&(identical(other.details, details) || other.details == details)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,status,amount,processedAt,details,currency);

@override
String toString() {
  return 'PaymentResponse(transactionId: $transactionId, status: $status, amount: $amount, processedAt: $processedAt, details: $details, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$PaymentResponseCopyWith<$Res> implements $PaymentResponseCopyWith<$Res> {
  factory _$PaymentResponseCopyWith(_PaymentResponse value, $Res Function(_PaymentResponse) _then) = __$PaymentResponseCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, PaymentResponseStatusStatus status, double amount, DateTime? processedAt, PaymentResponseDetails? details, String currency
});


@override $PaymentResponseDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class __$PaymentResponseCopyWithImpl<$Res>
    implements _$PaymentResponseCopyWith<$Res> {
  __$PaymentResponseCopyWithImpl(this._self, this._then);

  final _PaymentResponse _self;
  final $Res Function(_PaymentResponse) _then;

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? status = null,Object? amount = null,Object? processedAt = freezed,Object? details = freezed,Object? currency = null,}) {
  return _then(_PaymentResponse(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentResponseStatusStatus,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as PaymentResponseDetails?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PaymentResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentResponseDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $PaymentResponseDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

SearchResult _$SearchResultFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'user':
          return SearchResultUser.fromJson(
            json
          );
                case 'post':
          return SearchResultPost.fromJson(
            json
          );
                case 'comment':
          return SearchResultComment.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'SearchResult',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$SearchResult {

 double? get score;
/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultCopyWith<SearchResult> get copyWith => _$SearchResultCopyWithImpl<SearchResult>(this as SearchResult, _$identity);

  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResult&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score);

@override
String toString() {
  return 'SearchResult(score: $score)';
}


}

/// @nodoc
abstract mixin class $SearchResultCopyWith<$Res>  {
  factory $SearchResultCopyWith(SearchResult value, $Res Function(SearchResult) _then) = _$SearchResultCopyWithImpl;
@useResult
$Res call({
 double? score
});




}
/// @nodoc
class _$SearchResultCopyWithImpl<$Res>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._self, this._then);

  final SearchResult _self;
  final $Res Function(SearchResult) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = freezed,}) {
  return _then(_self.copyWith(
score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResult].
extension SearchResultPatterns on SearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchResultUser value)?  user,TResult Function( SearchResultPost value)?  post,TResult Function( SearchResultComment value)?  comment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchResultUser() when user != null:
return user(_that);case SearchResultPost() when post != null:
return post(_that);case SearchResultComment() when comment != null:
return comment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchResultUser value)  user,required TResult Function( SearchResultPost value)  post,required TResult Function( SearchResultComment value)  comment,}){
final _that = this;
switch (_that) {
case SearchResultUser():
return user(_that);case SearchResultPost():
return post(_that);case SearchResultComment():
return comment(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchResultUser value)?  user,TResult? Function( SearchResultPost value)?  post,TResult? Function( SearchResultComment value)?  comment,}){
final _that = this;
switch (_that) {
case SearchResultUser() when user != null:
return user(_that);case SearchResultPost() when post != null:
return post(_that);case SearchResultComment() when comment != null:
return comment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( User user,  double? score)?  user,TResult Function( PostModel post,  double? score,  List<String>? highlights)?  post,TResult Function( Comment comment,  double? score)?  comment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchResultUser() when user != null:
return user(_that.user,_that.score);case SearchResultPost() when post != null:
return post(_that.post,_that.score,_that.highlights);case SearchResultComment() when comment != null:
return comment(_that.comment,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( User user,  double? score)  user,required TResult Function( PostModel post,  double? score,  List<String>? highlights)  post,required TResult Function( Comment comment,  double? score)  comment,}) {final _that = this;
switch (_that) {
case SearchResultUser():
return user(_that.user,_that.score);case SearchResultPost():
return post(_that.post,_that.score,_that.highlights);case SearchResultComment():
return comment(_that.comment,_that.score);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( User user,  double? score)?  user,TResult? Function( PostModel post,  double? score,  List<String>? highlights)?  post,TResult? Function( Comment comment,  double? score)?  comment,}) {final _that = this;
switch (_that) {
case SearchResultUser() when user != null:
return user(_that.user,_that.score);case SearchResultPost() when post != null:
return post(_that.post,_that.score,_that.highlights);case SearchResultComment() when comment != null:
return comment(_that.comment,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class SearchResultUser implements SearchResult {
  const SearchResultUser({required this.user, this.score, final  String? $type}): $type = $type ?? 'user';
  factory SearchResultUser.fromJson(Map<String, dynamic> json) => _$SearchResultUserFromJson(json);

 final  User user;
@override final  double? score;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultUserCopyWith<SearchResultUser> get copyWith => _$SearchResultUserCopyWithImpl<SearchResultUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultUser&&(identical(other.user, user) || other.user == user)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,score);

@override
String toString() {
  return 'SearchResult.user(user: $user, score: $score)';
}


}

/// @nodoc
abstract mixin class $SearchResultUserCopyWith<$Res> implements $SearchResultCopyWith<$Res> {
  factory $SearchResultUserCopyWith(SearchResultUser value, $Res Function(SearchResultUser) _then) = _$SearchResultUserCopyWithImpl;
@override @useResult
$Res call({
 User user, double? score
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$SearchResultUserCopyWithImpl<$Res>
    implements $SearchResultUserCopyWith<$Res> {
  _$SearchResultUserCopyWithImpl(this._self, this._then);

  final SearchResultUser _self;
  final $Res Function(SearchResultUser) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? score = freezed,}) {
  return _then(SearchResultUser(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class SearchResultPost implements SearchResult {
  const SearchResultPost({required this.post, this.score, final  List<String>? highlights, final  String? $type}): _highlights = highlights,$type = $type ?? 'post';
  factory SearchResultPost.fromJson(Map<String, dynamic> json) => _$SearchResultPostFromJson(json);

 final  PostModel post;
@override final  double? score;
 final  List<String>? _highlights;
 List<String>? get highlights {
  final value = _highlights;
  if (value == null) return null;
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


@JsonKey(name: 'type')
final String $type;


/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultPostCopyWith<SearchResultPost> get copyWith => _$SearchResultPostCopyWithImpl<SearchResultPost>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultPostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultPost&&(identical(other.post, post) || other.post == post)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,post,score,const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'SearchResult.post(post: $post, score: $score, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $SearchResultPostCopyWith<$Res> implements $SearchResultCopyWith<$Res> {
  factory $SearchResultPostCopyWith(SearchResultPost value, $Res Function(SearchResultPost) _then) = _$SearchResultPostCopyWithImpl;
@override @useResult
$Res call({
 PostModel post, double? score, List<String>? highlights
});


$PostModelCopyWith<$Res> get post;

}
/// @nodoc
class _$SearchResultPostCopyWithImpl<$Res>
    implements $SearchResultPostCopyWith<$Res> {
  _$SearchResultPostCopyWithImpl(this._self, this._then);

  final SearchResultPost _self;
  final $Res Function(SearchResultPost) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? post = null,Object? score = freezed,Object? highlights = freezed,}) {
  return _then(SearchResultPost(
post: null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostModel,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,highlights: freezed == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostModelCopyWith<$Res> get post {
  
  return $PostModelCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class SearchResultComment implements SearchResult {
  const SearchResultComment({required this.comment, this.score, final  String? $type}): $type = $type ?? 'comment';
  factory SearchResultComment.fromJson(Map<String, dynamic> json) => _$SearchResultCommentFromJson(json);

 final  Comment comment;
@override final  double? score;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultCommentCopyWith<SearchResultComment> get copyWith => _$SearchResultCommentCopyWithImpl<SearchResultComment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultCommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultComment&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,comment,score);

@override
String toString() {
  return 'SearchResult.comment(comment: $comment, score: $score)';
}


}

/// @nodoc
abstract mixin class $SearchResultCommentCopyWith<$Res> implements $SearchResultCopyWith<$Res> {
  factory $SearchResultCommentCopyWith(SearchResultComment value, $Res Function(SearchResultComment) _then) = _$SearchResultCommentCopyWithImpl;
@override @useResult
$Res call({
 Comment comment, double? score
});


$CommentCopyWith<$Res> get comment;

}
/// @nodoc
class _$SearchResultCommentCopyWithImpl<$Res>
    implements $SearchResultCommentCopyWith<$Res> {
  _$SearchResultCommentCopyWithImpl(this._self, this._then);

  final SearchResultComment _self;
  final $Res Function(SearchResultComment) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comment = null,Object? score = freezed,}) {
  return _then(SearchResultComment(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as Comment,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCopyWith<$Res> get comment {
  
  return $CommentCopyWith<$Res>(_self.comment, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}


/// @nodoc
mixin _$UserSearchResult {

 UserSearchResultTypeType get type; User get user; double? get score;
/// Create a copy of UserSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSearchResultCopyWith<UserSearchResult> get copyWith => _$UserSearchResultCopyWithImpl<UserSearchResult>(this as UserSearchResult, _$identity);

  /// Serializes this UserSearchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSearchResult&&(identical(other.type, type) || other.type == type)&&(identical(other.user, user) || other.user == user)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,user,score);

@override
String toString() {
  return 'UserSearchResult(type: $type, user: $user, score: $score)';
}


}

/// @nodoc
abstract mixin class $UserSearchResultCopyWith<$Res>  {
  factory $UserSearchResultCopyWith(UserSearchResult value, $Res Function(UserSearchResult) _then) = _$UserSearchResultCopyWithImpl;
@useResult
$Res call({
 UserSearchResultTypeType type, User user, double? score
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$UserSearchResultCopyWithImpl<$Res>
    implements $UserSearchResultCopyWith<$Res> {
  _$UserSearchResultCopyWithImpl(this._self, this._then);

  final UserSearchResult _self;
  final $Res Function(UserSearchResult) _then;

/// Create a copy of UserSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? user = null,Object? score = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as UserSearchResultTypeType,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of UserSearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserSearchResult].
extension UserSearchResultPatterns on UserSearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSearchResult value)  $default,){
final _that = this;
switch (_that) {
case _UserSearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _UserSearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserSearchResultTypeType type,  User user,  double? score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSearchResult() when $default != null:
return $default(_that.type,_that.user,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserSearchResultTypeType type,  User user,  double? score)  $default,) {final _that = this;
switch (_that) {
case _UserSearchResult():
return $default(_that.type,_that.user,_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserSearchResultTypeType type,  User user,  double? score)?  $default,) {final _that = this;
switch (_that) {
case _UserSearchResult() when $default != null:
return $default(_that.type,_that.user,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSearchResult implements UserSearchResult {
  const _UserSearchResult({required this.type, required this.user, this.score});
  factory _UserSearchResult.fromJson(Map<String, dynamic> json) => _$UserSearchResultFromJson(json);

@override final  UserSearchResultTypeType type;
@override final  User user;
@override final  double? score;

/// Create a copy of UserSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSearchResultCopyWith<_UserSearchResult> get copyWith => __$UserSearchResultCopyWithImpl<_UserSearchResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSearchResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSearchResult&&(identical(other.type, type) || other.type == type)&&(identical(other.user, user) || other.user == user)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,user,score);

@override
String toString() {
  return 'UserSearchResult(type: $type, user: $user, score: $score)';
}


}

/// @nodoc
abstract mixin class _$UserSearchResultCopyWith<$Res> implements $UserSearchResultCopyWith<$Res> {
  factory _$UserSearchResultCopyWith(_UserSearchResult value, $Res Function(_UserSearchResult) _then) = __$UserSearchResultCopyWithImpl;
@override @useResult
$Res call({
 UserSearchResultTypeType type, User user, double? score
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$UserSearchResultCopyWithImpl<$Res>
    implements _$UserSearchResultCopyWith<$Res> {
  __$UserSearchResultCopyWithImpl(this._self, this._then);

  final _UserSearchResult _self;
  final $Res Function(_UserSearchResult) _then;

/// Create a copy of UserSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? user = null,Object? score = freezed,}) {
  return _then(_UserSearchResult(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as UserSearchResultTypeType,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of UserSearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$PostSearchResult {

 PostSearchResultTypeType get type; PostModel get post; double? get score; List<String>? get highlights;
/// Create a copy of PostSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostSearchResultCopyWith<PostSearchResult> get copyWith => _$PostSearchResultCopyWithImpl<PostSearchResult>(this as PostSearchResult, _$identity);

  /// Serializes this PostSearchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostSearchResult&&(identical(other.type, type) || other.type == type)&&(identical(other.post, post) || other.post == post)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.highlights, highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,post,score,const DeepCollectionEquality().hash(highlights));

@override
String toString() {
  return 'PostSearchResult(type: $type, post: $post, score: $score, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class $PostSearchResultCopyWith<$Res>  {
  factory $PostSearchResultCopyWith(PostSearchResult value, $Res Function(PostSearchResult) _then) = _$PostSearchResultCopyWithImpl;
@useResult
$Res call({
 PostSearchResultTypeType type, PostModel post, double? score, List<String>? highlights
});


$PostModelCopyWith<$Res> get post;

}
/// @nodoc
class _$PostSearchResultCopyWithImpl<$Res>
    implements $PostSearchResultCopyWith<$Res> {
  _$PostSearchResultCopyWithImpl(this._self, this._then);

  final PostSearchResult _self;
  final $Res Function(PostSearchResult) _then;

/// Create a copy of PostSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? post = null,Object? score = freezed,Object? highlights = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostSearchResultTypeType,post: null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostModel,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,highlights: freezed == highlights ? _self.highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of PostSearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostModelCopyWith<$Res> get post {
  
  return $PostModelCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostSearchResult].
extension PostSearchResultPatterns on PostSearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostSearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostSearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostSearchResult value)  $default,){
final _that = this;
switch (_that) {
case _PostSearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostSearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _PostSearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PostSearchResultTypeType type,  PostModel post,  double? score,  List<String>? highlights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostSearchResult() when $default != null:
return $default(_that.type,_that.post,_that.score,_that.highlights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PostSearchResultTypeType type,  PostModel post,  double? score,  List<String>? highlights)  $default,) {final _that = this;
switch (_that) {
case _PostSearchResult():
return $default(_that.type,_that.post,_that.score,_that.highlights);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PostSearchResultTypeType type,  PostModel post,  double? score,  List<String>? highlights)?  $default,) {final _that = this;
switch (_that) {
case _PostSearchResult() when $default != null:
return $default(_that.type,_that.post,_that.score,_that.highlights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostSearchResult implements PostSearchResult {
  const _PostSearchResult({required this.type, required this.post, this.score, final  List<String>? highlights}): _highlights = highlights;
  factory _PostSearchResult.fromJson(Map<String, dynamic> json) => _$PostSearchResultFromJson(json);

@override final  PostSearchResultTypeType type;
@override final  PostModel post;
@override final  double? score;
 final  List<String>? _highlights;
@override List<String>? get highlights {
  final value = _highlights;
  if (value == null) return null;
  if (_highlights is EqualUnmodifiableListView) return _highlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PostSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostSearchResultCopyWith<_PostSearchResult> get copyWith => __$PostSearchResultCopyWithImpl<_PostSearchResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostSearchResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostSearchResult&&(identical(other.type, type) || other.type == type)&&(identical(other.post, post) || other.post == post)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._highlights, _highlights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,post,score,const DeepCollectionEquality().hash(_highlights));

@override
String toString() {
  return 'PostSearchResult(type: $type, post: $post, score: $score, highlights: $highlights)';
}


}

/// @nodoc
abstract mixin class _$PostSearchResultCopyWith<$Res> implements $PostSearchResultCopyWith<$Res> {
  factory _$PostSearchResultCopyWith(_PostSearchResult value, $Res Function(_PostSearchResult) _then) = __$PostSearchResultCopyWithImpl;
@override @useResult
$Res call({
 PostSearchResultTypeType type, PostModel post, double? score, List<String>? highlights
});


@override $PostModelCopyWith<$Res> get post;

}
/// @nodoc
class __$PostSearchResultCopyWithImpl<$Res>
    implements _$PostSearchResultCopyWith<$Res> {
  __$PostSearchResultCopyWithImpl(this._self, this._then);

  final _PostSearchResult _self;
  final $Res Function(_PostSearchResult) _then;

/// Create a copy of PostSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? post = null,Object? score = freezed,Object? highlights = freezed,}) {
  return _then(_PostSearchResult(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostSearchResultTypeType,post: null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostModel,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,highlights: freezed == highlights ? _self._highlights : highlights // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of PostSearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostModelCopyWith<$Res> get post {
  
  return $PostModelCopyWith<$Res>(_self.post, (value) {
    return _then(_self.copyWith(post: value));
  });
}
}


/// @nodoc
mixin _$CommentSearchResult {

 CommentSearchResultTypeType get type; Comment get comment; double? get score;
/// Create a copy of CommentSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentSearchResultCopyWith<CommentSearchResult> get copyWith => _$CommentSearchResultCopyWithImpl<CommentSearchResult>(this as CommentSearchResult, _$identity);

  /// Serializes this CommentSearchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentSearchResult&&(identical(other.type, type) || other.type == type)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,comment,score);

@override
String toString() {
  return 'CommentSearchResult(type: $type, comment: $comment, score: $score)';
}


}

/// @nodoc
abstract mixin class $CommentSearchResultCopyWith<$Res>  {
  factory $CommentSearchResultCopyWith(CommentSearchResult value, $Res Function(CommentSearchResult) _then) = _$CommentSearchResultCopyWithImpl;
@useResult
$Res call({
 CommentSearchResultTypeType type, Comment comment, double? score
});


$CommentCopyWith<$Res> get comment;

}
/// @nodoc
class _$CommentSearchResultCopyWithImpl<$Res>
    implements $CommentSearchResultCopyWith<$Res> {
  _$CommentSearchResultCopyWithImpl(this._self, this._then);

  final CommentSearchResult _self;
  final $Res Function(CommentSearchResult) _then;

/// Create a copy of CommentSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? comment = null,Object? score = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CommentSearchResultTypeType,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as Comment,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of CommentSearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCopyWith<$Res> get comment {
  
  return $CommentCopyWith<$Res>(_self.comment, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentSearchResult].
extension CommentSearchResultPatterns on CommentSearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentSearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentSearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentSearchResult value)  $default,){
final _that = this;
switch (_that) {
case _CommentSearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentSearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _CommentSearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommentSearchResultTypeType type,  Comment comment,  double? score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentSearchResult() when $default != null:
return $default(_that.type,_that.comment,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommentSearchResultTypeType type,  Comment comment,  double? score)  $default,) {final _that = this;
switch (_that) {
case _CommentSearchResult():
return $default(_that.type,_that.comment,_that.score);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommentSearchResultTypeType type,  Comment comment,  double? score)?  $default,) {final _that = this;
switch (_that) {
case _CommentSearchResult() when $default != null:
return $default(_that.type,_that.comment,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentSearchResult implements CommentSearchResult {
  const _CommentSearchResult({required this.type, required this.comment, this.score});
  factory _CommentSearchResult.fromJson(Map<String, dynamic> json) => _$CommentSearchResultFromJson(json);

@override final  CommentSearchResultTypeType type;
@override final  Comment comment;
@override final  double? score;

/// Create a copy of CommentSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentSearchResultCopyWith<_CommentSearchResult> get copyWith => __$CommentSearchResultCopyWithImpl<_CommentSearchResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentSearchResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentSearchResult&&(identical(other.type, type) || other.type == type)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,comment,score);

@override
String toString() {
  return 'CommentSearchResult(type: $type, comment: $comment, score: $score)';
}


}

/// @nodoc
abstract mixin class _$CommentSearchResultCopyWith<$Res> implements $CommentSearchResultCopyWith<$Res> {
  factory _$CommentSearchResultCopyWith(_CommentSearchResult value, $Res Function(_CommentSearchResult) _then) = __$CommentSearchResultCopyWithImpl;
@override @useResult
$Res call({
 CommentSearchResultTypeType type, Comment comment, double? score
});


@override $CommentCopyWith<$Res> get comment;

}
/// @nodoc
class __$CommentSearchResultCopyWithImpl<$Res>
    implements _$CommentSearchResultCopyWith<$Res> {
  __$CommentSearchResultCopyWithImpl(this._self, this._then);

  final _CommentSearchResult _self;
  final $Res Function(_CommentSearchResult) _then;

/// Create a copy of CommentSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? comment = null,Object? score = freezed,}) {
  return _then(_CommentSearchResult(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CommentSearchResultTypeType,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as Comment,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of CommentSearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCopyWith<$Res> get comment {
  
  return $CommentCopyWith<$Res>(_self.comment, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}

Entity _$EntityFromJson(
  Map<String, dynamic> json
) {
        switch (json['entityType']) {
                  case 'person':
          return EntityPerson.fromJson(
            json
          );
                case 'organization':
          return EntityOrganization.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'entityType',
  'Entity',
  'Invalid union type "${json['entityType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Entity {

 String get id; DateTime get createdAt; String? get name; String? get description; DateTime? get updatedAt;
/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityCopyWith<Entity> get copyWith => _$EntityCopyWithImpl<Entity>(this as Entity, _$identity);

  /// Serializes this Entity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,name,description,updatedAt);

@override
String toString() {
  return 'Entity(id: $id, createdAt: $createdAt, name: $name, description: $description, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $EntityCopyWith<$Res>  {
  factory $EntityCopyWith(Entity value, $Res Function(Entity) _then) = _$EntityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, String? name, String? description, DateTime? updatedAt
});




}
/// @nodoc
class _$EntityCopyWithImpl<$Res>
    implements $EntityCopyWith<$Res> {
  _$EntityCopyWithImpl(this._self, this._then);

  final Entity _self;
  final $Res Function(Entity) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Entity].
extension EntityPatterns on Entity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EntityPerson value)?  person,TResult Function( EntityOrganization value)?  organization,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EntityPerson() when person != null:
return person(_that);case EntityOrganization() when organization != null:
return organization(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EntityPerson value)  person,required TResult Function( EntityOrganization value)  organization,}){
final _that = this;
switch (_that) {
case EntityPerson():
return person(_that);case EntityOrganization():
return organization(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EntityPerson value)?  person,TResult? Function( EntityOrganization value)?  organization,}){
final _that = this;
switch (_that) {
case EntityPerson() when person != null:
return person(_that);case EntityOrganization() when organization != null:
return organization(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  DateTime createdAt,  DateTime dateOfBirth,  String? name,  String? description,  DateTime? updatedAt,  String? nationality,  String? occupation,  Map<String, String>? socialProfiles)?  person,TResult Function( String id,  DateTime createdAt,  String registrationNumber,  String? name,  String? description,  DateTime? updatedAt,  DateTime? foundedDate,  String? industry,  int? employeeCount,  double? revenue)?  organization,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EntityPerson() when person != null:
return person(_that.id,_that.createdAt,_that.dateOfBirth,_that.name,_that.description,_that.updatedAt,_that.nationality,_that.occupation,_that.socialProfiles);case EntityOrganization() when organization != null:
return organization(_that.id,_that.createdAt,_that.registrationNumber,_that.name,_that.description,_that.updatedAt,_that.foundedDate,_that.industry,_that.employeeCount,_that.revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  DateTime createdAt,  DateTime dateOfBirth,  String? name,  String? description,  DateTime? updatedAt,  String? nationality,  String? occupation,  Map<String, String>? socialProfiles)  person,required TResult Function( String id,  DateTime createdAt,  String registrationNumber,  String? name,  String? description,  DateTime? updatedAt,  DateTime? foundedDate,  String? industry,  int? employeeCount,  double? revenue)  organization,}) {final _that = this;
switch (_that) {
case EntityPerson():
return person(_that.id,_that.createdAt,_that.dateOfBirth,_that.name,_that.description,_that.updatedAt,_that.nationality,_that.occupation,_that.socialProfiles);case EntityOrganization():
return organization(_that.id,_that.createdAt,_that.registrationNumber,_that.name,_that.description,_that.updatedAt,_that.foundedDate,_that.industry,_that.employeeCount,_that.revenue);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  DateTime createdAt,  DateTime dateOfBirth,  String? name,  String? description,  DateTime? updatedAt,  String? nationality,  String? occupation,  Map<String, String>? socialProfiles)?  person,TResult? Function( String id,  DateTime createdAt,  String registrationNumber,  String? name,  String? description,  DateTime? updatedAt,  DateTime? foundedDate,  String? industry,  int? employeeCount,  double? revenue)?  organization,}) {final _that = this;
switch (_that) {
case EntityPerson() when person != null:
return person(_that.id,_that.createdAt,_that.dateOfBirth,_that.name,_that.description,_that.updatedAt,_that.nationality,_that.occupation,_that.socialProfiles);case EntityOrganization() when organization != null:
return organization(_that.id,_that.createdAt,_that.registrationNumber,_that.name,_that.description,_that.updatedAt,_that.foundedDate,_that.industry,_that.employeeCount,_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class EntityPerson implements Entity {
  const EntityPerson({required this.id, required this.createdAt, required this.dateOfBirth, this.name, this.description, this.updatedAt, this.nationality, this.occupation, final  Map<String, String>? socialProfiles, final  String? $type}): _socialProfiles = socialProfiles,$type = $type ?? 'person';
  factory EntityPerson.fromJson(Map<String, dynamic> json) => _$EntityPersonFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
 final  DateTime dateOfBirth;
@override final  String? name;
@override final  String? description;
@override final  DateTime? updatedAt;
 final  String? nationality;
 final  String? occupation;
 final  Map<String, String>? _socialProfiles;
 Map<String, String>? get socialProfiles {
  final value = _socialProfiles;
  if (value == null) return null;
  if (_socialProfiles is EqualUnmodifiableMapView) return _socialProfiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


@JsonKey(name: 'entityType')
final String $type;


/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityPersonCopyWith<EntityPerson> get copyWith => _$EntityPersonCopyWithImpl<EntityPerson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityPersonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityPerson&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&const DeepCollectionEquality().equals(other._socialProfiles, _socialProfiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,dateOfBirth,name,description,updatedAt,nationality,occupation,const DeepCollectionEquality().hash(_socialProfiles));

@override
String toString() {
  return 'Entity.person(id: $id, createdAt: $createdAt, dateOfBirth: $dateOfBirth, name: $name, description: $description, updatedAt: $updatedAt, nationality: $nationality, occupation: $occupation, socialProfiles: $socialProfiles)';
}


}

/// @nodoc
abstract mixin class $EntityPersonCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory $EntityPersonCopyWith(EntityPerson value, $Res Function(EntityPerson) _then) = _$EntityPersonCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime dateOfBirth, String? name, String? description, DateTime? updatedAt, String? nationality, String? occupation, Map<String, String>? socialProfiles
});




}
/// @nodoc
class _$EntityPersonCopyWithImpl<$Res>
    implements $EntityPersonCopyWith<$Res> {
  _$EntityPersonCopyWithImpl(this._self, this._then);

  final EntityPerson _self;
  final $Res Function(EntityPerson) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? dateOfBirth = null,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,Object? nationality = freezed,Object? occupation = freezed,Object? socialProfiles = freezed,}) {
  return _then(EntityPerson(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,socialProfiles: freezed == socialProfiles ? _self._socialProfiles : socialProfiles // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class EntityOrganization implements Entity {
  const EntityOrganization({required this.id, required this.createdAt, required this.registrationNumber, this.name, this.description, this.updatedAt, this.foundedDate, this.industry, this.employeeCount, this.revenue, final  String? $type}): $type = $type ?? 'organization';
  factory EntityOrganization.fromJson(Map<String, dynamic> json) => _$EntityOrganizationFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
 final  String registrationNumber;
@override final  String? name;
@override final  String? description;
@override final  DateTime? updatedAt;
 final  DateTime? foundedDate;
 final  String? industry;
 final  int? employeeCount;
 final  double? revenue;

@JsonKey(name: 'entityType')
final String $type;


/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityOrganizationCopyWith<EntityOrganization> get copyWith => _$EntityOrganizationCopyWithImpl<EntityOrganization>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityOrganizationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityOrganization&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.foundedDate, foundedDate) || other.foundedDate == foundedDate)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.employeeCount, employeeCount) || other.employeeCount == employeeCount)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,registrationNumber,name,description,updatedAt,foundedDate,industry,employeeCount,revenue);

@override
String toString() {
  return 'Entity.organization(id: $id, createdAt: $createdAt, registrationNumber: $registrationNumber, name: $name, description: $description, updatedAt: $updatedAt, foundedDate: $foundedDate, industry: $industry, employeeCount: $employeeCount, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $EntityOrganizationCopyWith<$Res> implements $EntityCopyWith<$Res> {
  factory $EntityOrganizationCopyWith(EntityOrganization value, $Res Function(EntityOrganization) _then) = _$EntityOrganizationCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, String registrationNumber, String? name, String? description, DateTime? updatedAt, DateTime? foundedDate, String? industry, int? employeeCount, double? revenue
});




}
/// @nodoc
class _$EntityOrganizationCopyWithImpl<$Res>
    implements $EntityOrganizationCopyWith<$Res> {
  _$EntityOrganizationCopyWithImpl(this._self, this._then);

  final EntityOrganization _self;
  final $Res Function(EntityOrganization) _then;

/// Create a copy of Entity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? registrationNumber = null,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,Object? foundedDate = freezed,Object? industry = freezed,Object? employeeCount = freezed,Object? revenue = freezed,}) {
  return _then(EntityOrganization(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,foundedDate: freezed == foundedDate ? _self.foundedDate : foundedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,employeeCount: freezed == employeeCount ? _self.employeeCount : employeeCount // ignore: cast_nullable_to_non_nullable
as int?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$BaseEntity {

 String get id; String get entityType; DateTime get createdAt; String? get name; String? get description; DateTime? get updatedAt;
/// Create a copy of BaseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseEntityCopyWith<BaseEntity> get copyWith => _$BaseEntityCopyWithImpl<BaseEntity>(this as BaseEntity, _$identity);

  /// Serializes this BaseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,entityType,createdAt,name,description,updatedAt);

@override
String toString() {
  return 'BaseEntity(id: $id, entityType: $entityType, createdAt: $createdAt, name: $name, description: $description, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BaseEntityCopyWith<$Res>  {
  factory $BaseEntityCopyWith(BaseEntity value, $Res Function(BaseEntity) _then) = _$BaseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String entityType, DateTime createdAt, String? name, String? description, DateTime? updatedAt
});




}
/// @nodoc
class _$BaseEntityCopyWithImpl<$Res>
    implements $BaseEntityCopyWith<$Res> {
  _$BaseEntityCopyWithImpl(this._self, this._then);

  final BaseEntity _self;
  final $Res Function(BaseEntity) _then;

/// Create a copy of BaseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? entityType = null,Object? createdAt = null,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseEntity].
extension BaseEntityPatterns on BaseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseEntity value)  $default,){
final _that = this;
switch (_that) {
case _BaseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BaseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String entityType,  DateTime createdAt,  String? name,  String? description,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseEntity() when $default != null:
return $default(_that.id,_that.entityType,_that.createdAt,_that.name,_that.description,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String entityType,  DateTime createdAt,  String? name,  String? description,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BaseEntity():
return $default(_that.id,_that.entityType,_that.createdAt,_that.name,_that.description,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String entityType,  DateTime createdAt,  String? name,  String? description,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BaseEntity() when $default != null:
return $default(_that.id,_that.entityType,_that.createdAt,_that.name,_that.description,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BaseEntity implements BaseEntity {
  const _BaseEntity({required this.id, required this.entityType, required this.createdAt, this.name, this.description, this.updatedAt});
  factory _BaseEntity.fromJson(Map<String, dynamic> json) => _$BaseEntityFromJson(json);

@override final  String id;
@override final  String entityType;
@override final  DateTime createdAt;
@override final  String? name;
@override final  String? description;
@override final  DateTime? updatedAt;

/// Create a copy of BaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseEntityCopyWith<_BaseEntity> get copyWith => __$BaseEntityCopyWithImpl<_BaseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,entityType,createdAt,name,description,updatedAt);

@override
String toString() {
  return 'BaseEntity(id: $id, entityType: $entityType, createdAt: $createdAt, name: $name, description: $description, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BaseEntityCopyWith<$Res> implements $BaseEntityCopyWith<$Res> {
  factory _$BaseEntityCopyWith(_BaseEntity value, $Res Function(_BaseEntity) _then) = __$BaseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String entityType, DateTime createdAt, String? name, String? description, DateTime? updatedAt
});




}
/// @nodoc
class __$BaseEntityCopyWithImpl<$Res>
    implements _$BaseEntityCopyWith<$Res> {
  __$BaseEntityCopyWithImpl(this._self, this._then);

  final _BaseEntity _self;
  final $Res Function(_BaseEntity) _then;

/// Create a copy of BaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? entityType = null,Object? createdAt = null,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,}) {
  return _then(_BaseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$PersonEntity {

 String get id; DateTime get createdAt; DateTime get dateOfBirth; PersonEntityEntityTypeEntityType? get entityType; String? get name; String? get description; DateTime? get updatedAt; String? get nationality; String? get occupation; Map<String, String>? get socialProfiles;
/// Create a copy of PersonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonEntityCopyWith<PersonEntity> get copyWith => _$PersonEntityCopyWithImpl<PersonEntity>(this as PersonEntity, _$identity);

  /// Serializes this PersonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&const DeepCollectionEquality().equals(other.socialProfiles, socialProfiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,dateOfBirth,entityType,name,description,updatedAt,nationality,occupation,const DeepCollectionEquality().hash(socialProfiles));

@override
String toString() {
  return 'PersonEntity(id: $id, createdAt: $createdAt, dateOfBirth: $dateOfBirth, entityType: $entityType, name: $name, description: $description, updatedAt: $updatedAt, nationality: $nationality, occupation: $occupation, socialProfiles: $socialProfiles)';
}


}

/// @nodoc
abstract mixin class $PersonEntityCopyWith<$Res>  {
  factory $PersonEntityCopyWith(PersonEntity value, $Res Function(PersonEntity) _then) = _$PersonEntityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, DateTime dateOfBirth, PersonEntityEntityTypeEntityType? entityType, String? name, String? description, DateTime? updatedAt, String? nationality, String? occupation, Map<String, String>? socialProfiles
});




}
/// @nodoc
class _$PersonEntityCopyWithImpl<$Res>
    implements $PersonEntityCopyWith<$Res> {
  _$PersonEntityCopyWithImpl(this._self, this._then);

  final PersonEntity _self;
  final $Res Function(PersonEntity) _then;

/// Create a copy of PersonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? dateOfBirth = null,Object? entityType = freezed,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,Object? nationality = freezed,Object? occupation = freezed,Object? socialProfiles = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as PersonEntityEntityTypeEntityType?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,socialProfiles: freezed == socialProfiles ? _self.socialProfiles : socialProfiles // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonEntity].
extension PersonEntityPatterns on PersonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonEntity value)  $default,){
final _that = this;
switch (_that) {
case _PersonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PersonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime dateOfBirth,  PersonEntityEntityTypeEntityType? entityType,  String? name,  String? description,  DateTime? updatedAt,  String? nationality,  String? occupation,  Map<String, String>? socialProfiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.dateOfBirth,_that.entityType,_that.name,_that.description,_that.updatedAt,_that.nationality,_that.occupation,_that.socialProfiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  DateTime dateOfBirth,  PersonEntityEntityTypeEntityType? entityType,  String? name,  String? description,  DateTime? updatedAt,  String? nationality,  String? occupation,  Map<String, String>? socialProfiles)  $default,) {final _that = this;
switch (_that) {
case _PersonEntity():
return $default(_that.id,_that.createdAt,_that.dateOfBirth,_that.entityType,_that.name,_that.description,_that.updatedAt,_that.nationality,_that.occupation,_that.socialProfiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  DateTime dateOfBirth,  PersonEntityEntityTypeEntityType? entityType,  String? name,  String? description,  DateTime? updatedAt,  String? nationality,  String? occupation,  Map<String, String>? socialProfiles)?  $default,) {final _that = this;
switch (_that) {
case _PersonEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.dateOfBirth,_that.entityType,_that.name,_that.description,_that.updatedAt,_that.nationality,_that.occupation,_that.socialProfiles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonEntity implements PersonEntity {
  const _PersonEntity({required this.id, required this.createdAt, required this.dateOfBirth, this.entityType, this.name, this.description, this.updatedAt, this.nationality, this.occupation, final  Map<String, String>? socialProfiles}): _socialProfiles = socialProfiles;
  factory _PersonEntity.fromJson(Map<String, dynamic> json) => _$PersonEntityFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  DateTime dateOfBirth;
@override final  PersonEntityEntityTypeEntityType? entityType;
@override final  String? name;
@override final  String? description;
@override final  DateTime? updatedAt;
@override final  String? nationality;
@override final  String? occupation;
 final  Map<String, String>? _socialProfiles;
@override Map<String, String>? get socialProfiles {
  final value = _socialProfiles;
  if (value == null) return null;
  if (_socialProfiles is EqualUnmodifiableMapView) return _socialProfiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PersonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonEntityCopyWith<_PersonEntity> get copyWith => __$PersonEntityCopyWithImpl<_PersonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&const DeepCollectionEquality().equals(other._socialProfiles, _socialProfiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,dateOfBirth,entityType,name,description,updatedAt,nationality,occupation,const DeepCollectionEquality().hash(_socialProfiles));

@override
String toString() {
  return 'PersonEntity(id: $id, createdAt: $createdAt, dateOfBirth: $dateOfBirth, entityType: $entityType, name: $name, description: $description, updatedAt: $updatedAt, nationality: $nationality, occupation: $occupation, socialProfiles: $socialProfiles)';
}


}

/// @nodoc
abstract mixin class _$PersonEntityCopyWith<$Res> implements $PersonEntityCopyWith<$Res> {
  factory _$PersonEntityCopyWith(_PersonEntity value, $Res Function(_PersonEntity) _then) = __$PersonEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, DateTime dateOfBirth, PersonEntityEntityTypeEntityType? entityType, String? name, String? description, DateTime? updatedAt, String? nationality, String? occupation, Map<String, String>? socialProfiles
});




}
/// @nodoc
class __$PersonEntityCopyWithImpl<$Res>
    implements _$PersonEntityCopyWith<$Res> {
  __$PersonEntityCopyWithImpl(this._self, this._then);

  final _PersonEntity _self;
  final $Res Function(_PersonEntity) _then;

/// Create a copy of PersonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? dateOfBirth = null,Object? entityType = freezed,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,Object? nationality = freezed,Object? occupation = freezed,Object? socialProfiles = freezed,}) {
  return _then(_PersonEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as PersonEntityEntityTypeEntityType?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,socialProfiles: freezed == socialProfiles ? _self._socialProfiles : socialProfiles // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}


/// @nodoc
mixin _$OrganizationEntity {

 String get id; DateTime get createdAt; String get registrationNumber; OrganizationEntityEntityTypeEntityType? get entityType; String? get name; String? get description; DateTime? get updatedAt; DateTime? get foundedDate; String? get industry; int? get employeeCount; double? get revenue;
/// Create a copy of OrganizationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationEntityCopyWith<OrganizationEntity> get copyWith => _$OrganizationEntityCopyWithImpl<OrganizationEntity>(this as OrganizationEntity, _$identity);

  /// Serializes this OrganizationEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.foundedDate, foundedDate) || other.foundedDate == foundedDate)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.employeeCount, employeeCount) || other.employeeCount == employeeCount)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,registrationNumber,entityType,name,description,updatedAt,foundedDate,industry,employeeCount,revenue);

@override
String toString() {
  return 'OrganizationEntity(id: $id, createdAt: $createdAt, registrationNumber: $registrationNumber, entityType: $entityType, name: $name, description: $description, updatedAt: $updatedAt, foundedDate: $foundedDate, industry: $industry, employeeCount: $employeeCount, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $OrganizationEntityCopyWith<$Res>  {
  factory $OrganizationEntityCopyWith(OrganizationEntity value, $Res Function(OrganizationEntity) _then) = _$OrganizationEntityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, String registrationNumber, OrganizationEntityEntityTypeEntityType? entityType, String? name, String? description, DateTime? updatedAt, DateTime? foundedDate, String? industry, int? employeeCount, double? revenue
});




}
/// @nodoc
class _$OrganizationEntityCopyWithImpl<$Res>
    implements $OrganizationEntityCopyWith<$Res> {
  _$OrganizationEntityCopyWithImpl(this._self, this._then);

  final OrganizationEntity _self;
  final $Res Function(OrganizationEntity) _then;

/// Create a copy of OrganizationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? registrationNumber = null,Object? entityType = freezed,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,Object? foundedDate = freezed,Object? industry = freezed,Object? employeeCount = freezed,Object? revenue = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationEntityEntityTypeEntityType?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,foundedDate: freezed == foundedDate ? _self.foundedDate : foundedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,employeeCount: freezed == employeeCount ? _self.employeeCount : employeeCount // ignore: cast_nullable_to_non_nullable
as int?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganizationEntity].
extension OrganizationEntityPatterns on OrganizationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  String registrationNumber,  OrganizationEntityEntityTypeEntityType? entityType,  String? name,  String? description,  DateTime? updatedAt,  DateTime? foundedDate,  String? industry,  int? employeeCount,  double? revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.registrationNumber,_that.entityType,_that.name,_that.description,_that.updatedAt,_that.foundedDate,_that.industry,_that.employeeCount,_that.revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  String registrationNumber,  OrganizationEntityEntityTypeEntityType? entityType,  String? name,  String? description,  DateTime? updatedAt,  DateTime? foundedDate,  String? industry,  int? employeeCount,  double? revenue)  $default,) {final _that = this;
switch (_that) {
case _OrganizationEntity():
return $default(_that.id,_that.createdAt,_that.registrationNumber,_that.entityType,_that.name,_that.description,_that.updatedAt,_that.foundedDate,_that.industry,_that.employeeCount,_that.revenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  String registrationNumber,  OrganizationEntityEntityTypeEntityType? entityType,  String? name,  String? description,  DateTime? updatedAt,  DateTime? foundedDate,  String? industry,  int? employeeCount,  double? revenue)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.registrationNumber,_that.entityType,_that.name,_that.description,_that.updatedAt,_that.foundedDate,_that.industry,_that.employeeCount,_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganizationEntity implements OrganizationEntity {
  const _OrganizationEntity({required this.id, required this.createdAt, required this.registrationNumber, this.entityType, this.name, this.description, this.updatedAt, this.foundedDate, this.industry, this.employeeCount, this.revenue});
  factory _OrganizationEntity.fromJson(Map<String, dynamic> json) => _$OrganizationEntityFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  String registrationNumber;
@override final  OrganizationEntityEntityTypeEntityType? entityType;
@override final  String? name;
@override final  String? description;
@override final  DateTime? updatedAt;
@override final  DateTime? foundedDate;
@override final  String? industry;
@override final  int? employeeCount;
@override final  double? revenue;

/// Create a copy of OrganizationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationEntityCopyWith<_OrganizationEntity> get copyWith => __$OrganizationEntityCopyWithImpl<_OrganizationEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.foundedDate, foundedDate) || other.foundedDate == foundedDate)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.employeeCount, employeeCount) || other.employeeCount == employeeCount)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,registrationNumber,entityType,name,description,updatedAt,foundedDate,industry,employeeCount,revenue);

@override
String toString() {
  return 'OrganizationEntity(id: $id, createdAt: $createdAt, registrationNumber: $registrationNumber, entityType: $entityType, name: $name, description: $description, updatedAt: $updatedAt, foundedDate: $foundedDate, industry: $industry, employeeCount: $employeeCount, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$OrganizationEntityCopyWith<$Res> implements $OrganizationEntityCopyWith<$Res> {
  factory _$OrganizationEntityCopyWith(_OrganizationEntity value, $Res Function(_OrganizationEntity) _then) = __$OrganizationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, String registrationNumber, OrganizationEntityEntityTypeEntityType? entityType, String? name, String? description, DateTime? updatedAt, DateTime? foundedDate, String? industry, int? employeeCount, double? revenue
});




}
/// @nodoc
class __$OrganizationEntityCopyWithImpl<$Res>
    implements _$OrganizationEntityCopyWith<$Res> {
  __$OrganizationEntityCopyWithImpl(this._self, this._then);

  final _OrganizationEntity _self;
  final $Res Function(_OrganizationEntity) _then;

/// Create a copy of OrganizationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? registrationNumber = null,Object? entityType = freezed,Object? name = freezed,Object? description = freezed,Object? updatedAt = freezed,Object? foundedDate = freezed,Object? industry = freezed,Object? employeeCount = freezed,Object? revenue = freezed,}) {
  return _then(_OrganizationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationEntityEntityTypeEntityType?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,foundedDate: freezed == foundedDate ? _self.foundedDate : foundedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,employeeCount: freezed == employeeCount ? _self.employeeCount : employeeCount // ignore: cast_nullable_to_non_nullable
as int?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Data {

 String get id; String get value; DataNested? get nested;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.nested, nested) || other.nested == nested));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,nested);

@override
String toString() {
  return 'Data(id: $id, value: $value, nested: $nested)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 String id, String value, DataNested? nested
});


$DataNestedCopyWith<$Res>? get nested;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,Object? nested = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,nested: freezed == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as DataNested?,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataNestedCopyWith<$Res>? get nested {
    if (_self.nested == null) {
    return null;
  }

  return $DataNestedCopyWith<$Res>(_self.nested!, (value) {
    return _then(_self.copyWith(nested: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String value,  DataNested? nested)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.id,_that.value,_that.nested);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String value,  DataNested? nested)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.id,_that.value,_that.nested);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String value,  DataNested? nested)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.id,_that.value,_that.nested);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({required this.id, required this.value, this.nested});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override final  String id;
@override final  String value;
@override final  DataNested? nested;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.nested, nested) || other.nested == nested));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,nested);

@override
String toString() {
  return 'Data(id: $id, value: $value, nested: $nested)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 String id, String value, DataNested? nested
});


@override $DataNestedCopyWith<$Res>? get nested;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,Object? nested = freezed,}) {
  return _then(_Data(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,nested: freezed == nested ? _self.nested : nested // ignore: cast_nullable_to_non_nullable
as DataNested?,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataNestedCopyWith<$Res>? get nested {
    if (_self.nested == null) {
    return null;
  }

  return $DataNestedCopyWith<$Res>(_self.nested!, (value) {
    return _then(_self.copyWith(nested: value));
  });
}
}


/// @nodoc
mixin _$Error {

 String get code; String get message; List<ErrorDetails>? get details; DateTime? get timestamp; String? get requestId;
/// Create a copy of Error
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this as Error, _$identity);

  /// Serializes this Error to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.details, details)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(details),timestamp,requestId);

@override
String toString() {
  return 'Error(code: $code, message: $message, details: $details, timestamp: $timestamp, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>  {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String code, String message, List<ErrorDetails>? details, DateTime? timestamp, String? requestId
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of Error
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? details = freezed,Object? timestamp = freezed,Object? requestId = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as List<ErrorDetails>?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Error].
extension ErrorPatterns on Error {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Error value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Error() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Error value)  $default,){
final _that = this;
switch (_that) {
case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Error value)?  $default,){
final _that = this;
switch (_that) {
case _Error() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String message,  List<ErrorDetails>? details,  DateTime? timestamp,  String? requestId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Error() when $default != null:
return $default(_that.code,_that.message,_that.details,_that.timestamp,_that.requestId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String message,  List<ErrorDetails>? details,  DateTime? timestamp,  String? requestId)  $default,) {final _that = this;
switch (_that) {
case _Error():
return $default(_that.code,_that.message,_that.details,_that.timestamp,_that.requestId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String message,  List<ErrorDetails>? details,  DateTime? timestamp,  String? requestId)?  $default,) {final _that = this;
switch (_that) {
case _Error() when $default != null:
return $default(_that.code,_that.message,_that.details,_that.timestamp,_that.requestId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Error implements Error {
  const _Error({required this.code, required this.message, final  List<ErrorDetails>? details, this.timestamp, this.requestId}): _details = details;
  factory _Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

@override final  String code;
@override final  String message;
 final  List<ErrorDetails>? _details;
@override List<ErrorDetails>? get details {
  final value = _details;
  if (value == null) return null;
  if (_details is EqualUnmodifiableListView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? timestamp;
@override final  String? requestId;

/// Create a copy of Error
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._details, _details)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(_details),timestamp,requestId);

@override
String toString() {
  return 'Error(code: $code, message: $message, details: $details, timestamp: $timestamp, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message, List<ErrorDetails>? details, DateTime? timestamp, String? requestId
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of Error
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? details = freezed,Object? timestamp = freezed,Object? requestId = freezed,}) {
  return _then(_Error(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,details: freezed == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as List<ErrorDetails>?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Result {

 bool? get success; dynamic get data; Status? get status;
/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultCopyWith<Result> get copyWith => _$ResultCopyWithImpl<Result>(this as Result, _$identity);

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),status);

@override
String toString() {
  return 'Result(success: $success, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class $ResultCopyWith<$Res>  {
  factory $ResultCopyWith(Result value, $Res Function(Result) _then) = _$ResultCopyWithImpl;
@useResult
$Res call({
 bool? success, dynamic data, Status? status
});




}
/// @nodoc
class _$ResultCopyWithImpl<$Res>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._self, this._then);

  final Result _self;
  final $Res Function(Result) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? data = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,
  ));
}

}


/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns on Result {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Result value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Result() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Result value)  $default,){
final _that = this;
switch (_that) {
case _Result():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Result value)?  $default,){
final _that = this;
switch (_that) {
case _Result() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  dynamic data,  Status? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Result() when $default != null:
return $default(_that.success,_that.data,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  dynamic data,  Status? status)  $default,) {final _that = this;
switch (_that) {
case _Result():
return $default(_that.success,_that.data,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  dynamic data,  Status? status)?  $default,) {final _that = this;
switch (_that) {
case _Result() when $default != null:
return $default(_that.success,_that.data,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Result implements Result {
  const _Result({this.success, this.data, this.status});
  factory _Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

@override final  bool? success;
@override final  dynamic data;
@override final  Status? status;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultCopyWith<_Result> get copyWith => __$ResultCopyWithImpl<_Result>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Result&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),status);

@override
String toString() {
  return 'Result(success: $success, data: $data, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) _then) = __$ResultCopyWithImpl;
@override @useResult
$Res call({
 bool? success, dynamic data, Status? status
});




}
/// @nodoc
class __$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(this._self, this._then);

  final _Result _self;
  final $Res Function(_Result) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? data = freezed,Object? status = freezed,}) {
  return _then(_Result(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status?,
  ));
}


}


/// @nodoc
mixin _$ListPostsResponsePagination {

 int? get page; int? get total; bool? get hasNext;
/// Create a copy of ListPostsResponsePagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListPostsResponsePaginationCopyWith<ListPostsResponsePagination> get copyWith => _$ListPostsResponsePaginationCopyWithImpl<ListPostsResponsePagination>(this as ListPostsResponsePagination, _$identity);

  /// Serializes this ListPostsResponsePagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListPostsResponsePagination&&(identical(other.page, page) || other.page == page)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,total,hasNext);

@override
String toString() {
  return 'ListPostsResponsePagination(page: $page, total: $total, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class $ListPostsResponsePaginationCopyWith<$Res>  {
  factory $ListPostsResponsePaginationCopyWith(ListPostsResponsePagination value, $Res Function(ListPostsResponsePagination) _then) = _$ListPostsResponsePaginationCopyWithImpl;
@useResult
$Res call({
 int? page, int? total, bool? hasNext
});




}
/// @nodoc
class _$ListPostsResponsePaginationCopyWithImpl<$Res>
    implements $ListPostsResponsePaginationCopyWith<$Res> {
  _$ListPostsResponsePaginationCopyWithImpl(this._self, this._then);

  final ListPostsResponsePagination _self;
  final $Res Function(ListPostsResponsePagination) _then;

/// Create a copy of ListPostsResponsePagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = freezed,Object? total = freezed,Object? hasNext = freezed,}) {
  return _then(_self.copyWith(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,hasNext: freezed == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListPostsResponsePagination].
extension ListPostsResponsePaginationPatterns on ListPostsResponsePagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListPostsResponsePagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListPostsResponsePagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListPostsResponsePagination value)  $default,){
final _that = this;
switch (_that) {
case _ListPostsResponsePagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListPostsResponsePagination value)?  $default,){
final _that = this;
switch (_that) {
case _ListPostsResponsePagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? page,  int? total,  bool? hasNext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListPostsResponsePagination() when $default != null:
return $default(_that.page,_that.total,_that.hasNext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? page,  int? total,  bool? hasNext)  $default,) {final _that = this;
switch (_that) {
case _ListPostsResponsePagination():
return $default(_that.page,_that.total,_that.hasNext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? page,  int? total,  bool? hasNext)?  $default,) {final _that = this;
switch (_that) {
case _ListPostsResponsePagination() when $default != null:
return $default(_that.page,_that.total,_that.hasNext);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListPostsResponsePagination implements ListPostsResponsePagination {
  const _ListPostsResponsePagination({this.page, this.total, this.hasNext});
  factory _ListPostsResponsePagination.fromJson(Map<String, dynamic> json) => _$ListPostsResponsePaginationFromJson(json);

@override final  int? page;
@override final  int? total;
@override final  bool? hasNext;

/// Create a copy of ListPostsResponsePagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListPostsResponsePaginationCopyWith<_ListPostsResponsePagination> get copyWith => __$ListPostsResponsePaginationCopyWithImpl<_ListPostsResponsePagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListPostsResponsePaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListPostsResponsePagination&&(identical(other.page, page) || other.page == page)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,total,hasNext);

@override
String toString() {
  return 'ListPostsResponsePagination(page: $page, total: $total, hasNext: $hasNext)';
}


}

/// @nodoc
abstract mixin class _$ListPostsResponsePaginationCopyWith<$Res> implements $ListPostsResponsePaginationCopyWith<$Res> {
  factory _$ListPostsResponsePaginationCopyWith(_ListPostsResponsePagination value, $Res Function(_ListPostsResponsePagination) _then) = __$ListPostsResponsePaginationCopyWithImpl;
@override @useResult
$Res call({
 int? page, int? total, bool? hasNext
});




}
/// @nodoc
class __$ListPostsResponsePaginationCopyWithImpl<$Res>
    implements _$ListPostsResponsePaginationCopyWith<$Res> {
  __$ListPostsResponsePaginationCopyWithImpl(this._self, this._then);

  final _ListPostsResponsePagination _self;
  final $Res Function(_ListPostsResponsePagination) _then;

/// Create a copy of ListPostsResponsePagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? total = freezed,Object? hasNext = freezed,}) {
  return _then(_ListPostsResponsePagination(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,hasNext: freezed == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ListPostsResponse {

 List<PostModel>? get posts; ListPostsResponsePagination? get pagination; Map<String, String>? get metadata;
/// Create a copy of ListPostsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListPostsResponseCopyWith<ListPostsResponse> get copyWith => _$ListPostsResponseCopyWithImpl<ListPostsResponse>(this as ListPostsResponse, _$identity);

  /// Serializes this ListPostsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListPostsResponse&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),pagination,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ListPostsResponse(posts: $posts, pagination: $pagination, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ListPostsResponseCopyWith<$Res>  {
  factory $ListPostsResponseCopyWith(ListPostsResponse value, $Res Function(ListPostsResponse) _then) = _$ListPostsResponseCopyWithImpl;
@useResult
$Res call({
 List<PostModel>? posts, ListPostsResponsePagination? pagination, Map<String, String>? metadata
});


$ListPostsResponsePaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class _$ListPostsResponseCopyWithImpl<$Res>
    implements $ListPostsResponseCopyWith<$Res> {
  _$ListPostsResponseCopyWithImpl(this._self, this._then);

  final ListPostsResponse _self;
  final $Res Function(ListPostsResponse) _then;

/// Create a copy of ListPostsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = freezed,Object? pagination = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
posts: freezed == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as ListPostsResponsePagination?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}
/// Create a copy of ListPostsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListPostsResponsePaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $ListPostsResponsePaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [ListPostsResponse].
extension ListPostsResponsePatterns on ListPostsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListPostsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListPostsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListPostsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListPostsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListPostsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListPostsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostModel>? posts,  ListPostsResponsePagination? pagination,  Map<String, String>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListPostsResponse() when $default != null:
return $default(_that.posts,_that.pagination,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostModel>? posts,  ListPostsResponsePagination? pagination,  Map<String, String>? metadata)  $default,) {final _that = this;
switch (_that) {
case _ListPostsResponse():
return $default(_that.posts,_that.pagination,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostModel>? posts,  ListPostsResponsePagination? pagination,  Map<String, String>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _ListPostsResponse() when $default != null:
return $default(_that.posts,_that.pagination,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListPostsResponse implements ListPostsResponse {
  const _ListPostsResponse({final  List<PostModel>? posts, this.pagination, final  Map<String, String>? metadata}): _posts = posts,_metadata = metadata;
  factory _ListPostsResponse.fromJson(Map<String, dynamic> json) => _$ListPostsResponseFromJson(json);

 final  List<PostModel>? _posts;
@override List<PostModel>? get posts {
  final value = _posts;
  if (value == null) return null;
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ListPostsResponsePagination? pagination;
 final  Map<String, String>? _metadata;
@override Map<String, String>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ListPostsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListPostsResponseCopyWith<_ListPostsResponse> get copyWith => __$ListPostsResponseCopyWithImpl<_ListPostsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListPostsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListPostsResponse&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),pagination,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ListPostsResponse(posts: $posts, pagination: $pagination, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ListPostsResponseCopyWith<$Res> implements $ListPostsResponseCopyWith<$Res> {
  factory _$ListPostsResponseCopyWith(_ListPostsResponse value, $Res Function(_ListPostsResponse) _then) = __$ListPostsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<PostModel>? posts, ListPostsResponsePagination? pagination, Map<String, String>? metadata
});


@override $ListPostsResponsePaginationCopyWith<$Res>? get pagination;

}
/// @nodoc
class __$ListPostsResponseCopyWithImpl<$Res>
    implements _$ListPostsResponseCopyWith<$Res> {
  __$ListPostsResponseCopyWithImpl(this._self, this._then);

  final _ListPostsResponse _self;
  final $Res Function(_ListPostsResponse) _then;

/// Create a copy of ListPostsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = freezed,Object? pagination = freezed,Object? metadata = freezed,}) {
  return _then(_ListPostsResponse(
posts: freezed == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>?,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as ListPostsResponsePagination?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

/// Create a copy of ListPostsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListPostsResponsePaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
    return null;
  }

  return $ListPostsResponsePaginationCopyWith<$Res>(_self.pagination!, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$FiltersDateRange {

 DateTime? get from; DateTime? get to;
/// Create a copy of FiltersDateRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersDateRangeCopyWith<FiltersDateRange> get copyWith => _$FiltersDateRangeCopyWithImpl<FiltersDateRange>(this as FiltersDateRange, _$identity);

  /// Serializes this FiltersDateRange to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersDateRange&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'FiltersDateRange(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $FiltersDateRangeCopyWith<$Res>  {
  factory $FiltersDateRangeCopyWith(FiltersDateRange value, $Res Function(FiltersDateRange) _then) = _$FiltersDateRangeCopyWithImpl;
@useResult
$Res call({
 DateTime? from, DateTime? to
});




}
/// @nodoc
class _$FiltersDateRangeCopyWithImpl<$Res>
    implements $FiltersDateRangeCopyWith<$Res> {
  _$FiltersDateRangeCopyWithImpl(this._self, this._then);

  final FiltersDateRange _self;
  final $Res Function(FiltersDateRange) _then;

/// Create a copy of FiltersDateRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FiltersDateRange].
extension FiltersDateRangePatterns on FiltersDateRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FiltersDateRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FiltersDateRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FiltersDateRange value)  $default,){
final _that = this;
switch (_that) {
case _FiltersDateRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FiltersDateRange value)?  $default,){
final _that = this;
switch (_that) {
case _FiltersDateRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FiltersDateRange() when $default != null:
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to)  $default,) {final _that = this;
switch (_that) {
case _FiltersDateRange():
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? from,  DateTime? to)?  $default,) {final _that = this;
switch (_that) {
case _FiltersDateRange() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FiltersDateRange implements FiltersDateRange {
  const _FiltersDateRange({this.from, this.to});
  factory _FiltersDateRange.fromJson(Map<String, dynamic> json) => _$FiltersDateRangeFromJson(json);

@override final  DateTime? from;
@override final  DateTime? to;

/// Create a copy of FiltersDateRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FiltersDateRangeCopyWith<_FiltersDateRange> get copyWith => __$FiltersDateRangeCopyWithImpl<_FiltersDateRange>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FiltersDateRangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FiltersDateRange&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'FiltersDateRange(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$FiltersDateRangeCopyWith<$Res> implements $FiltersDateRangeCopyWith<$Res> {
  factory _$FiltersDateRangeCopyWith(_FiltersDateRange value, $Res Function(_FiltersDateRange) _then) = __$FiltersDateRangeCopyWithImpl;
@override @useResult
$Res call({
 DateTime? from, DateTime? to
});




}
/// @nodoc
class __$FiltersDateRangeCopyWithImpl<$Res>
    implements _$FiltersDateRangeCopyWith<$Res> {
  __$FiltersDateRangeCopyWithImpl(this._self, this._then);

  final _FiltersDateRange _self;
  final $Res Function(_FiltersDateRange) _then;

/// Create a copy of FiltersDateRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_FiltersDateRange(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$Filters {

 String? get authorId; List<String>? get tags; FiltersDateRange? get dateRange;
/// Create a copy of Filters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersCopyWith<Filters> get copyWith => _$FiltersCopyWithImpl<Filters>(this as Filters, _$identity);

  /// Serializes this Filters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Filters&&(identical(other.authorId, authorId) || other.authorId == authorId)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorId,const DeepCollectionEquality().hash(tags),dateRange);

@override
String toString() {
  return 'Filters(authorId: $authorId, tags: $tags, dateRange: $dateRange)';
}


}

/// @nodoc
abstract mixin class $FiltersCopyWith<$Res>  {
  factory $FiltersCopyWith(Filters value, $Res Function(Filters) _then) = _$FiltersCopyWithImpl;
@useResult
$Res call({
 String? authorId, List<String>? tags, FiltersDateRange? dateRange
});


$FiltersDateRangeCopyWith<$Res>? get dateRange;

}
/// @nodoc
class _$FiltersCopyWithImpl<$Res>
    implements $FiltersCopyWith<$Res> {
  _$FiltersCopyWithImpl(this._self, this._then);

  final Filters _self;
  final $Res Function(Filters) _then;

/// Create a copy of Filters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorId = freezed,Object? tags = freezed,Object? dateRange = freezed,}) {
  return _then(_self.copyWith(
authorId: freezed == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,dateRange: freezed == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as FiltersDateRange?,
  ));
}
/// Create a copy of Filters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FiltersDateRangeCopyWith<$Res>? get dateRange {
    if (_self.dateRange == null) {
    return null;
  }

  return $FiltersDateRangeCopyWith<$Res>(_self.dateRange!, (value) {
    return _then(_self.copyWith(dateRange: value));
  });
}
}


/// Adds pattern-matching-related methods to [Filters].
extension FiltersPatterns on Filters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Filters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Filters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Filters value)  $default,){
final _that = this;
switch (_that) {
case _Filters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Filters value)?  $default,){
final _that = this;
switch (_that) {
case _Filters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? authorId,  List<String>? tags,  FiltersDateRange? dateRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Filters() when $default != null:
return $default(_that.authorId,_that.tags,_that.dateRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? authorId,  List<String>? tags,  FiltersDateRange? dateRange)  $default,) {final _that = this;
switch (_that) {
case _Filters():
return $default(_that.authorId,_that.tags,_that.dateRange);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? authorId,  List<String>? tags,  FiltersDateRange? dateRange)?  $default,) {final _that = this;
switch (_that) {
case _Filters() when $default != null:
return $default(_that.authorId,_that.tags,_that.dateRange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Filters implements Filters {
  const _Filters({this.authorId, final  List<String>? tags, this.dateRange}): _tags = tags;
  factory _Filters.fromJson(Map<String, dynamic> json) => _$FiltersFromJson(json);

@override final  String? authorId;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  FiltersDateRange? dateRange;

/// Create a copy of Filters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FiltersCopyWith<_Filters> get copyWith => __$FiltersCopyWithImpl<_Filters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FiltersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Filters&&(identical(other.authorId, authorId) || other.authorId == authorId)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorId,const DeepCollectionEquality().hash(_tags),dateRange);

@override
String toString() {
  return 'Filters(authorId: $authorId, tags: $tags, dateRange: $dateRange)';
}


}

/// @nodoc
abstract mixin class _$FiltersCopyWith<$Res> implements $FiltersCopyWith<$Res> {
  factory _$FiltersCopyWith(_Filters value, $Res Function(_Filters) _then) = __$FiltersCopyWithImpl;
@override @useResult
$Res call({
 String? authorId, List<String>? tags, FiltersDateRange? dateRange
});


@override $FiltersDateRangeCopyWith<$Res>? get dateRange;

}
/// @nodoc
class __$FiltersCopyWithImpl<$Res>
    implements _$FiltersCopyWith<$Res> {
  __$FiltersCopyWithImpl(this._self, this._then);

  final _Filters _self;
  final $Res Function(_Filters) _then;

/// Create a copy of Filters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorId = freezed,Object? tags = freezed,Object? dateRange = freezed,}) {
  return _then(_Filters(
authorId: freezed == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,dateRange: freezed == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as FiltersDateRange?,
  ));
}

/// Create a copy of Filters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FiltersDateRangeCopyWith<$Res>? get dateRange {
    if (_self.dateRange == null) {
    return null;
  }

  return $FiltersDateRangeCopyWith<$Res>(_self.dateRange!, (value) {
    return _then(_self.copyWith(dateRange: value));
  });
}
}


/// @nodoc
mixin _$CreatePostRequest {

 String get title; String get content; String get authorId; List<String>? get tags; DateTime? get publishAt; dynamic get metadata;
/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostRequestCopyWith<CreatePostRequest> get copyWith => _$CreatePostRequestCopyWithImpl<CreatePostRequest>(this as CreatePostRequest, _$identity);

  /// Serializes this CreatePostRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.publishAt, publishAt) || other.publishAt == publishAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,authorId,const DeepCollectionEquality().hash(tags),publishAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CreatePostRequest(title: $title, content: $content, authorId: $authorId, tags: $tags, publishAt: $publishAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CreatePostRequestCopyWith<$Res>  {
  factory $CreatePostRequestCopyWith(CreatePostRequest value, $Res Function(CreatePostRequest) _then) = _$CreatePostRequestCopyWithImpl;
@useResult
$Res call({
 String title, String content, String authorId, List<String>? tags, DateTime? publishAt, dynamic metadata
});




}
/// @nodoc
class _$CreatePostRequestCopyWithImpl<$Res>
    implements $CreatePostRequestCopyWith<$Res> {
  _$CreatePostRequestCopyWithImpl(this._self, this._then);

  final CreatePostRequest _self;
  final $Res Function(CreatePostRequest) _then;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? content = null,Object? authorId = null,Object? tags = freezed,Object? publishAt = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostRequest].
extension CreatePostRequestPatterns on CreatePostRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String content,  String authorId,  List<String>? tags,  DateTime? publishAt,  dynamic metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
return $default(_that.title,_that.content,_that.authorId,_that.tags,_that.publishAt,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String content,  String authorId,  List<String>? tags,  DateTime? publishAt,  dynamic metadata)  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequest():
return $default(_that.title,_that.content,_that.authorId,_that.tags,_that.publishAt,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String content,  String authorId,  List<String>? tags,  DateTime? publishAt,  dynamic metadata)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
return $default(_that.title,_that.content,_that.authorId,_that.tags,_that.publishAt,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostRequest implements CreatePostRequest {
  const _CreatePostRequest({required this.title, required this.content, required this.authorId, final  List<String>? tags, this.publishAt, this.metadata}): _tags = tags;
  factory _CreatePostRequest.fromJson(Map<String, dynamic> json) => _$CreatePostRequestFromJson(json);

@override final  String title;
@override final  String content;
@override final  String authorId;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? publishAt;
@override final  dynamic metadata;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostRequestCopyWith<_CreatePostRequest> get copyWith => __$CreatePostRequestCopyWithImpl<_CreatePostRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.publishAt, publishAt) || other.publishAt == publishAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,content,authorId,const DeepCollectionEquality().hash(_tags),publishAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CreatePostRequest(title: $title, content: $content, authorId: $authorId, tags: $tags, publishAt: $publishAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CreatePostRequestCopyWith<$Res> implements $CreatePostRequestCopyWith<$Res> {
  factory _$CreatePostRequestCopyWith(_CreatePostRequest value, $Res Function(_CreatePostRequest) _then) = __$CreatePostRequestCopyWithImpl;
@override @useResult
$Res call({
 String title, String content, String authorId, List<String>? tags, DateTime? publishAt, dynamic metadata
});




}
/// @nodoc
class __$CreatePostRequestCopyWithImpl<$Res>
    implements _$CreatePostRequestCopyWith<$Res> {
  __$CreatePostRequestCopyWithImpl(this._self, this._then);

  final _CreatePostRequest _self;
  final $Res Function(_CreatePostRequest) _then;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? content = null,Object? authorId = null,Object? tags = freezed,Object? publishAt = freezed,Object? metadata = freezed,}) {
  return _then(_CreatePostRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,publishAt: freezed == publishAt ? _self.publishAt : publishAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$GetPostResponse {

 String get id; String get title; String get content; String get authorId; PostStatus get status; DateTime get createdAt; int get viewCount; int get likeCount; String? get excerpt; User? get author; List<String>? get tags; List<Category>? get categories; DateTime? get publishedAt; dynamic get metadata; DateTime? get updatedAt; List<Comment>? get comments;
/// Create a copy of GetPostResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPostResponseCopyWith<GetPostResponse> get copyWith => _$GetPostResponseCopyWithImpl<GetPostResponse>(this as GetPostResponse, _$identity);

  /// Serializes this GetPostResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPostResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.excerpt, excerpt) || other.excerpt == excerpt)&&(identical(other.author, author) || other.author == author)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.comments, comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,authorId,status,createdAt,viewCount,likeCount,excerpt,author,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(categories),publishedAt,const DeepCollectionEquality().hash(metadata),updatedAt,const DeepCollectionEquality().hash(comments));

@override
String toString() {
  return 'GetPostResponse(id: $id, title: $title, content: $content, authorId: $authorId, status: $status, createdAt: $createdAt, viewCount: $viewCount, likeCount: $likeCount, excerpt: $excerpt, author: $author, tags: $tags, categories: $categories, publishedAt: $publishedAt, metadata: $metadata, updatedAt: $updatedAt, comments: $comments)';
}


}

/// @nodoc
abstract mixin class $GetPostResponseCopyWith<$Res>  {
  factory $GetPostResponseCopyWith(GetPostResponse value, $Res Function(GetPostResponse) _then) = _$GetPostResponseCopyWithImpl;
@useResult
$Res call({
 String id, String title, String content, String authorId, PostStatus status, DateTime createdAt, int viewCount, int likeCount, String? excerpt, User? author, List<String>? tags, List<Category>? categories, DateTime? publishedAt, dynamic metadata, DateTime? updatedAt, List<Comment>? comments
});


$UserCopyWith<$Res>? get author;

}
/// @nodoc
class _$GetPostResponseCopyWithImpl<$Res>
    implements $GetPostResponseCopyWith<$Res> {
  _$GetPostResponseCopyWithImpl(this._self, this._then);

  final GetPostResponse _self;
  final $Res Function(GetPostResponse) _then;

/// Create a copy of GetPostResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? authorId = null,Object? status = null,Object? createdAt = null,Object? viewCount = null,Object? likeCount = null,Object? excerpt = freezed,Object? author = freezed,Object? tags = freezed,Object? categories = freezed,Object? publishedAt = freezed,Object? metadata = freezed,Object? updatedAt = freezed,Object? comments = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,excerpt: freezed == excerpt ? _self.excerpt : excerpt // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,comments: freezed == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<Comment>?,
  ));
}
/// Create a copy of GetPostResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetPostResponse].
extension GetPostResponsePatterns on GetPostResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPostResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPostResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPostResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetPostResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPostResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetPostResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String content,  String authorId,  PostStatus status,  DateTime createdAt,  int viewCount,  int likeCount,  String? excerpt,  User? author,  List<String>? tags,  List<Category>? categories,  DateTime? publishedAt,  dynamic metadata,  DateTime? updatedAt,  List<Comment>? comments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPostResponse() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.status,_that.createdAt,_that.viewCount,_that.likeCount,_that.excerpt,_that.author,_that.tags,_that.categories,_that.publishedAt,_that.metadata,_that.updatedAt,_that.comments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String content,  String authorId,  PostStatus status,  DateTime createdAt,  int viewCount,  int likeCount,  String? excerpt,  User? author,  List<String>? tags,  List<Category>? categories,  DateTime? publishedAt,  dynamic metadata,  DateTime? updatedAt,  List<Comment>? comments)  $default,) {final _that = this;
switch (_that) {
case _GetPostResponse():
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.status,_that.createdAt,_that.viewCount,_that.likeCount,_that.excerpt,_that.author,_that.tags,_that.categories,_that.publishedAt,_that.metadata,_that.updatedAt,_that.comments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String content,  String authorId,  PostStatus status,  DateTime createdAt,  int viewCount,  int likeCount,  String? excerpt,  User? author,  List<String>? tags,  List<Category>? categories,  DateTime? publishedAt,  dynamic metadata,  DateTime? updatedAt,  List<Comment>? comments)?  $default,) {final _that = this;
switch (_that) {
case _GetPostResponse() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.authorId,_that.status,_that.createdAt,_that.viewCount,_that.likeCount,_that.excerpt,_that.author,_that.tags,_that.categories,_that.publishedAt,_that.metadata,_that.updatedAt,_that.comments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetPostResponse implements GetPostResponse {
  const _GetPostResponse({required this.id, required this.title, required this.content, required this.authorId, required this.status, required this.createdAt, this.viewCount = 0, this.likeCount = 0, this.excerpt, this.author, final  List<String>? tags, final  List<Category>? categories, this.publishedAt, this.metadata, this.updatedAt, final  List<Comment>? comments}): _tags = tags,_categories = categories,_comments = comments;
  factory _GetPostResponse.fromJson(Map<String, dynamic> json) => _$GetPostResponseFromJson(json);

@override final  String id;
@override final  String title;
@override final  String content;
@override final  String authorId;
@override final  PostStatus status;
@override final  DateTime createdAt;
@override@JsonKey() final  int viewCount;
@override@JsonKey() final  int likeCount;
@override final  String? excerpt;
@override final  User? author;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Category>? _categories;
@override List<Category>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? publishedAt;
@override final  dynamic metadata;
@override final  DateTime? updatedAt;
 final  List<Comment>? _comments;
@override List<Comment>? get comments {
  final value = _comments;
  if (value == null) return null;
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetPostResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPostResponseCopyWith<_GetPostResponse> get copyWith => __$GetPostResponseCopyWithImpl<_GetPostResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetPostResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPostResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.excerpt, excerpt) || other.excerpt == excerpt)&&(identical(other.author, author) || other.author == author)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._comments, _comments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,authorId,status,createdAt,viewCount,likeCount,excerpt,author,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_categories),publishedAt,const DeepCollectionEquality().hash(metadata),updatedAt,const DeepCollectionEquality().hash(_comments));

@override
String toString() {
  return 'GetPostResponse(id: $id, title: $title, content: $content, authorId: $authorId, status: $status, createdAt: $createdAt, viewCount: $viewCount, likeCount: $likeCount, excerpt: $excerpt, author: $author, tags: $tags, categories: $categories, publishedAt: $publishedAt, metadata: $metadata, updatedAt: $updatedAt, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$GetPostResponseCopyWith<$Res> implements $GetPostResponseCopyWith<$Res> {
  factory _$GetPostResponseCopyWith(_GetPostResponse value, $Res Function(_GetPostResponse) _then) = __$GetPostResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content, String authorId, PostStatus status, DateTime createdAt, int viewCount, int likeCount, String? excerpt, User? author, List<String>? tags, List<Category>? categories, DateTime? publishedAt, dynamic metadata, DateTime? updatedAt, List<Comment>? comments
});


@override $UserCopyWith<$Res>? get author;

}
/// @nodoc
class __$GetPostResponseCopyWithImpl<$Res>
    implements _$GetPostResponseCopyWith<$Res> {
  __$GetPostResponseCopyWithImpl(this._self, this._then);

  final _GetPostResponse _self;
  final $Res Function(_GetPostResponse) _then;

/// Create a copy of GetPostResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? authorId = null,Object? status = null,Object? createdAt = null,Object? viewCount = null,Object? likeCount = null,Object? excerpt = freezed,Object? author = freezed,Object? tags = freezed,Object? categories = freezed,Object? publishedAt = freezed,Object? metadata = freezed,Object? updatedAt = freezed,Object? comments = freezed,}) {
  return _then(_GetPostResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,excerpt: freezed == excerpt ? _self.excerpt : excerpt // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as User?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as dynamic,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,comments: freezed == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<Comment>?,
  ));
}

/// Create a copy of GetPostResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// @nodoc
mixin _$SearchResponse {

 List<SearchResult>? get results;
/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResponseCopyWith<SearchResponse> get copyWith => _$SearchResponseCopyWithImpl<SearchResponse>(this as SearchResponse, _$identity);

  /// Serializes this SearchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResponse&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'SearchResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class $SearchResponseCopyWith<$Res>  {
  factory $SearchResponseCopyWith(SearchResponse value, $Res Function(SearchResponse) _then) = _$SearchResponseCopyWithImpl;
@useResult
$Res call({
 List<SearchResult>? results
});




}
/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._self, this._then);

  final SearchResponse _self;
  final $Res Function(SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = freezed,}) {
  return _then(_self.copyWith(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchResult>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResponse].
extension SearchResponsePatterns on SearchResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResponse value)  $default,){
final _that = this;
switch (_that) {
case _SearchResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchResult>? results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchResult>? results)  $default,) {final _that = this;
switch (_that) {
case _SearchResponse():
return $default(_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchResult>? results)?  $default,) {final _that = this;
switch (_that) {
case _SearchResponse() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResponse implements SearchResponse {
  const _SearchResponse({final  List<SearchResult>? results}): _results = results;
  factory _SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

 final  List<SearchResult>? _results;
@override List<SearchResult>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResponseCopyWith<_SearchResponse> get copyWith => __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResponse&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'SearchResponse(results: $results)';
}


}

/// @nodoc
abstract mixin class _$SearchResponseCopyWith<$Res> implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(_SearchResponse value, $Res Function(_SearchResponse) _then) = __$SearchResponseCopyWithImpl;
@override @useResult
$Res call({
 List<SearchResult>? results
});




}
/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(this._self, this._then);

  final _SearchResponse _self;
  final $Res Function(_SearchResponse) _then;

/// Create a copy of SearchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = freezed,}) {
  return _then(_SearchResponse(
results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchResult>?,
  ));
}


}


/// @nodoc
mixin _$SearchRequest {

 String? get query; Map<String, String>? get filters;
/// Create a copy of SearchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchRequestCopyWith<SearchRequest> get copyWith => _$SearchRequestCopyWithImpl<SearchRequest>(this as SearchRequest, _$identity);

  /// Serializes this SearchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchRequest&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.filters, filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(filters));

@override
String toString() {
  return 'SearchRequest(query: $query, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $SearchRequestCopyWith<$Res>  {
  factory $SearchRequestCopyWith(SearchRequest value, $Res Function(SearchRequest) _then) = _$SearchRequestCopyWithImpl;
@useResult
$Res call({
 String? query, Map<String, String>? filters
});




}
/// @nodoc
class _$SearchRequestCopyWithImpl<$Res>
    implements $SearchRequestCopyWith<$Res> {
  _$SearchRequestCopyWithImpl(this._self, this._then);

  final SearchRequest _self;
  final $Res Function(SearchRequest) _then;

/// Create a copy of SearchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? filters = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchRequest].
extension SearchRequestPatterns on SearchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchRequest value)  $default,){
final _that = this;
switch (_that) {
case _SearchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SearchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  Map<String, String>? filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchRequest() when $default != null:
return $default(_that.query,_that.filters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  Map<String, String>? filters)  $default,) {final _that = this;
switch (_that) {
case _SearchRequest():
return $default(_that.query,_that.filters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  Map<String, String>? filters)?  $default,) {final _that = this;
switch (_that) {
case _SearchRequest() when $default != null:
return $default(_that.query,_that.filters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchRequest implements SearchRequest {
  const _SearchRequest({this.query, final  Map<String, String>? filters}): _filters = filters;
  factory _SearchRequest.fromJson(Map<String, dynamic> json) => _$SearchRequestFromJson(json);

@override final  String? query;
 final  Map<String, String>? _filters;
@override Map<String, String>? get filters {
  final value = _filters;
  if (value == null) return null;
  if (_filters is EqualUnmodifiableMapView) return _filters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchRequestCopyWith<_SearchRequest> get copyWith => __$SearchRequestCopyWithImpl<_SearchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchRequest&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._filters, _filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_filters));

@override
String toString() {
  return 'SearchRequest(query: $query, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$SearchRequestCopyWith<$Res> implements $SearchRequestCopyWith<$Res> {
  factory _$SearchRequestCopyWith(_SearchRequest value, $Res Function(_SearchRequest) _then) = __$SearchRequestCopyWithImpl;
@override @useResult
$Res call({
 String? query, Map<String, String>? filters
});




}
/// @nodoc
class __$SearchRequestCopyWithImpl<$Res>
    implements _$SearchRequestCopyWith<$Res> {
  __$SearchRequestCopyWithImpl(this._self, this._then);

  final _SearchRequest _self;
  final $Res Function(_SearchRequest) _then;

/// Create a copy of SearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? filters = freezed,}) {
  return _then(_SearchRequest(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,filters: freezed == filters ? _self._filters : filters // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}


/// @nodoc
mixin _$InternalHealthCheckResponse {

 InternalHealthCheckResponseStatusStatus? get status;
/// Create a copy of InternalHealthCheckResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternalHealthCheckResponseCopyWith<InternalHealthCheckResponse> get copyWith => _$InternalHealthCheckResponseCopyWithImpl<InternalHealthCheckResponse>(this as InternalHealthCheckResponse, _$identity);

  /// Serializes this InternalHealthCheckResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternalHealthCheckResponse&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'InternalHealthCheckResponse(status: $status)';
}


}

/// @nodoc
abstract mixin class $InternalHealthCheckResponseCopyWith<$Res>  {
  factory $InternalHealthCheckResponseCopyWith(InternalHealthCheckResponse value, $Res Function(InternalHealthCheckResponse) _then) = _$InternalHealthCheckResponseCopyWithImpl;
@useResult
$Res call({
 InternalHealthCheckResponseStatusStatus? status
});




}
/// @nodoc
class _$InternalHealthCheckResponseCopyWithImpl<$Res>
    implements $InternalHealthCheckResponseCopyWith<$Res> {
  _$InternalHealthCheckResponseCopyWithImpl(this._self, this._then);

  final InternalHealthCheckResponse _self;
  final $Res Function(InternalHealthCheckResponse) _then;

/// Create a copy of InternalHealthCheckResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InternalHealthCheckResponseStatusStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [InternalHealthCheckResponse].
extension InternalHealthCheckResponsePatterns on InternalHealthCheckResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InternalHealthCheckResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InternalHealthCheckResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InternalHealthCheckResponse value)  $default,){
final _that = this;
switch (_that) {
case _InternalHealthCheckResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InternalHealthCheckResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InternalHealthCheckResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InternalHealthCheckResponseStatusStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InternalHealthCheckResponse() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InternalHealthCheckResponseStatusStatus? status)  $default,) {final _that = this;
switch (_that) {
case _InternalHealthCheckResponse():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InternalHealthCheckResponseStatusStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _InternalHealthCheckResponse() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InternalHealthCheckResponse implements InternalHealthCheckResponse {
  const _InternalHealthCheckResponse({this.status});
  factory _InternalHealthCheckResponse.fromJson(Map<String, dynamic> json) => _$InternalHealthCheckResponseFromJson(json);

@override final  InternalHealthCheckResponseStatusStatus? status;

/// Create a copy of InternalHealthCheckResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InternalHealthCheckResponseCopyWith<_InternalHealthCheckResponse> get copyWith => __$InternalHealthCheckResponseCopyWithImpl<_InternalHealthCheckResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InternalHealthCheckResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InternalHealthCheckResponse&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'InternalHealthCheckResponse(status: $status)';
}


}

/// @nodoc
abstract mixin class _$InternalHealthCheckResponseCopyWith<$Res> implements $InternalHealthCheckResponseCopyWith<$Res> {
  factory _$InternalHealthCheckResponseCopyWith(_InternalHealthCheckResponse value, $Res Function(_InternalHealthCheckResponse) _then) = __$InternalHealthCheckResponseCopyWithImpl;
@override @useResult
$Res call({
 InternalHealthCheckResponseStatusStatus? status
});




}
/// @nodoc
class __$InternalHealthCheckResponseCopyWithImpl<$Res>
    implements _$InternalHealthCheckResponseCopyWith<$Res> {
  __$InternalHealthCheckResponseCopyWithImpl(this._self, this._then);

  final _InternalHealthCheckResponse _self;
  final $Res Function(_InternalHealthCheckResponse) _then;

/// Create a copy of InternalHealthCheckResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,}) {
  return _then(_InternalHealthCheckResponse(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InternalHealthCheckResponseStatusStatus?,
  ));
}


}


/// @nodoc
mixin _$GetDuplicateResponseMetadata {

 String? get id; int? get value;
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
 String? id, int? value
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  int? value)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  int? value)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  int? value)?  $default,) {final _that = this;
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
  const _GetDuplicateResponseMetadata({this.id, this.value});
  factory _GetDuplicateResponseMetadata.fromJson(Map<String, dynamic> json) => _$GetDuplicateResponseMetadataFromJson(json);

@override final  String? id;
@override final  int? value;

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
 String? id, int? value
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


/// @nodoc
mixin _$GetDuplicateResponse {

 Data? get data; GetDuplicateResponseMetadata? get metadata;
/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDuplicateResponseCopyWith<GetDuplicateResponse> get copyWith => _$GetDuplicateResponseCopyWithImpl<GetDuplicateResponse>(this as GetDuplicateResponse, _$identity);

  /// Serializes this GetDuplicateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDuplicateResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,metadata);

@override
String toString() {
  return 'GetDuplicateResponse(data: $data, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $GetDuplicateResponseCopyWith<$Res>  {
  factory $GetDuplicateResponseCopyWith(GetDuplicateResponse value, $Res Function(GetDuplicateResponse) _then) = _$GetDuplicateResponseCopyWithImpl;
@useResult
$Res call({
 Data? data, GetDuplicateResponseMetadata? metadata
});


$DataCopyWith<$Res>? get data;$GetDuplicateResponseMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$GetDuplicateResponseCopyWithImpl<$Res>
    implements $GetDuplicateResponseCopyWith<$Res> {
  _$GetDuplicateResponseCopyWithImpl(this._self, this._then);

  final GetDuplicateResponse _self;
  final $Res Function(GetDuplicateResponse) _then;

/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as GetDuplicateResponseMetadata?,
  ));
}
/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetDuplicateResponseMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $GetDuplicateResponseMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetDuplicateResponse].
extension GetDuplicateResponsePatterns on GetDuplicateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDuplicateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDuplicateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDuplicateResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetDuplicateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDuplicateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetDuplicateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Data? data,  GetDuplicateResponseMetadata? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDuplicateResponse() when $default != null:
return $default(_that.data,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Data? data,  GetDuplicateResponseMetadata? metadata)  $default,) {final _that = this;
switch (_that) {
case _GetDuplicateResponse():
return $default(_that.data,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Data? data,  GetDuplicateResponseMetadata? metadata)?  $default,) {final _that = this;
switch (_that) {
case _GetDuplicateResponse() when $default != null:
return $default(_that.data,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetDuplicateResponse implements GetDuplicateResponse {
  const _GetDuplicateResponse({this.data, this.metadata});
  factory _GetDuplicateResponse.fromJson(Map<String, dynamic> json) => _$GetDuplicateResponseFromJson(json);

@override final  Data? data;
@override final  GetDuplicateResponseMetadata? metadata;

/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDuplicateResponseCopyWith<_GetDuplicateResponse> get copyWith => __$GetDuplicateResponseCopyWithImpl<_GetDuplicateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetDuplicateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDuplicateResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,metadata);

@override
String toString() {
  return 'GetDuplicateResponse(data: $data, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$GetDuplicateResponseCopyWith<$Res> implements $GetDuplicateResponseCopyWith<$Res> {
  factory _$GetDuplicateResponseCopyWith(_GetDuplicateResponse value, $Res Function(_GetDuplicateResponse) _then) = __$GetDuplicateResponseCopyWithImpl;
@override @useResult
$Res call({
 Data? data, GetDuplicateResponseMetadata? metadata
});


@override $DataCopyWith<$Res>? get data;@override $GetDuplicateResponseMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$GetDuplicateResponseCopyWithImpl<$Res>
    implements _$GetDuplicateResponseCopyWith<$Res> {
  __$GetDuplicateResponseCopyWithImpl(this._self, this._then);

  final _GetDuplicateResponse _self;
  final $Res Function(_GetDuplicateResponse) _then;

/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? metadata = freezed,}) {
  return _then(_GetDuplicateResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as GetDuplicateResponseMetadata?,
  ));
}

/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of GetDuplicateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetDuplicateResponseMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $GetDuplicateResponseMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$UserSettingsNotifications {

 bool get email; bool get push; bool get sms;
/// Create a copy of UserSettingsNotifications
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSettingsNotificationsCopyWith<UserSettingsNotifications> get copyWith => _$UserSettingsNotificationsCopyWithImpl<UserSettingsNotifications>(this as UserSettingsNotifications, _$identity);

  /// Serializes this UserSettingsNotifications to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSettingsNotifications&&(identical(other.email, email) || other.email == email)&&(identical(other.push, push) || other.push == push)&&(identical(other.sms, sms) || other.sms == sms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,push,sms);

@override
String toString() {
  return 'UserSettingsNotifications(email: $email, push: $push, sms: $sms)';
}


}

/// @nodoc
abstract mixin class $UserSettingsNotificationsCopyWith<$Res>  {
  factory $UserSettingsNotificationsCopyWith(UserSettingsNotifications value, $Res Function(UserSettingsNotifications) _then) = _$UserSettingsNotificationsCopyWithImpl;
@useResult
$Res call({
 bool email, bool push, bool sms
});




}
/// @nodoc
class _$UserSettingsNotificationsCopyWithImpl<$Res>
    implements $UserSettingsNotificationsCopyWith<$Res> {
  _$UserSettingsNotificationsCopyWithImpl(this._self, this._then);

  final UserSettingsNotifications _self;
  final $Res Function(UserSettingsNotifications) _then;

/// Create a copy of UserSettingsNotifications
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? push = null,Object? sms = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as bool,push: null == push ? _self.push : push // ignore: cast_nullable_to_non_nullable
as bool,sms: null == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSettingsNotifications].
extension UserSettingsNotificationsPatterns on UserSettingsNotifications {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSettingsNotifications value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSettingsNotifications() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSettingsNotifications value)  $default,){
final _that = this;
switch (_that) {
case _UserSettingsNotifications():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSettingsNotifications value)?  $default,){
final _that = this;
switch (_that) {
case _UserSettingsNotifications() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool email,  bool push,  bool sms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSettingsNotifications() when $default != null:
return $default(_that.email,_that.push,_that.sms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool email,  bool push,  bool sms)  $default,) {final _that = this;
switch (_that) {
case _UserSettingsNotifications():
return $default(_that.email,_that.push,_that.sms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool email,  bool push,  bool sms)?  $default,) {final _that = this;
switch (_that) {
case _UserSettingsNotifications() when $default != null:
return $default(_that.email,_that.push,_that.sms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSettingsNotifications implements UserSettingsNotifications {
  const _UserSettingsNotifications({this.email = true, this.push = false, this.sms = false});
  factory _UserSettingsNotifications.fromJson(Map<String, dynamic> json) => _$UserSettingsNotificationsFromJson(json);

@override@JsonKey() final  bool email;
@override@JsonKey() final  bool push;
@override@JsonKey() final  bool sms;

/// Create a copy of UserSettingsNotifications
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSettingsNotificationsCopyWith<_UserSettingsNotifications> get copyWith => __$UserSettingsNotificationsCopyWithImpl<_UserSettingsNotifications>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSettingsNotificationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSettingsNotifications&&(identical(other.email, email) || other.email == email)&&(identical(other.push, push) || other.push == push)&&(identical(other.sms, sms) || other.sms == sms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,push,sms);

@override
String toString() {
  return 'UserSettingsNotifications(email: $email, push: $push, sms: $sms)';
}


}

/// @nodoc
abstract mixin class _$UserSettingsNotificationsCopyWith<$Res> implements $UserSettingsNotificationsCopyWith<$Res> {
  factory _$UserSettingsNotificationsCopyWith(_UserSettingsNotifications value, $Res Function(_UserSettingsNotifications) _then) = __$UserSettingsNotificationsCopyWithImpl;
@override @useResult
$Res call({
 bool email, bool push, bool sms
});




}
/// @nodoc
class __$UserSettingsNotificationsCopyWithImpl<$Res>
    implements _$UserSettingsNotificationsCopyWith<$Res> {
  __$UserSettingsNotificationsCopyWithImpl(this._self, this._then);

  final _UserSettingsNotifications _self;
  final $Res Function(_UserSettingsNotifications) _then;

/// Create a copy of UserSettingsNotifications
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? push = null,Object? sms = null,}) {
  return _then(_UserSettingsNotifications(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as bool,push: null == push ? _self.push : push // ignore: cast_nullable_to_non_nullable
as bool,sms: null == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UserSettingsPrivacy {

 UserSettingsPrivacyProfileVisibilityProfileVisibility get profileVisibility; bool get showEmail;
/// Create a copy of UserSettingsPrivacy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSettingsPrivacyCopyWith<UserSettingsPrivacy> get copyWith => _$UserSettingsPrivacyCopyWithImpl<UserSettingsPrivacy>(this as UserSettingsPrivacy, _$identity);

  /// Serializes this UserSettingsPrivacy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSettingsPrivacy&&(identical(other.profileVisibility, profileVisibility) || other.profileVisibility == profileVisibility)&&(identical(other.showEmail, showEmail) || other.showEmail == showEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileVisibility,showEmail);

@override
String toString() {
  return 'UserSettingsPrivacy(profileVisibility: $profileVisibility, showEmail: $showEmail)';
}


}

/// @nodoc
abstract mixin class $UserSettingsPrivacyCopyWith<$Res>  {
  factory $UserSettingsPrivacyCopyWith(UserSettingsPrivacy value, $Res Function(UserSettingsPrivacy) _then) = _$UserSettingsPrivacyCopyWithImpl;
@useResult
$Res call({
 UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility, bool showEmail
});




}
/// @nodoc
class _$UserSettingsPrivacyCopyWithImpl<$Res>
    implements $UserSettingsPrivacyCopyWith<$Res> {
  _$UserSettingsPrivacyCopyWithImpl(this._self, this._then);

  final UserSettingsPrivacy _self;
  final $Res Function(UserSettingsPrivacy) _then;

/// Create a copy of UserSettingsPrivacy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileVisibility = null,Object? showEmail = null,}) {
  return _then(_self.copyWith(
profileVisibility: null == profileVisibility ? _self.profileVisibility : profileVisibility // ignore: cast_nullable_to_non_nullable
as UserSettingsPrivacyProfileVisibilityProfileVisibility,showEmail: null == showEmail ? _self.showEmail : showEmail // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSettingsPrivacy].
extension UserSettingsPrivacyPatterns on UserSettingsPrivacy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSettingsPrivacy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSettingsPrivacy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSettingsPrivacy value)  $default,){
final _that = this;
switch (_that) {
case _UserSettingsPrivacy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSettingsPrivacy value)?  $default,){
final _that = this;
switch (_that) {
case _UserSettingsPrivacy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility,  bool showEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSettingsPrivacy() when $default != null:
return $default(_that.profileVisibility,_that.showEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility,  bool showEmail)  $default,) {final _that = this;
switch (_that) {
case _UserSettingsPrivacy():
return $default(_that.profileVisibility,_that.showEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility,  bool showEmail)?  $default,) {final _that = this;
switch (_that) {
case _UserSettingsPrivacy() when $default != null:
return $default(_that.profileVisibility,_that.showEmail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSettingsPrivacy implements UserSettingsPrivacy {
  const _UserSettingsPrivacy({this.profileVisibility = UserSettingsPrivacyProfileVisibilityProfileVisibility.public, this.showEmail = false});
  factory _UserSettingsPrivacy.fromJson(Map<String, dynamic> json) => _$UserSettingsPrivacyFromJson(json);

@override@JsonKey() final  UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility;
@override@JsonKey() final  bool showEmail;

/// Create a copy of UserSettingsPrivacy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSettingsPrivacyCopyWith<_UserSettingsPrivacy> get copyWith => __$UserSettingsPrivacyCopyWithImpl<_UserSettingsPrivacy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSettingsPrivacyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSettingsPrivacy&&(identical(other.profileVisibility, profileVisibility) || other.profileVisibility == profileVisibility)&&(identical(other.showEmail, showEmail) || other.showEmail == showEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profileVisibility,showEmail);

@override
String toString() {
  return 'UserSettingsPrivacy(profileVisibility: $profileVisibility, showEmail: $showEmail)';
}


}

/// @nodoc
abstract mixin class _$UserSettingsPrivacyCopyWith<$Res> implements $UserSettingsPrivacyCopyWith<$Res> {
  factory _$UserSettingsPrivacyCopyWith(_UserSettingsPrivacy value, $Res Function(_UserSettingsPrivacy) _then) = __$UserSettingsPrivacyCopyWithImpl;
@override @useResult
$Res call({
 UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility, bool showEmail
});




}
/// @nodoc
class __$UserSettingsPrivacyCopyWithImpl<$Res>
    implements _$UserSettingsPrivacyCopyWith<$Res> {
  __$UserSettingsPrivacyCopyWithImpl(this._self, this._then);

  final _UserSettingsPrivacy _self;
  final $Res Function(_UserSettingsPrivacy) _then;

/// Create a copy of UserSettingsPrivacy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileVisibility = null,Object? showEmail = null,}) {
  return _then(_UserSettingsPrivacy(
profileVisibility: null == profileVisibility ? _self.profileVisibility : profileVisibility // ignore: cast_nullable_to_non_nullable
as UserSettingsPrivacyProfileVisibilityProfileVisibility,showEmail: null == showEmail ? _self.showEmail : showEmail // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

PaymentResponseDetails _$PaymentResponseDetailsFromJson(
  Map<String, dynamic> json
) {
        switch (json['paymentType']) {
                  case 'credit_card':
          return PaymentResponseDetailsCreditCard.fromJson(
            json
          );
                case 'bank_transfer':
          return PaymentResponseDetailsBankTransfer.fromJson(
            json
          );
                case 'crypto':
          return PaymentResponseDetailsCrypto.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'paymentType',
  'PaymentResponseDetails',
  'Invalid union type "${json['paymentType']}"!'
);
        }
      
}

/// @nodoc
mixin _$PaymentResponseDetails {

 double get amount;
/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseDetailsCopyWith<PaymentResponseDetails> get copyWith => _$PaymentResponseDetailsCopyWithImpl<PaymentResponseDetails>(this as PaymentResponseDetails, _$identity);

  /// Serializes this PaymentResponseDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseDetails&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'PaymentResponseDetails(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseDetailsCopyWith<$Res>  {
  factory $PaymentResponseDetailsCopyWith(PaymentResponseDetails value, $Res Function(PaymentResponseDetails) _then) = _$PaymentResponseDetailsCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class _$PaymentResponseDetailsCopyWithImpl<$Res>
    implements $PaymentResponseDetailsCopyWith<$Res> {
  _$PaymentResponseDetailsCopyWithImpl(this._self, this._then);

  final PaymentResponseDetails _self;
  final $Res Function(PaymentResponseDetails) _then;

/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentResponseDetails].
extension PaymentResponseDetailsPatterns on PaymentResponseDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentResponseDetailsCreditCard value)?  creditCard,TResult Function( PaymentResponseDetailsBankTransfer value)?  bankTransfer,TResult Function( PaymentResponseDetailsCrypto value)?  crypto,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentResponseDetailsCreditCard value)  creditCard,required TResult Function( PaymentResponseDetailsBankTransfer value)  bankTransfer,required TResult Function( PaymentResponseDetailsCrypto value)  crypto,}){
final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard():
return creditCard(_that);case PaymentResponseDetailsBankTransfer():
return bankTransfer(_that);case PaymentResponseDetailsCrypto():
return crypto(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentResponseDetailsCreditCard value)?  creditCard,TResult? Function( PaymentResponseDetailsBankTransfer value)?  bankTransfer,TResult? Function( PaymentResponseDetailsCrypto value)?  crypto,}){
final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  creditCard,TResult Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  bankTransfer,TResult Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  crypto,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)  creditCard,required TResult Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)  bankTransfer,required TResult Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)  crypto,}) {final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard():
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentResponseDetailsBankTransfer():
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentResponseDetailsCrypto():
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  creditCard,TResult? Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  bankTransfer,TResult? Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  crypto,}) {final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PaymentResponseDetailsCreditCard implements PaymentResponseDetails {
  const PaymentResponseDetailsCreditCard({required this.cardNumber, required this.expiryMonth, required this.expiryYear, required this.cvv, required this.amount, this.cardholderName, final  String? $type}): $type = $type ?? 'credit_card';
  factory PaymentResponseDetailsCreditCard.fromJson(Map<String, dynamic> json) => _$PaymentResponseDetailsCreditCardFromJson(json);

 final  String cardNumber;
 final  int expiryMonth;
 final  int expiryYear;
 final  String cvv;
@override final  double amount;
 final  String? cardholderName;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseDetailsCreditCardCopyWith<PaymentResponseDetailsCreditCard> get copyWith => _$PaymentResponseDetailsCreditCardCopyWithImpl<PaymentResponseDetailsCreditCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseDetailsCreditCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseDetailsCreditCard&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expiryMonth,expiryYear,cvv,amount,cardholderName);

@override
String toString() {
  return 'PaymentResponseDetails.creditCard(cardNumber: $cardNumber, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cvv: $cvv, amount: $amount, cardholderName: $cardholderName)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseDetailsCreditCardCopyWith<$Res> implements $PaymentResponseDetailsCopyWith<$Res> {
  factory $PaymentResponseDetailsCreditCardCopyWith(PaymentResponseDetailsCreditCard value, $Res Function(PaymentResponseDetailsCreditCard) _then) = _$PaymentResponseDetailsCreditCardCopyWithImpl;
@override @useResult
$Res call({
 String cardNumber, int expiryMonth, int expiryYear, String cvv, double amount, String? cardholderName
});




}
/// @nodoc
class _$PaymentResponseDetailsCreditCardCopyWithImpl<$Res>
    implements $PaymentResponseDetailsCreditCardCopyWith<$Res> {
  _$PaymentResponseDetailsCreditCardCopyWithImpl(this._self, this._then);

  final PaymentResponseDetailsCreditCard _self;
  final $Res Function(PaymentResponseDetailsCreditCard) _then;

/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expiryMonth = null,Object? expiryYear = null,Object? cvv = null,Object? amount = null,Object? cardholderName = freezed,}) {
  return _then(PaymentResponseDetailsCreditCard(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryMonth: null == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int,expiryYear: null == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PaymentResponseDetailsBankTransfer implements PaymentResponseDetails {
  const PaymentResponseDetailsBankTransfer({required this.accountNumber, required this.routingNumber, required this.amount, this.accountHolder, this.reference, final  String? $type}): $type = $type ?? 'bank_transfer';
  factory PaymentResponseDetailsBankTransfer.fromJson(Map<String, dynamic> json) => _$PaymentResponseDetailsBankTransferFromJson(json);

 final  String accountNumber;
 final  String routingNumber;
@override final  double amount;
 final  String? accountHolder;
 final  String? reference;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseDetailsBankTransferCopyWith<PaymentResponseDetailsBankTransfer> get copyWith => _$PaymentResponseDetailsBankTransferCopyWithImpl<PaymentResponseDetailsBankTransfer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseDetailsBankTransferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseDetailsBankTransfer&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.routingNumber, routingNumber) || other.routingNumber == routingNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,routingNumber,amount,accountHolder,reference);

@override
String toString() {
  return 'PaymentResponseDetails.bankTransfer(accountNumber: $accountNumber, routingNumber: $routingNumber, amount: $amount, accountHolder: $accountHolder, reference: $reference)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseDetailsBankTransferCopyWith<$Res> implements $PaymentResponseDetailsCopyWith<$Res> {
  factory $PaymentResponseDetailsBankTransferCopyWith(PaymentResponseDetailsBankTransfer value, $Res Function(PaymentResponseDetailsBankTransfer) _then) = _$PaymentResponseDetailsBankTransferCopyWithImpl;
@override @useResult
$Res call({
 String accountNumber, String routingNumber, double amount, String? accountHolder, String? reference
});




}
/// @nodoc
class _$PaymentResponseDetailsBankTransferCopyWithImpl<$Res>
    implements $PaymentResponseDetailsBankTransferCopyWith<$Res> {
  _$PaymentResponseDetailsBankTransferCopyWithImpl(this._self, this._then);

  final PaymentResponseDetailsBankTransfer _self;
  final $Res Function(PaymentResponseDetailsBankTransfer) _then;

/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? routingNumber = null,Object? amount = null,Object? accountHolder = freezed,Object? reference = freezed,}) {
  return _then(PaymentResponseDetailsBankTransfer(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,routingNumber: null == routingNumber ? _self.routingNumber : routingNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,accountHolder: freezed == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PaymentResponseDetailsCrypto implements PaymentResponseDetails {
  const PaymentResponseDetailsCrypto({required this.walletAddress, required this.cryptocurrency, required this.amount, this.transactionHash, final  String? $type}): $type = $type ?? 'crypto';
  factory PaymentResponseDetailsCrypto.fromJson(Map<String, dynamic> json) => _$PaymentResponseDetailsCryptoFromJson(json);

 final  String walletAddress;
 final  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency;
@override final  double amount;
 final  String? transactionHash;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseDetailsCryptoCopyWith<PaymentResponseDetailsCrypto> get copyWith => _$PaymentResponseDetailsCryptoCopyWithImpl<PaymentResponseDetailsCrypto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseDetailsCryptoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseDetailsCrypto&&(identical(other.walletAddress, walletAddress) || other.walletAddress == walletAddress)&&(identical(other.cryptocurrency, cryptocurrency) || other.cryptocurrency == cryptocurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionHash, transactionHash) || other.transactionHash == transactionHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,walletAddress,cryptocurrency,amount,transactionHash);

@override
String toString() {
  return 'PaymentResponseDetails.crypto(walletAddress: $walletAddress, cryptocurrency: $cryptocurrency, amount: $amount, transactionHash: $transactionHash)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseDetailsCryptoCopyWith<$Res> implements $PaymentResponseDetailsCopyWith<$Res> {
  factory $PaymentResponseDetailsCryptoCopyWith(PaymentResponseDetailsCrypto value, $Res Function(PaymentResponseDetailsCrypto) _then) = _$PaymentResponseDetailsCryptoCopyWithImpl;
@override @useResult
$Res call({
 String walletAddress, CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency, double amount, String? transactionHash
});




}
/// @nodoc
class _$PaymentResponseDetailsCryptoCopyWithImpl<$Res>
    implements $PaymentResponseDetailsCryptoCopyWith<$Res> {
  _$PaymentResponseDetailsCryptoCopyWithImpl(this._self, this._then);

  final PaymentResponseDetailsCrypto _self;
  final $Res Function(PaymentResponseDetailsCrypto) _then;

/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? walletAddress = null,Object? cryptocurrency = null,Object? amount = null,Object? transactionHash = freezed,}) {
  return _then(PaymentResponseDetailsCrypto(
walletAddress: null == walletAddress ? _self.walletAddress : walletAddress // ignore: cast_nullable_to_non_nullable
as String,cryptocurrency: null == cryptocurrency ? _self.cryptocurrency : cryptocurrency // ignore: cast_nullable_to_non_nullable
as CryptoPaymentCryptocurrencyCryptocurrency,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,transactionHash: freezed == transactionHash ? _self.transactionHash : transactionHash // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DataNestedData {

 int? get id; String? get name;
/// Create a copy of DataNestedData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataNestedDataCopyWith<DataNestedData> get copyWith => _$DataNestedDataCopyWithImpl<DataNestedData>(this as DataNestedData, _$identity);

  /// Serializes this DataNestedData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataNestedData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DataNestedData(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $DataNestedDataCopyWith<$Res>  {
  factory $DataNestedDataCopyWith(DataNestedData value, $Res Function(DataNestedData) _then) = _$DataNestedDataCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$DataNestedDataCopyWithImpl<$Res>
    implements $DataNestedDataCopyWith<$Res> {
  _$DataNestedDataCopyWithImpl(this._self, this._then);

  final DataNestedData _self;
  final $Res Function(DataNestedData) _then;

/// Create a copy of DataNestedData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DataNestedData].
extension DataNestedDataPatterns on DataNestedData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataNestedData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataNestedData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataNestedData value)  $default,){
final _that = this;
switch (_that) {
case _DataNestedData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataNestedData value)?  $default,){
final _that = this;
switch (_that) {
case _DataNestedData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataNestedData() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _DataNestedData():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _DataNestedData() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DataNestedData implements DataNestedData {
  const _DataNestedData({this.id, this.name});
  factory _DataNestedData.fromJson(Map<String, dynamic> json) => _$DataNestedDataFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of DataNestedData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataNestedDataCopyWith<_DataNestedData> get copyWith => __$DataNestedDataCopyWithImpl<_DataNestedData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataNestedDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataNestedData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'DataNestedData(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$DataNestedDataCopyWith<$Res> implements $DataNestedDataCopyWith<$Res> {
  factory _$DataNestedDataCopyWith(_DataNestedData value, $Res Function(_DataNestedData) _then) = __$DataNestedDataCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$DataNestedDataCopyWithImpl<$Res>
    implements _$DataNestedDataCopyWith<$Res> {
  __$DataNestedDataCopyWithImpl(this._self, this._then);

  final _DataNestedData _self;
  final $Res Function(_DataNestedData) _then;

/// Create a copy of DataNestedData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_DataNestedData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DataNested {

 List<DataNestedData>? get data;
/// Create a copy of DataNested
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataNestedCopyWith<DataNested> get copyWith => _$DataNestedCopyWithImpl<DataNested>(this as DataNested, _$identity);

  /// Serializes this DataNested to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataNested&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DataNested(data: $data)';
}


}

/// @nodoc
abstract mixin class $DataNestedCopyWith<$Res>  {
  factory $DataNestedCopyWith(DataNested value, $Res Function(DataNested) _then) = _$DataNestedCopyWithImpl;
@useResult
$Res call({
 List<DataNestedData>? data
});




}
/// @nodoc
class _$DataNestedCopyWithImpl<$Res>
    implements $DataNestedCopyWith<$Res> {
  _$DataNestedCopyWithImpl(this._self, this._then);

  final DataNested _self;
  final $Res Function(DataNested) _then;

/// Create a copy of DataNested
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DataNestedData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DataNested].
extension DataNestedPatterns on DataNested {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataNested value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataNested() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataNested value)  $default,){
final _that = this;
switch (_that) {
case _DataNested():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataNested value)?  $default,){
final _that = this;
switch (_that) {
case _DataNested() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DataNestedData>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataNested() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DataNestedData>? data)  $default,) {final _that = this;
switch (_that) {
case _DataNested():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DataNestedData>? data)?  $default,) {final _that = this;
switch (_that) {
case _DataNested() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DataNested implements DataNested {
  const _DataNested({final  List<DataNestedData>? data}): _data = data;
  factory _DataNested.fromJson(Map<String, dynamic> json) => _$DataNestedFromJson(json);

 final  List<DataNestedData>? _data;
@override List<DataNestedData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DataNested
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataNestedCopyWith<_DataNested> get copyWith => __$DataNestedCopyWithImpl<_DataNested>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataNestedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataNested&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'DataNested(data: $data)';
}


}

/// @nodoc
abstract mixin class _$DataNestedCopyWith<$Res> implements $DataNestedCopyWith<$Res> {
  factory _$DataNestedCopyWith(_DataNested value, $Res Function(_DataNested) _then) = __$DataNestedCopyWithImpl;
@override @useResult
$Res call({
 List<DataNestedData>? data
});




}
/// @nodoc
class __$DataNestedCopyWithImpl<$Res>
    implements _$DataNestedCopyWith<$Res> {
  __$DataNestedCopyWithImpl(this._self, this._then);

  final _DataNested _self;
  final $Res Function(_DataNested) _then;

/// Create a copy of DataNested
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_DataNested(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DataNestedData>?,
  ));
}


}


/// @nodoc
mixin _$ErrorDetails {

 String? get field; String? get message;
/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDetailsCopyWith<ErrorDetails> get copyWith => _$ErrorDetailsCopyWithImpl<ErrorDetails>(this as ErrorDetails, _$identity);

  /// Serializes this ErrorDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDetails&&(identical(other.field, field) || other.field == field)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,message);

@override
String toString() {
  return 'ErrorDetails(field: $field, message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorDetailsCopyWith<$Res>  {
  factory $ErrorDetailsCopyWith(ErrorDetails value, $Res Function(ErrorDetails) _then) = _$ErrorDetailsCopyWithImpl;
@useResult
$Res call({
 String? field, String? message
});




}
/// @nodoc
class _$ErrorDetailsCopyWithImpl<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(this._self, this._then);

  final ErrorDetails _self;
  final $Res Function(ErrorDetails) _then;

/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? field = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ErrorDetails].
extension ErrorDetailsPatterns on ErrorDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorDetails value)  $default,){
final _that = this;
switch (_that) {
case _ErrorDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? field,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorDetails() when $default != null:
return $default(_that.field,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? field,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ErrorDetails():
return $default(_that.field,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? field,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ErrorDetails() when $default != null:
return $default(_that.field,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorDetails implements ErrorDetails {
  const _ErrorDetails({this.field, this.message});
  factory _ErrorDetails.fromJson(Map<String, dynamic> json) => _$ErrorDetailsFromJson(json);

@override final  String? field;
@override final  String? message;

/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorDetailsCopyWith<_ErrorDetails> get copyWith => __$ErrorDetailsCopyWithImpl<_ErrorDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorDetails&&(identical(other.field, field) || other.field == field)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,field,message);

@override
String toString() {
  return 'ErrorDetails(field: $field, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorDetailsCopyWith<$Res> implements $ErrorDetailsCopyWith<$Res> {
  factory _$ErrorDetailsCopyWith(_ErrorDetails value, $Res Function(_ErrorDetails) _then) = __$ErrorDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? field, String? message
});




}
/// @nodoc
class __$ErrorDetailsCopyWithImpl<$Res>
    implements _$ErrorDetailsCopyWith<$Res> {
  __$ErrorDetailsCopyWithImpl(this._self, this._then);

  final _ErrorDetails _self;
  final $Res Function(_ErrorDetails) _then;

/// Create a copy of ErrorDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? field = freezed,Object? message = freezed,}) {
  return _then(_ErrorDetails(
field: freezed == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
