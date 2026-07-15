// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_members.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
FamilyMembers _$FamilyMembersFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'Cat':
          return FamilyMembersCat.fromJson(
            json
          );
                case 'Dog':
          return FamilyMembersDog.fromJson(
            json
          );
                case 'Human':
          return FamilyMembersHuman.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'FamilyMembers',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$FamilyMembers {



  /// Serializes this FamilyMembers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMembers);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FamilyMembers()';
}


}

/// @nodoc
class $FamilyMembersCopyWith<$Res>  {
$FamilyMembersCopyWith(FamilyMembers _, $Res Function(FamilyMembers) __);
}


/// Adds pattern-matching-related methods to [FamilyMembers].
extension FamilyMembersPatterns on FamilyMembers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FamilyMembersCat value)?  cat,TResult Function( FamilyMembersDog value)?  dog,TResult Function( FamilyMembersHuman value)?  human,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FamilyMembersCat() when cat != null:
return cat(_that);case FamilyMembersDog() when dog != null:
return dog(_that);case FamilyMembersHuman() when human != null:
return human(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FamilyMembersCat value)  cat,required TResult Function( FamilyMembersDog value)  dog,required TResult Function( FamilyMembersHuman value)  human,}){
final _that = this;
switch (_that) {
case FamilyMembersCat():
return cat(_that);case FamilyMembersDog():
return dog(_that);case FamilyMembersHuman():
return human(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FamilyMembersCat value)?  cat,TResult? Function( FamilyMembersDog value)?  dog,TResult? Function( FamilyMembersHuman value)?  human,}){
final _that = this;
switch (_that) {
case FamilyMembersCat() when cat != null:
return cat(_that);case FamilyMembersDog() when dog != null:
return dog(_that);case FamilyMembersHuman() when human != null:
return human(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int mewCount)?  cat,TResult Function( String barkSound)?  dog,TResult Function( String job)?  human,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FamilyMembersCat() when cat != null:
return cat(_that.mewCount);case FamilyMembersDog() when dog != null:
return dog(_that.barkSound);case FamilyMembersHuman() when human != null:
return human(_that.job);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int mewCount)  cat,required TResult Function( String barkSound)  dog,required TResult Function( String job)  human,}) {final _that = this;
switch (_that) {
case FamilyMembersCat():
return cat(_that.mewCount);case FamilyMembersDog():
return dog(_that.barkSound);case FamilyMembersHuman():
return human(_that.job);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int mewCount)?  cat,TResult? Function( String barkSound)?  dog,TResult? Function( String job)?  human,}) {final _that = this;
switch (_that) {
case FamilyMembersCat() when cat != null:
return cat(_that.mewCount);case FamilyMembersDog() when dog != null:
return dog(_that.barkSound);case FamilyMembersHuman() when human != null:
return human(_that.job);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class FamilyMembersCat implements FamilyMembers {
  const FamilyMembersCat({required this.mewCount, final  String? $type}): $type = $type ?? 'Cat';
  factory FamilyMembersCat.fromJson(Map<String, dynamic> json) => _$FamilyMembersCatFromJson(json);

/// Number of times the cat meows.
 final  int mewCount;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of FamilyMembers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyMembersCatCopyWith<FamilyMembersCat> get copyWith => _$FamilyMembersCatCopyWithImpl<FamilyMembersCat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyMembersCatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMembersCat&&(identical(other.mewCount, mewCount) || other.mewCount == mewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mewCount);

@override
String toString() {
  return 'FamilyMembers.cat(mewCount: $mewCount)';
}


}

/// @nodoc
abstract mixin class $FamilyMembersCatCopyWith<$Res> implements $FamilyMembersCopyWith<$Res> {
  factory $FamilyMembersCatCopyWith(FamilyMembersCat value, $Res Function(FamilyMembersCat) _then) = _$FamilyMembersCatCopyWithImpl;
@useResult
$Res call({
 int mewCount
});




}
/// @nodoc
class _$FamilyMembersCatCopyWithImpl<$Res>
    implements $FamilyMembersCatCopyWith<$Res> {
  _$FamilyMembersCatCopyWithImpl(this._self, this._then);

  final FamilyMembersCat _self;
  final $Res Function(FamilyMembersCat) _then;

/// Create a copy of FamilyMembers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mewCount = null,}) {
  return _then(FamilyMembersCat(
mewCount: null == mewCount ? _self.mewCount : mewCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FamilyMembersDog implements FamilyMembers {
  const FamilyMembersDog({required this.barkSound, final  String? $type}): $type = $type ?? 'Dog';
  factory FamilyMembersDog.fromJson(Map<String, dynamic> json) => _$FamilyMembersDogFromJson(json);

/// The sound of the dog's bark.
 final  String barkSound;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of FamilyMembers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyMembersDogCopyWith<FamilyMembersDog> get copyWith => _$FamilyMembersDogCopyWithImpl<FamilyMembersDog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyMembersDogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMembersDog&&(identical(other.barkSound, barkSound) || other.barkSound == barkSound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,barkSound);

@override
String toString() {
  return 'FamilyMembers.dog(barkSound: $barkSound)';
}


}

/// @nodoc
abstract mixin class $FamilyMembersDogCopyWith<$Res> implements $FamilyMembersCopyWith<$Res> {
  factory $FamilyMembersDogCopyWith(FamilyMembersDog value, $Res Function(FamilyMembersDog) _then) = _$FamilyMembersDogCopyWithImpl;
@useResult
$Res call({
 String barkSound
});




}
/// @nodoc
class _$FamilyMembersDogCopyWithImpl<$Res>
    implements $FamilyMembersDogCopyWith<$Res> {
  _$FamilyMembersDogCopyWithImpl(this._self, this._then);

  final FamilyMembersDog _self;
  final $Res Function(FamilyMembersDog) _then;

/// Create a copy of FamilyMembers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barkSound = null,}) {
  return _then(FamilyMembersDog(
barkSound: null == barkSound ? _self.barkSound : barkSound // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FamilyMembersHuman implements FamilyMembers {
  const FamilyMembersHuman({required this.job, final  String? $type}): $type = $type ?? 'Human';
  factory FamilyMembersHuman.fromJson(Map<String, dynamic> json) => _$FamilyMembersHumanFromJson(json);

/// The job of the human.
 final  String job;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of FamilyMembers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyMembersHumanCopyWith<FamilyMembersHuman> get copyWith => _$FamilyMembersHumanCopyWithImpl<FamilyMembersHuman>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyMembersHumanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyMembersHuman&&(identical(other.job, job) || other.job == job));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,job);

@override
String toString() {
  return 'FamilyMembers.human(job: $job)';
}


}

/// @nodoc
abstract mixin class $FamilyMembersHumanCopyWith<$Res> implements $FamilyMembersCopyWith<$Res> {
  factory $FamilyMembersHumanCopyWith(FamilyMembersHuman value, $Res Function(FamilyMembersHuman) _then) = _$FamilyMembersHumanCopyWithImpl;
@useResult
$Res call({
 String job
});




}
/// @nodoc
class _$FamilyMembersHumanCopyWithImpl<$Res>
    implements $FamilyMembersHumanCopyWith<$Res> {
  _$FamilyMembersHumanCopyWithImpl(this._self, this._then);

  final FamilyMembersHuman _self;
  final $Res Function(FamilyMembersHuman) _then;

/// Create a copy of FamilyMembers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? job = null,}) {
  return _then(FamilyMembersHuman(
job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
