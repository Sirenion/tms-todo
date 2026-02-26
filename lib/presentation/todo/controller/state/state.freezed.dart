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
mixin _$AddTodoState {

 TodoValidator get title; TodoValidator get note; ProcessState get status;
/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTodoStateCopyWith<AddTodoState> get copyWith => _$AddTodoStateCopyWithImpl<AddTodoState>(this as AddTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTodoState&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,title,note,status);

@override
String toString() {
  return 'AddTodoState(title: $title, note: $note, status: $status)';
}


}

/// @nodoc
abstract mixin class $AddTodoStateCopyWith<$Res>  {
  factory $AddTodoStateCopyWith(AddTodoState value, $Res Function(AddTodoState) _then) = _$AddTodoStateCopyWithImpl;
@useResult
$Res call({
 TodoValidator title, TodoValidator note, ProcessState status
});


$ProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class _$AddTodoStateCopyWithImpl<$Res>
    implements $AddTodoStateCopyWith<$Res> {
  _$AddTodoStateCopyWithImpl(this._self, this._then);

  final AddTodoState _self;
  final $Res Function(AddTodoState) _then;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? note = null,Object? status = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as TodoValidator,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as TodoValidator,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get status {
  
  return $ProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddTodoState].
extension AddTodoStatePatterns on AddTodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddTodoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddTodoState value)  $default,){
final _that = this;
switch (_that) {
case _AddTodoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddTodoState value)?  $default,){
final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TodoValidator title,  TodoValidator note,  ProcessState status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
return $default(_that.title,_that.note,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TodoValidator title,  TodoValidator note,  ProcessState status)  $default,) {final _that = this;
switch (_that) {
case _AddTodoState():
return $default(_that.title,_that.note,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TodoValidator title,  TodoValidator note,  ProcessState status)?  $default,) {final _that = this;
switch (_that) {
case _AddTodoState() when $default != null:
return $default(_that.title,_that.note,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _AddTodoState extends AddTodoState {
  const _AddTodoState({this.title = const TodoValidator.pure(), this.note = const TodoValidator.pure(), this.status = const ProcessState.initial()}): super._();
  

@override@JsonKey() final  TodoValidator title;
@override@JsonKey() final  TodoValidator note;
@override@JsonKey() final  ProcessState status;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTodoStateCopyWith<_AddTodoState> get copyWith => __$AddTodoStateCopyWithImpl<_AddTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTodoState&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,title,note,status);

@override
String toString() {
  return 'AddTodoState(title: $title, note: $note, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AddTodoStateCopyWith<$Res> implements $AddTodoStateCopyWith<$Res> {
  factory _$AddTodoStateCopyWith(_AddTodoState value, $Res Function(_AddTodoState) _then) = __$AddTodoStateCopyWithImpl;
@override @useResult
$Res call({
 TodoValidator title, TodoValidator note, ProcessState status
});


@override $ProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$AddTodoStateCopyWithImpl<$Res>
    implements _$AddTodoStateCopyWith<$Res> {
  __$AddTodoStateCopyWithImpl(this._self, this._then);

  final _AddTodoState _self;
  final $Res Function(_AddTodoState) _then;

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? note = null,Object? status = null,}) {
  return _then(_AddTodoState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as TodoValidator,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as TodoValidator,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of AddTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get status {
  
  return $ProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$TodoListState {

 bool get isLoading; ProcessState get status; List<TodoEntity> get todoList; Object? get error;
/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoListStateCopyWith<TodoListState> get copyWith => _$TodoListStateCopyWithImpl<TodoListState>(this as TodoListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.todoList, todoList)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,status,const DeepCollectionEquality().hash(todoList),const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'TodoListState(isLoading: $isLoading, status: $status, todoList: $todoList, error: $error)';
}


}

/// @nodoc
abstract mixin class $TodoListStateCopyWith<$Res>  {
  factory $TodoListStateCopyWith(TodoListState value, $Res Function(TodoListState) _then) = _$TodoListStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ProcessState status, List<TodoEntity> todoList, Object? error
});


$ProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._self, this._then);

  final TodoListState _self;
  final $Res Function(TodoListState) _then;

/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? status = null,Object? todoList = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProcessState,todoList: null == todoList ? _self.todoList : todoList // ignore: cast_nullable_to_non_nullable
as List<TodoEntity>,error: freezed == error ? _self.error : error ,
  ));
}
/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get status {
  
  return $ProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [TodoListState].
extension TodoListStatePatterns on TodoListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoListState value)  $default,){
final _that = this;
switch (_that) {
case _TodoListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoListState value)?  $default,){
final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ProcessState status,  List<TodoEntity> todoList,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
return $default(_that.isLoading,_that.status,_that.todoList,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ProcessState status,  List<TodoEntity> todoList,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _TodoListState():
return $default(_that.isLoading,_that.status,_that.todoList,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ProcessState status,  List<TodoEntity> todoList,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _TodoListState() when $default != null:
return $default(_that.isLoading,_that.status,_that.todoList,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _TodoListState extends TodoListState {
  const _TodoListState({this.isLoading = true, this.status = const ProcessState.initial(), final  List<TodoEntity> todoList = const [], this.error = null}): _todoList = todoList,super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  ProcessState status;
 final  List<TodoEntity> _todoList;
@override@JsonKey() List<TodoEntity> get todoList {
  if (_todoList is EqualUnmodifiableListView) return _todoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todoList);
}

@override@JsonKey() final  Object? error;

/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoListStateCopyWith<_TodoListState> get copyWith => __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._todoList, _todoList)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,status,const DeepCollectionEquality().hash(_todoList),const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'TodoListState(isLoading: $isLoading, status: $status, todoList: $todoList, error: $error)';
}


}

/// @nodoc
abstract mixin class _$TodoListStateCopyWith<$Res> implements $TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(_TodoListState value, $Res Function(_TodoListState) _then) = __$TodoListStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ProcessState status, List<TodoEntity> todoList, Object? error
});


