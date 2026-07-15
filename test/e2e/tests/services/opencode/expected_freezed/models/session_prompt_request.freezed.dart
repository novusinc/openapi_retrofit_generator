// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_prompt_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionPromptRequest {

 List<SessionPromptRequestParts> get parts;@JsonKey(name: 'messageID') String? get messageId; SessionPromptRequestModel? get model; String? get agent; String? get system; Map<String, bool>? get tools; SessionPromptRequestAcpConnection? get acpConnection;
/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionPromptRequestCopyWith<SessionPromptRequest> get copyWith => _$SessionPromptRequestCopyWithImpl<SessionPromptRequest>(this as SessionPromptRequest, _$identity);

  /// Serializes this SessionPromptRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionPromptRequest&&const DeepCollectionEquality().equals(other.parts, parts)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.model, model) || other.model == model)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.system, system) || other.system == system)&&const DeepCollectionEquality().equals(other.tools, tools)&&(identical(other.acpConnection, acpConnection) || other.acpConnection == acpConnection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parts),messageId,model,agent,system,const DeepCollectionEquality().hash(tools),acpConnection);

@override
String toString() {
  return 'SessionPromptRequest(parts: $parts, messageId: $messageId, model: $model, agent: $agent, system: $system, tools: $tools, acpConnection: $acpConnection)';
}


}

/// @nodoc
abstract mixin class $SessionPromptRequestCopyWith<$Res>  {
  factory $SessionPromptRequestCopyWith(SessionPromptRequest value, $Res Function(SessionPromptRequest) _then) = _$SessionPromptRequestCopyWithImpl;
@useResult
$Res call({
 List<SessionPromptRequestParts> parts,@JsonKey(name: 'messageID') String? messageId, SessionPromptRequestModel? model, String? agent, String? system, Map<String, bool>? tools, SessionPromptRequestAcpConnection? acpConnection
});


$SessionPromptRequestModelCopyWith<$Res>? get model;$SessionPromptRequestAcpConnectionCopyWith<$Res>? get acpConnection;

}
/// @nodoc
class _$SessionPromptRequestCopyWithImpl<$Res>
    implements $SessionPromptRequestCopyWith<$Res> {
  _$SessionPromptRequestCopyWithImpl(this._self, this._then);

  final SessionPromptRequest _self;
  final $Res Function(SessionPromptRequest) _then;

/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parts = null,Object? messageId = freezed,Object? model = freezed,Object? agent = freezed,Object? system = freezed,Object? tools = freezed,Object? acpConnection = freezed,}) {
  return _then(_self.copyWith(
parts: null == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<SessionPromptRequestParts>,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as SessionPromptRequestModel?,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as String?,system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,tools: freezed == tools ? _self.tools : tools // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,acpConnection: freezed == acpConnection ? _self.acpConnection : acpConnection // ignore: cast_nullable_to_non_nullable
as SessionPromptRequestAcpConnection?,
  ));
}
/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionPromptRequestModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $SessionPromptRequestModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionPromptRequestAcpConnectionCopyWith<$Res>? get acpConnection {
    if (_self.acpConnection == null) {
    return null;
  }

  return $SessionPromptRequestAcpConnectionCopyWith<$Res>(_self.acpConnection!, (value) {
    return _then(_self.copyWith(acpConnection: value));
  });
}
}


