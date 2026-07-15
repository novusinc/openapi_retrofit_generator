// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageEvent {

 String get id;@JsonKey(name: 'created_at') DateTime get createdAt; String get text; String get type;
/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageEventCopyWith<MessageEvent> get copyWith => _$MessageEventCopyWithImpl<MessageEvent>(this as MessageEvent, _$identity);

  /// Serializes this MessageEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,text,type);

@override
String toString() {
  return 'MessageEvent(id: $id, createdAt: $createdAt, text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class $MessageEventCopyWith<$Res>  {
  factory $MessageEventCopyWith(MessageEvent value, $Res Function(MessageEvent) _then) = _$MessageEventCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt, String text, String type
});




}
/// @nodoc
class _$MessageEventCopyWithImpl<$Res>
    implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._self, this._then);

  final MessageEvent _self;
  final $Res Function(MessageEvent) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? text = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageEvent].
extension MessageEventPatterns on MessageEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageEvent value)  $default,){
final _that = this;
switch (_that) {
case _MessageEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageEvent value)?  $default,){
final _that = this;
switch (_that) {
case _MessageEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt,  String text,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageEvent() when $default != null:
return $default(_that.id,_that.createdAt,_that.text,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt,  String text,  String type)  $default,) {final _that = this;
switch (_that) {
case _MessageEvent():
return $default(_that.id,_that.createdAt,_that.text,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt,  String text,  String type)?  $default,) {final _that = this;
switch (_that) {
case _MessageEvent() when $default != null:
return $default(_that.id,_that.createdAt,_that.text,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageEvent implements MessageEvent {
  const _MessageEvent({required this.id, @JsonKey(name: 'created_at') required this.createdAt, required this.text, this.type = 'message'});
  factory _MessageEvent.fromJson(Map<String, dynamic> json) => _$MessageEventFromJson(json);

@override final  String id;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override final  String text;
@override@JsonKey() final  String type;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageEventCopyWith<_MessageEvent> get copyWith => __$MessageEventCopyWithImpl<_MessageEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,text,type);

@override
String toString() {
  return 'MessageEvent(id: $id, createdAt: $createdAt, text: $text, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MessageEventCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$MessageEventCopyWith(_MessageEvent value, $Res Function(_MessageEvent) _then) = __$MessageEventCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt, String text, String type
});




}
/// @nodoc
class __$MessageEventCopyWithImpl<$Res>
    implements _$MessageEventCopyWith<$Res> {
  __$MessageEventCopyWithImpl(this._self, this._then);

  final _MessageEvent _self;
  final $Res Function(_MessageEvent) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? text = null,Object? type = null,}) {
  return _then(_MessageEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PresenceEvent {

 String get id;@JsonKey(name: 'created_at') DateTime get createdAt; String get type; bool get online;
/// Create a copy of PresenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresenceEventCopyWith<PresenceEvent> get copyWith => _$PresenceEventCopyWithImpl<PresenceEvent>(this as PresenceEvent, _$identity);

  /// Serializes this PresenceEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresenceEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.online, online) || other.online == online));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,type,online);

@override
String toString() {
  return 'PresenceEvent(id: $id, createdAt: $createdAt, type: $type, online: $online)';
}


}

/// @nodoc
abstract mixin class $PresenceEventCopyWith<$Res>  {
  factory $PresenceEventCopyWith(PresenceEvent value, $Res Function(PresenceEvent) _then) = _$PresenceEventCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt, String type, bool online
});




}
/// @nodoc
class _$PresenceEventCopyWithImpl<$Res>
    implements $PresenceEventCopyWith<$Res> {
  _$PresenceEventCopyWithImpl(this._self, this._then);

  final PresenceEvent _self;
  final $Res Function(PresenceEvent) _then;

/// Create a copy of PresenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? type = null,Object? online = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,online: null == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PresenceEvent].
extension PresenceEventPatterns on PresenceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresenceEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresenceEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresenceEvent value)  $default,){
final _that = this;
switch (_that) {
case _PresenceEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresenceEvent value)?  $default,){
final _that = this;
switch (_that) {
case _PresenceEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt,  String type,  bool online)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresenceEvent() when $default != null:
return $default(_that.id,_that.createdAt,_that.type,_that.online);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt,  String type,  bool online)  $default,) {final _that = this;
switch (_that) {
case _PresenceEvent():
return $default(_that.id,_that.createdAt,_that.type,_that.online);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt,  String type,  bool online)?  $default,) {final _that = this;
switch (_that) {
case _PresenceEvent() when $default != null:
return $default(_that.id,_that.createdAt,_that.type,_that.online);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PresenceEvent implements PresenceEvent {
  const _PresenceEvent({required this.id, @JsonKey(name: 'created_at') required this.createdAt, this.type = 'presence', this.online = false});
  factory _PresenceEvent.fromJson(Map<String, dynamic> json) => _$PresenceEventFromJson(json);

@override final  String id;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey() final  String type;
@override@JsonKey() final  bool online;

/// Create a copy of PresenceEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresenceEventCopyWith<_PresenceEvent> get copyWith => __$PresenceEventCopyWithImpl<_PresenceEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresenceEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresenceEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.online, online) || other.online == online));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,type,online);

@override
String toString() {
  return 'PresenceEvent(id: $id, createdAt: $createdAt, type: $type, online: $online)';
}


}

/// @nodoc
abstract mixin class _$PresenceEventCopyWith<$Res> implements $PresenceEventCopyWith<$Res> {
  factory _$PresenceEventCopyWith(_PresenceEvent value, $Res Function(_PresenceEvent) _then) = __$PresenceEventCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt, String type, bool online
});




}
/// @nodoc
class __$PresenceEventCopyWithImpl<$Res>
    implements _$PresenceEventCopyWith<$Res> {
  __$PresenceEventCopyWithImpl(this._self, this._then);

  final _PresenceEvent _self;
  final $Res Function(_PresenceEvent) _then;

/// Create a copy of PresenceEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? type = null,Object? online = null,}) {
  return _then(_PresenceEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,online: null == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$TypingEvent {

 String get id;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(includeIfNull: false, name: 'user_id') String? get userId; String get type;
/// Create a copy of TypingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypingEventCopyWith<TypingEvent> get copyWith => _$TypingEventCopyWithImpl<TypingEvent>(this as TypingEvent, _$identity);

  /// Serializes this TypingEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,userId,type);

@override
String toString() {
  return 'TypingEvent(id: $id, createdAt: $createdAt, userId: $userId, type: $type)';
}


}

/// @nodoc
abstract mixin class $TypingEventCopyWith<$Res>  {
  factory $TypingEventCopyWith(TypingEvent value, $Res Function(TypingEvent) _then) = _$TypingEventCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(includeIfNull: false, name: 'user_id') String? userId, String type
});




}
/// @nodoc
class _$TypingEventCopyWithImpl<$Res>
    implements $TypingEventCopyWith<$Res> {
  _$TypingEventCopyWithImpl(this._self, this._then);

  final TypingEvent _self;
  final $Res Function(TypingEvent) _then;

/// Create a copy of TypingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? userId = freezed,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TypingEvent].
extension TypingEventPatterns on TypingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypingEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypingEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypingEvent value)  $default,){
final _that = this;
switch (_that) {
case _TypingEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypingEvent value)?  $default,){
final _that = this;
switch (_that) {
case _TypingEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(includeIfNull: false, name: 'user_id')  String? userId,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypingEvent() when $default != null:
return $default(_that.id,_that.createdAt,_that.userId,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(includeIfNull: false, name: 'user_id')  String? userId,  String type)  $default,) {final _that = this;
switch (_that) {
case _TypingEvent():
return $default(_that.id,_that.createdAt,_that.userId,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(includeIfNull: false, name: 'user_id')  String? userId,  String type)?  $default,) {final _that = this;
switch (_that) {
case _TypingEvent() when $default != null:
return $default(_that.id,_that.createdAt,_that.userId,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypingEvent implements TypingEvent {
  const _TypingEvent({required this.id, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(includeIfNull: false, name: 'user_id') this.userId, this.type = 'typing'});
  factory _TypingEvent.fromJson(Map<String, dynamic> json) => _$TypingEventFromJson(json);

@override final  String id;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(includeIfNull: false, name: 'user_id') final  String? userId;
@override@JsonKey() final  String type;

/// Create a copy of TypingEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypingEventCopyWith<_TypingEvent> get copyWith => __$TypingEventCopyWithImpl<_TypingEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypingEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypingEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,userId,type);

@override
String toString() {
  return 'TypingEvent(id: $id, createdAt: $createdAt, userId: $userId, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypingEventCopyWith<$Res> implements $TypingEventCopyWith<$Res> {
  factory _$TypingEventCopyWith(_TypingEvent value, $Res Function(_TypingEvent) _then) = __$TypingEventCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(includeIfNull: false, name: 'user_id') String? userId, String type
});




}
/// @nodoc
class __$TypingEventCopyWithImpl<$Res>
    implements _$TypingEventCopyWith<$Res> {
  __$TypingEventCopyWithImpl(this._self, this._then);

  final _TypingEvent _self;
  final $Res Function(_TypingEvent) _then;

/// Create a copy of TypingEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? userId = freezed,Object? type = null,}) {
  return _then(_TypingEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
