// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState()';
}


}

/// @nodoc
class $ProcessStateCopyWith<$Res>  {
$ProcessStateCopyWith(ProcessState _, $Res Function(ProcessState) __);
}


/// Adds pattern-matching-related methods to [ProcessState].
extension ProcessStatePatterns on ProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProcessInitialState value)?  initial,TResult Function( _ProcessInActionState value)?  inAction,TResult Function( _ProcessSuccessState value)?  success,TResult Function( _ProcessErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProcessInitialState() when initial != null:
return initial(_that);case _ProcessInActionState() when inAction != null:
return inAction(_that);case _ProcessSuccessState() when success != null:
return success(_that);case _ProcessErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProcessInitialState value)  initial,required TResult Function( _ProcessInActionState value)  inAction,required TResult Function( _ProcessSuccessState value)  success,required TResult Function( _ProcessErrorState value)  error,}){
final _that = this;
switch (_that) {
case _ProcessInitialState():
return initial(_that);case _ProcessInActionState():
return inAction(_that);case _ProcessSuccessState():
return success(_that);case _ProcessErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProcessInitialState value)?  initial,TResult? Function( _ProcessInActionState value)?  inAction,TResult? Function( _ProcessSuccessState value)?  success,TResult? Function( _ProcessErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _ProcessInitialState() when initial != null:
return initial(_that);case _ProcessInActionState() when inAction != null:
return inAction(_that);case _ProcessSuccessState() when success != null:
return success(_that);case _ProcessErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  inAction,TResult Function()?  success,TResult Function( Object error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProcessInitialState() when initial != null:
return initial();case _ProcessInActionState() when inAction != null:
return inAction();case _ProcessSuccessState() when success != null:
return success();case _ProcessErrorState() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  inAction,required TResult Function()  success,required TResult Function( Object error)  error,}) {final _that = this;
switch (_that) {
case _ProcessInitialState():
return initial();case _ProcessInActionState():
return inAction();case _ProcessSuccessState():
return success();case _ProcessErrorState():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  inAction,TResult? Function()?  success,TResult? Function( Object error)?  error,}) {final _that = this;
switch (_that) {
case _ProcessInitialState() when initial != null:
return initial();case _ProcessInActionState() when inAction != null:
return inAction();case _ProcessSuccessState() when success != null:
return success();case _ProcessErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ProcessInitialState extends ProcessState {
  const _ProcessInitialState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcessInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.initial()';
}


}




/// @nodoc


class _ProcessInActionState extends ProcessState {
  const _ProcessInActionState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcessInActionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.inAction()';
}


}




/// @nodoc


class _ProcessSuccessState extends ProcessState {
  const _ProcessSuccessState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcessSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProcessState.success()';
}


}




/// @nodoc


class _ProcessErrorState extends ProcessState {
  const _ProcessErrorState({required this.error}): super._();
  

 final  Object error;

/// Create a copy of ProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcessErrorStateCopyWith<_ProcessErrorState> get copyWith => __$ProcessErrorStateCopyWithImpl<_ProcessErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcessErrorState&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ProcessState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ProcessErrorStateCopyWith<$Res> implements $ProcessStateCopyWith<$Res> {
  factory _$ProcessErrorStateCopyWith(_ProcessErrorState value, $Res Function(_ProcessErrorState) _then) = __$ProcessErrorStateCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class __$ProcessErrorStateCopyWithImpl<$Res>
    implements _$ProcessErrorStateCopyWith<$Res> {
  __$ProcessErrorStateCopyWithImpl(this._self, this._then);

  final _ProcessErrorState _self;
  final $Res Function(_ProcessErrorState) _then;

/// Create a copy of ProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ProcessErrorState(
error: null == error ? _self.error : error ,
  ));
}


}

// dart format on