/// Adds pattern-matching-related methods to [SessionPromptRequest].
extension SessionPromptRequestPatterns on SessionPromptRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionPromptRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionPromptRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionPromptRequest value)  $default,){
final _that = this;
switch (_that) {
case _SessionPromptRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionPromptRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SessionPromptRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SessionPromptRequestParts> parts, @JsonKey(name: 'messageID')  String? messageId,  SessionPromptRequestModel? model,  String? agent,  String? system,  Map<String, bool>? tools,  SessionPromptRequestAcpConnection? acpConnection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionPromptRequest() when $default != null:
return $default(_that.parts,_that.messageId,_that.model,_that.agent,_that.system,_that.tools,_that.acpConnection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SessionPromptRequestParts> parts, @JsonKey(name: 'messageID')  String? messageId,  SessionPromptRequestModel? model,  String? agent,  String? system,  Map<String, bool>? tools,  SessionPromptRequestAcpConnection? acpConnection)  $default,) {final _that = this;
switch (_that) {
case _SessionPromptRequest():
return $default(_that.parts,_that.messageId,_that.model,_that.agent,_that.system,_that.tools,_that.acpConnection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SessionPromptRequestParts> parts, @JsonKey(name: 'messageID')  String? messageId,  SessionPromptRequestModel? model,  String? agent,  String? system,  Map<String, bool>? tools,  SessionPromptRequestAcpConnection? acpConnection)?  $default,) {final _that = this;
switch (_that) {
case _SessionPromptRequest() when $default != null:
return $default(_that.parts,_that.messageId,_that.model,_that.agent,_that.system,_that.tools,_that.acpConnection);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionPromptRequest implements SessionPromptRequest {
  const _SessionPromptRequest({required final  List<SessionPromptRequestParts> parts, @JsonKey(name: 'messageID') this.messageId, this.model, this.agent, this.system, final  Map<String, bool>? tools, this.acpConnection}): _parts = parts,_tools = tools;
  factory _SessionPromptRequest.fromJson(Map<String, dynamic> json) => _$SessionPromptRequestFromJson(json);

 final  List<SessionPromptRequestParts> _parts;
@override List<SessionPromptRequestParts> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}

@override@JsonKey(name: 'messageID') final  String? messageId;
@override final  SessionPromptRequestModel? model;
@override final  String? agent;
@override final  String? system;
 final  Map<String, bool>? _tools;
@override Map<String, bool>? get tools {
  final value = _tools;
  if (value == null) return null;
  if (_tools is EqualUnmodifiableMapView) return _tools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  SessionPromptRequestAcpConnection? acpConnection;

/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionPromptRequestCopyWith<_SessionPromptRequest> get copyWith => __$SessionPromptRequestCopyWithImpl<_SessionPromptRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionPromptRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionPromptRequest&&const DeepCollectionEquality().equals(other._parts, _parts)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.model, model) || other.model == model)&&(identical(other.agent, agent) || other.agent == agent)&&(identical(other.system, system) || other.system == system)&&const DeepCollectionEquality().equals(other._tools, _tools)&&(identical(other.acpConnection, acpConnection) || other.acpConnection == acpConnection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parts),messageId,model,agent,system,const DeepCollectionEquality().hash(_tools),acpConnection);

@override
String toString() {
  return 'SessionPromptRequest(parts: $parts, messageId: $messageId, model: $model, agent: $agent, system: $system, tools: $tools, acpConnection: $acpConnection)';
}


}

/// @nodoc
abstract mixin class _$SessionPromptRequestCopyWith<$Res> implements $SessionPromptRequestCopyWith<$Res> {
  factory _$SessionPromptRequestCopyWith(_SessionPromptRequest value, $Res Function(_SessionPromptRequest) _then) = __$SessionPromptRequestCopyWithImpl;
@override @useResult
$Res call({
 List<SessionPromptRequestParts> parts,@JsonKey(name: 'messageID') String? messageId, SessionPromptRequestModel? model, String? agent, String? system, Map<String, bool>? tools, SessionPromptRequestAcpConnection? acpConnection
});


@override $SessionPromptRequestModelCopyWith<$Res>? get model;@override $SessionPromptRequestAcpConnectionCopyWith<$Res>? get acpConnection;

}
/// @nodoc
class __$SessionPromptRequestCopyWithImpl<$Res>
    implements _$SessionPromptRequestCopyWith<$Res> {
  __$SessionPromptRequestCopyWithImpl(this._self, this._then);

  final _SessionPromptRequest _self;
  final $Res Function(_SessionPromptRequest) _then;

/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parts = null,Object? messageId = freezed,Object? model = freezed,Object? agent = freezed,Object? system = freezed,Object? tools = freezed,Object? acpConnection = freezed,}) {
  return _then(_SessionPromptRequest(
parts: null == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<SessionPromptRequestParts>,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as SessionPromptRequestModel?,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as String?,system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,tools: freezed == tools ? _self._tools : tools // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,acpConnection: freezed == acpConnection ? _self.acpConnection : acpConnection // ignore: cast_nullable_to_non_nullable
as SessionPromptRequestAcpConnection?,
  ));
}

/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionPromptRequestModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $SessionPromptRequestModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}/// Create a copy of SessionPromptRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionPromptRequestAcpConnectionCopyWith<$Res>? get acpConnection {
    if (_self.acpConnection == null) {
    return null;
  }

  return $SessionPromptRequestAcpConnectionCopyWith<$Res>(_self.acpConnection!, (value) {
    return _then(_self.copyWith(acpConnection: value));
  });
}
}

// dart format on
