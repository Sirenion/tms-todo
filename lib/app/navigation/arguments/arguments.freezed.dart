// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonDetailsArguments {

 String get id;
/// Create a copy of PersonDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonDetailsArgumentsCopyWith<PersonDetailsArguments> get copyWith => _$PersonDetailsArgumentsCopyWithImpl<PersonDetailsArguments>(this as PersonDetailsArguments, _$identity);

  /// Serializes this PersonDetailsArguments to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonDetailsArguments&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PersonDetailsArguments(id: $id)';
}


}

/// @nodoc
abstract mixin class $PersonDetailsArgumentsCopyWith<$Res>  {
  factory $PersonDetailsArgumentsCopyWith(PersonDetailsArguments value, $Res Function(PersonDetailsArguments) _then) = _$PersonDetailsArgumentsCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$PersonDetailsArgumentsCopyWithImpl<$Res>
    implements $PersonDetailsArgumentsCopyWith<$Res> {
  _$PersonDetailsArgumentsCopyWithImpl(this._self, this._then);

  final PersonDetailsArguments _self;
  final $Res Function(PersonDetailsArguments) _then;

/// Create a copy of PersonDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonDetailsArguments].
extension PersonDetailsArgumentsPatterns on PersonDetailsArguments {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonDetailsArguments value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonDetailsArguments() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonDetailsArguments value)  $default,){
final _that = this;
switch (_that) {
case _PersonDetailsArguments():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonDetailsArguments value)?  $default,){
final _that = this;
switch (_that) {
case _PersonDetailsArguments() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonDetailsArguments() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _PersonDetailsArguments():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _PersonDetailsArguments() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonDetailsArguments extends PersonDetailsArguments {
  const _PersonDetailsArguments({required this.id}): super._();
  factory _PersonDetailsArguments.fromJson(Map<String, dynamic> json) => _$PersonDetailsArgumentsFromJson(json);

@override final  String id;

/// Create a copy of PersonDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonDetailsArgumentsCopyWith<_PersonDetailsArguments> get copyWith => __$PersonDetailsArgumentsCopyWithImpl<_PersonDetailsArguments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonDetailsArgumentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonDetailsArguments&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PersonDetailsArguments(id: $id)';
}


}

/// @nodoc
abstract mixin class _$PersonDetailsArgumentsCopyWith<$Res> implements $PersonDetailsArgumentsCopyWith<$Res> {
  factory _$PersonDetailsArgumentsCopyWith(_PersonDetailsArguments value, $Res Function(_PersonDetailsArguments) _then) = __$PersonDetailsArgumentsCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$PersonDetailsArgumentsCopyWithImpl<$Res>
    implements _$PersonDetailsArgumentsCopyWith<$Res> {
  __$PersonDetailsArgumentsCopyWithImpl(this._self, this._then);

  final _PersonDetailsArguments _self;
  final $Res Function(_PersonDetailsArguments) _then;

/// Create a copy of PersonDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_PersonDetailsArguments(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SearchDetailsArguments {

 String get id;
/// Create a copy of SearchDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchDetailsArgumentsCopyWith<SearchDetailsArguments> get copyWith => _$SearchDetailsArgumentsCopyWithImpl<SearchDetailsArguments>(this as SearchDetailsArguments, _$identity);

  /// Serializes this SearchDetailsArguments to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchDetailsArguments&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SearchDetailsArguments(id: $id)';
}


}

/// @nodoc
abstract mixin class $SearchDetailsArgumentsCopyWith<$Res>  {
  factory $SearchDetailsArgumentsCopyWith(SearchDetailsArguments value, $Res Function(SearchDetailsArguments) _then) = _$SearchDetailsArgumentsCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$SearchDetailsArgumentsCopyWithImpl<$Res>
    implements $SearchDetailsArgumentsCopyWith<$Res> {
  _$SearchDetailsArgumentsCopyWithImpl(this._self, this._then);

  final SearchDetailsArguments _self;
  final $Res Function(SearchDetailsArguments) _then;

/// Create a copy of SearchDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchDetailsArguments].
extension SearchDetailsArgumentsPatterns on SearchDetailsArguments {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchDetailsArguments value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchDetailsArguments() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchDetailsArguments value)  $default,){
final _that = this;
switch (_that) {
case _SearchDetailsArguments():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchDetailsArguments value)?  $default,){
final _that = this;
switch (_that) {
case _SearchDetailsArguments() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchDetailsArguments() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _SearchDetailsArguments():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _SearchDetailsArguments() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchDetailsArguments extends SearchDetailsArguments {
  const _SearchDetailsArguments({required this.id}): super._();
  factory _SearchDetailsArguments.fromJson(Map<String, dynamic> json) => _$SearchDetailsArgumentsFromJson(json);

@override final  String id;

/// Create a copy of SearchDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchDetailsArgumentsCopyWith<_SearchDetailsArguments> get copyWith => __$SearchDetailsArgumentsCopyWithImpl<_SearchDetailsArguments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchDetailsArgumentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchDetailsArguments&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SearchDetailsArguments(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SearchDetailsArgumentsCopyWith<$Res> implements $SearchDetailsArgumentsCopyWith<$Res> {
  factory _$SearchDetailsArgumentsCopyWith(_SearchDetailsArguments value, $Res Function(_SearchDetailsArguments) _then) = __$SearchDetailsArgumentsCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$SearchDetailsArgumentsCopyWithImpl<$Res>
    implements _$SearchDetailsArgumentsCopyWith<$Res> {
  __$SearchDetailsArgumentsCopyWithImpl(this._self, this._then);

  final _SearchDetailsArguments _self;
  final $Res Function(_SearchDetailsArguments) _then;

/// Create a copy of SearchDetailsArguments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_SearchDetailsArguments(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