@override $ProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(this._self, this._then);

  final _TodoListState _self;
  final $Res Function(_TodoListState) _then;

/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? status = null,Object? todoList = null,Object? error = freezed,}) {
  return _then(_TodoListState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProcessState,todoList: null == todoList ? _self._todoList : todoList // ignore: cast_nullable_to_non_nullable
as List<TodoEntity>,error: freezed == error ? _self.error : error ,
  ));
}

/// Create a copy of TodoListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get status {
  
  return $ProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$UpdateTodoState {

 bool get isLoading; ProcessState get status; TodoValidator get title; TodoValidator get note; bool get isCompleted; Object? get error;
/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTodoStateCopyWith<UpdateTodoState> get copyWith => _$UpdateTodoStateCopyWithImpl<UpdateTodoState>(this as UpdateTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTodoState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,status,title,note,isCompleted,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'UpdateTodoState(isLoading: $isLoading, status: $status, title: $title, note: $note, isCompleted: $isCompleted, error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdateTodoStateCopyWith<$Res>  {
  factory $UpdateTodoStateCopyWith(UpdateTodoState value, $Res Function(UpdateTodoState) _then) = _$UpdateTodoStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ProcessState status, TodoValidator title, TodoValidator note, bool isCompleted, Object? error
});


$ProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class _$UpdateTodoStateCopyWithImpl<$Res>
    implements $UpdateTodoStateCopyWith<$Res> {
  _$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final UpdateTodoState _self;
  final $Res Function(UpdateTodoState) _then;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? status = null,Object? title = null,Object? note = null,Object? isCompleted = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProcessState,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as TodoValidator,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as TodoValidator,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}
/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get status {
  
  return $ProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateTodoState].
extension UpdateTodoStatePatterns on UpdateTodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTodoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTodoState value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTodoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTodoState value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ProcessState status,  TodoValidator title,  TodoValidator note,  bool isCompleted,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
return $default(_that.isLoading,_that.status,_that.title,_that.note,_that.isCompleted,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ProcessState status,  TodoValidator title,  TodoValidator note,  bool isCompleted,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _UpdateTodoState():
return $default(_that.isLoading,_that.status,_that.title,_that.note,_that.isCompleted,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ProcessState status,  TodoValidator title,  TodoValidator note,  bool isCompleted,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTodoState() when $default != null:
return $default(_that.isLoading,_that.status,_that.title,_that.note,_that.isCompleted,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateTodoState extends UpdateTodoState {
  const _UpdateTodoState({this.isLoading = true, this.status = const ProcessState.initial(), this.title = const TodoValidator.pure(), this.note = const TodoValidator.pure(), this.isCompleted = false, this.error = null}): super._();
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  ProcessState status;
@override@JsonKey() final  TodoValidator title;
@override@JsonKey() final  TodoValidator note;
@override@JsonKey() final  bool isCompleted;
@override@JsonKey() final  Object? error;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTodoStateCopyWith<_UpdateTodoState> get copyWith => __$UpdateTodoStateCopyWithImpl<_UpdateTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTodoState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.note, note) || other.note == note)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,status,title,note,isCompleted,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'UpdateTodoState(isLoading: $isLoading, status: $status, title: $title, note: $note, isCompleted: $isCompleted, error: $error)';
}


}

/// @nodoc
abstract mixin class _$UpdateTodoStateCopyWith<$Res> implements $UpdateTodoStateCopyWith<$Res> {
  factory _$UpdateTodoStateCopyWith(_UpdateTodoState value, $Res Function(_UpdateTodoState) _then) = __$UpdateTodoStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ProcessState status, TodoValidator title, TodoValidator note, bool isCompleted, Object? error
});


@override $ProcessStateCopyWith<$Res> get status;

}
/// @nodoc
class __$UpdateTodoStateCopyWithImpl<$Res>
    implements _$UpdateTodoStateCopyWith<$Res> {
  __$UpdateTodoStateCopyWithImpl(this._self, this._then);

  final _UpdateTodoState _self;
  final $Res Function(_UpdateTodoState) _then;

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? status = null,Object? title = null,Object? note = null,Object? isCompleted = null,Object? error = freezed,}) {
  return _then(_UpdateTodoState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProcessState,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as TodoValidator,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as TodoValidator,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}

/// Create a copy of UpdateTodoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get status {
  
  return $ProcessStateCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
