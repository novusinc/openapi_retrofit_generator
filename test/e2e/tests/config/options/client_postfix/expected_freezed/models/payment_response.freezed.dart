// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

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

// dart format on
