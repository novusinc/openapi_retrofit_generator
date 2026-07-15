// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Ai _$AiFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'model':
          return AiModel.fromJson(
            json
          );
                case 'agent':
          return AiAgent.fromJson(
            json
          );
                case 'custom':
          return AiCustom.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'Ai',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$Ai {

/// Model ID
 String get id;/// Model name
 String get name;
/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiCopyWith<Ai> get copyWith => _$AiCopyWithImpl<Ai>(this as Ai, _$identity);

  /// Serializes this Ai to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ai&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Ai(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AiCopyWith<$Res>  {
  factory $AiCopyWith(Ai value, $Res Function(Ai) _then) = _$AiCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$AiCopyWithImpl<$Res>
    implements $AiCopyWith<$Res> {
  _$AiCopyWithImpl(this._self, this._then);

  final Ai _self;
  final $Res Function(Ai) _then;

/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Ai].
extension AiPatterns on Ai {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AiModel value)?  model,TResult Function( AiAgent value)?  agent,TResult Function( AiCustom value)?  custom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AiModel() when model != null:
return model(_that);case AiAgent() when agent != null:
return agent(_that);case AiCustom() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AiModel value)  model,required TResult Function( AiAgent value)  agent,required TResult Function( AiCustom value)  custom,}){
final _that = this;
switch (_that) {
case AiModel():
return model(_that);case AiAgent():
return agent(_that);case AiCustom():
return custom(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AiModel value)?  model,TResult? Function( AiAgent value)?  agent,TResult? Function( AiCustom value)?  custom,}){
final _that = this;
switch (_that) {
case AiModel() when model != null:
return model(_that);case AiAgent() when agent != null:
return agent(_that);case AiCustom() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String name)?  model,TResult Function( String id,  String name)?  agent,TResult Function( String id,  String name,  String baseAiId, @JsonKey(includeIfNull: false)  Ai? baseAi)?  custom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AiModel() when model != null:
return model(_that.id,_that.name);case AiAgent() when agent != null:
return agent(_that.id,_that.name);case AiCustom() when custom != null:
return custom(_that.id,_that.name,_that.baseAiId,_that.baseAi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String name)  model,required TResult Function( String id,  String name)  agent,required TResult Function( String id,  String name,  String baseAiId, @JsonKey(includeIfNull: false)  Ai? baseAi)  custom,}) {final _that = this;
switch (_that) {
case AiModel():
return model(_that.id,_that.name);case AiAgent():
return agent(_that.id,_that.name);case AiCustom():
return custom(_that.id,_that.name,_that.baseAiId,_that.baseAi);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String name)?  model,TResult? Function( String id,  String name)?  agent,TResult? Function( String id,  String name,  String baseAiId, @JsonKey(includeIfNull: false)  Ai? baseAi)?  custom,}) {final _that = this;
switch (_that) {
case AiModel() when model != null:
return model(_that.id,_that.name);case AiAgent() when agent != null:
return agent(_that.id,_that.name);case AiCustom() when custom != null:
return custom(_that.id,_that.name,_that.baseAiId,_that.baseAi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class AiModel implements Ai {
  const AiModel({required this.id, required this.name, final  String? $type}): $type = $type ?? 'model';
  factory AiModel.fromJson(Map<String, dynamic> json) => _$AiModelFromJson(json);

/// Model ID
@override final  String id;
/// Model name
@override final  String name;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiModelCopyWith<AiModel> get copyWith => _$AiModelCopyWithImpl<AiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Ai.model(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AiModelCopyWith<$Res> implements $AiCopyWith<$Res> {
  factory $AiModelCopyWith(AiModel value, $Res Function(AiModel) _then) = _$AiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$AiModelCopyWithImpl<$Res>
    implements $AiModelCopyWith<$Res> {
  _$AiModelCopyWithImpl(this._self, this._then);

  final AiModel _self;
  final $Res Function(AiModel) _then;

/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(AiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AiAgent implements Ai {
  const AiAgent({required this.id, required this.name, final  String? $type}): $type = $type ?? 'agent';
  factory AiAgent.fromJson(Map<String, dynamic> json) => _$AiAgentFromJson(json);

/// Agent ID
@override final  String id;
/// Agent name
@override final  String name;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiAgentCopyWith<AiAgent> get copyWith => _$AiAgentCopyWithImpl<AiAgent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiAgentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiAgent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Ai.agent(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AiAgentCopyWith<$Res> implements $AiCopyWith<$Res> {
  factory $AiAgentCopyWith(AiAgent value, $Res Function(AiAgent) _then) = _$AiAgentCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$AiAgentCopyWithImpl<$Res>
    implements $AiAgentCopyWith<$Res> {
  _$AiAgentCopyWithImpl(this._self, this._then);

  final AiAgent _self;
  final $Res Function(AiAgent) _then;

/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(AiAgent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AiCustom implements Ai {
  const AiCustom({required this.id, required this.name, required this.baseAiId, @JsonKey(includeIfNull: false) this.baseAi, final  String? $type}): $type = $type ?? 'custom';
  factory AiCustom.fromJson(Map<String, dynamic> json) => _$AiCustomFromJson(json);

/// CustomAI ID
@override final  String id;
/// CustomAI name
@override final  String name;
/// Reference to base AI model/agent ID
 final  String baseAiId;
/// Recursive reference: CustomAI can have a baseAi which is also an AI (SELF-REFERENCE TEST)
@JsonKey(includeIfNull: false) final  Ai? baseAi;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiCustomCopyWith<AiCustom> get copyWith => _$AiCustomCopyWithImpl<AiCustom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiCustomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiCustom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.baseAiId, baseAiId) || other.baseAiId == baseAiId)&&(identical(other.baseAi, baseAi) || other.baseAi == baseAi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,baseAiId,baseAi);

@override
String toString() {
  return 'Ai.custom(id: $id, name: $name, baseAiId: $baseAiId, baseAi: $baseAi)';
}


}

/// @nodoc
abstract mixin class $AiCustomCopyWith<$Res> implements $AiCopyWith<$Res> {
  factory $AiCustomCopyWith(AiCustom value, $Res Function(AiCustom) _then) = _$AiCustomCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String baseAiId,@JsonKey(includeIfNull: false) Ai? baseAi
});


$AiCopyWith<$Res>? get baseAi;

}
/// @nodoc
class _$AiCustomCopyWithImpl<$Res>
    implements $AiCustomCopyWith<$Res> {
  _$AiCustomCopyWithImpl(this._self, this._then);

  final AiCustom _self;
  final $Res Function(AiCustom) _then;

/// Create a copy of Ai
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? baseAiId = null,Object? baseAi = freezed,}) {
  return _then(AiCustom(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseAiId: null == baseAiId ? _self.baseAiId : baseAiId // ignore: cast_nullable_to_non_nullable
as String,baseAi: freezed == baseAi ? _self.baseAi : baseAi // ignore: cast_nullable_to_non_nullable
as Ai?,
  ));
}

/// Create a copy of Ai
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
