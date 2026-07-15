// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
            return PaymentResponseDetailsUnknown.fromJson(
  json
);
        }
      
}

/// @nodoc
mixin _$PaymentResponseDetails {



  /// Serializes this PaymentResponseDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseDetails);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentResponseDetails()';
}


}

/// @nodoc
class $PaymentResponseDetailsCopyWith<$Res>  {
$PaymentResponseDetailsCopyWith(PaymentResponseDetails _, $Res Function(PaymentResponseDetails) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentResponseDetailsCreditCard value)?  creditCard,TResult Function( PaymentResponseDetailsBankTransfer value)?  bankTransfer,TResult Function( PaymentResponseDetailsCrypto value)?  crypto,TResult Function( PaymentResponseDetailsUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that);case PaymentResponseDetailsUnknown() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentResponseDetailsCreditCard value)  creditCard,required TResult Function( PaymentResponseDetailsBankTransfer value)  bankTransfer,required TResult Function( PaymentResponseDetailsCrypto value)  crypto,required TResult Function( PaymentResponseDetailsUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard():
return creditCard(_that);case PaymentResponseDetailsBankTransfer():
return bankTransfer(_that);case PaymentResponseDetailsCrypto():
return crypto(_that);case PaymentResponseDetailsUnknown():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentResponseDetailsCreditCard value)?  creditCard,TResult? Function( PaymentResponseDetailsBankTransfer value)?  bankTransfer,TResult? Function( PaymentResponseDetailsCrypto value)?  crypto,TResult? Function( PaymentResponseDetailsUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that);case PaymentResponseDetailsUnknown() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  creditCard,TResult Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  bankTransfer,TResult Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  crypto,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case PaymentResponseDetailsUnknown() when unknown != null:
return unknown();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)  creditCard,required TResult Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)  bankTransfer,required TResult Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)  crypto,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard():
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentResponseDetailsBankTransfer():
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentResponseDetailsCrypto():
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case PaymentResponseDetailsUnknown():
return unknown();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String cardNumber,  int expiryMonth,  int expiryYear,  String cvv,  double amount,  String? cardholderName)?  creditCard,TResult? Function( String accountNumber,  String routingNumber,  double amount,  String? accountHolder,  String? reference)?  bankTransfer,TResult? Function( String walletAddress,  CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,  double amount,  String? transactionHash)?  crypto,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case PaymentResponseDetailsCreditCard() when creditCard != null:
return creditCard(_that.cardNumber,_that.expiryMonth,_that.expiryYear,_that.cvv,_that.amount,_that.cardholderName);case PaymentResponseDetailsBankTransfer() when bankTransfer != null:
return bankTransfer(_that.accountNumber,_that.routingNumber,_that.amount,_that.accountHolder,_that.reference);case PaymentResponseDetailsCrypto() when crypto != null:
return crypto(_that.walletAddress,_that.cryptocurrency,_that.amount,_that.transactionHash);case PaymentResponseDetailsUnknown() when unknown != null:
return unknown();case _:
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
 final  double amount;
 final  String? cardholderName;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expiryMonth = null,Object? expiryYear = null,Object? cvv = null,Object? amount = null,Object? cardholderName = freezed,}) {
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
 final  double amount;
 final  String? accountHolder;
 final  String? reference;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? routingNumber = null,Object? amount = null,Object? accountHolder = freezed,Object? reference = freezed,}) {
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
 final  double amount;
 final  String? transactionHash;

@JsonKey(name: 'paymentType')
final String $type;


/// Create a copy of PaymentResponseDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? walletAddress = null,Object? cryptocurrency = null,Object? amount = null,Object? transactionHash = freezed,}) {
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
@JsonSerializable()

class PaymentResponseDetailsUnknown implements PaymentResponseDetails {
  const PaymentResponseDetailsUnknown({final  String? $type}): $type = $type ?? 'unknown';
  factory PaymentResponseDetailsUnknown.fromJson(Map<String, dynamic> json) => _$PaymentResponseDetailsUnknownFromJson(json);



@JsonKey(name: 'paymentType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseDetailsUnknownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseDetailsUnknown);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentResponseDetails.unknown()';
}


}




// dart format on
