// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 EmailValidator get email; PasswordValidator get password; ProcessState get loginState; bool get obscurePassword;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.loginState, loginState) || other.loginState == loginState)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,loginState,obscurePassword);

@override
String toString() {
  return 'LoginState(email: $email, password: $password, loginState: $loginState, obscurePassword: $obscurePassword)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 EmailValidator email, PasswordValidator password, ProcessState loginState, bool obscurePassword
});


$ProcessStateCopyWith<$Res> get loginState;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? loginState = null,Object? obscurePassword = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordValidator,loginState: null == loginState ? _self.loginState : loginState // ignore: cast_nullable_to_non_nullable
as ProcessState,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get loginState {
  
  return $ProcessStateCopyWith<$Res>(_self.loginState, (value) {
    return _then(_self.copyWith(loginState: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailValidator email,  PasswordValidator password,  ProcessState loginState,  bool obscurePassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.email,_that.password,_that.loginState,_that.obscurePassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailValidator email,  PasswordValidator password,  ProcessState loginState,  bool obscurePassword)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.email,_that.password,_that.loginState,_that.obscurePassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailValidator email,  PasswordValidator password,  ProcessState loginState,  bool obscurePassword)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.email,_that.password,_that.loginState,_that.obscurePassword);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState extends LoginState {
  const _LoginState({this.email = const EmailValidator.pure(), this.password = const PasswordValidator.pure(), this.loginState = const ProcessState.initial(), this.obscurePassword = true}): super._();
  

@override@JsonKey() final  EmailValidator email;
@override@JsonKey() final  PasswordValidator password;
@override@JsonKey() final  ProcessState loginState;
@override@JsonKey() final  bool obscurePassword;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.loginState, loginState) || other.loginState == loginState)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,loginState,obscurePassword);

@override
String toString() {
  return 'LoginState(email: $email, password: $password, loginState: $loginState, obscurePassword: $obscurePassword)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 EmailValidator email, PasswordValidator password, ProcessState loginState, bool obscurePassword
});


@override $ProcessStateCopyWith<$Res> get loginState;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? loginState = null,Object? obscurePassword = null,}) {
  return _then(_LoginState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordValidator,loginState: null == loginState ? _self.loginState : loginState // ignore: cast_nullable_to_non_nullable
as ProcessState,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get loginState {
  
  return $ProcessStateCopyWith<$Res>(_self.loginState, (value) {
    return _then(_self.copyWith(loginState: value));
  });
}
}

/// @nodoc
mixin _$RegisterState {

 EmailValidator get email; PasswordValidator get password; ProcessState get registerState; bool get obscurePassword;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.registerState, registerState) || other.registerState == registerState)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,registerState,obscurePassword);

@override
String toString() {
  return 'RegisterState(email: $email, password: $password, registerState: $registerState, obscurePassword: $obscurePassword)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 EmailValidator email, PasswordValidator password, ProcessState registerState, bool obscurePassword
});


$ProcessStateCopyWith<$Res> get registerState;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? registerState = null,Object? obscurePassword = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordValidator,registerState: null == registerState ? _self.registerState : registerState // ignore: cast_nullable_to_non_nullable
as ProcessState,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get registerState {
  
  return $ProcessStateCopyWith<$Res>(_self.registerState, (value) {
    return _then(_self.copyWith(registerState: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailValidator email,  PasswordValidator password,  ProcessState registerState,  bool obscurePassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.email,_that.password,_that.registerState,_that.obscurePassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailValidator email,  PasswordValidator password,  ProcessState registerState,  bool obscurePassword)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.email,_that.password,_that.registerState,_that.obscurePassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailValidator email,  PasswordValidator password,  ProcessState registerState,  bool obscurePassword)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.email,_that.password,_that.registerState,_that.obscurePassword);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState extends RegisterState {
  const _RegisterState({this.email = const EmailValidator.pure(), this.password = const PasswordValidator.pure(), this.registerState = const ProcessState.initial(), this.obscurePassword = true}): super._();
  

@override@JsonKey() final  EmailValidator email;
@override@JsonKey() final  PasswordValidator password;
@override@JsonKey() final  ProcessState registerState;
@override@JsonKey() final  bool obscurePassword;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.registerState, registerState) || other.registerState == registerState)&&(identical(other.obscurePassword, obscurePassword) || other.obscurePassword == obscurePassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,registerState,obscurePassword);

@override
String toString() {
  return 'RegisterState(email: $email, password: $password, registerState: $registerState, obscurePassword: $obscurePassword)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 EmailValidator email, PasswordValidator password, ProcessState registerState, bool obscurePassword
});


@override $ProcessStateCopyWith<$Res> get registerState;

}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? registerState = null,Object? obscurePassword = null,}) {
  return _then(_RegisterState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordValidator,registerState: null == registerState ? _self.registerState : registerState // ignore: cast_nullable_to_non_nullable
as ProcessState,obscurePassword: null == obscurePassword ? _self.obscurePassword : obscurePassword // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get registerState {
  
  return $ProcessStateCopyWith<$Res>(_self.registerState, (value) {
    return _then(_self.copyWith(registerState: value));
  });
}
}

// dart format on
