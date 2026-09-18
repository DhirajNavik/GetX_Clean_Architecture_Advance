// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_details_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoDetailsState()';
}


}

/// @nodoc
class $TodoDetailsStateCopyWith<$Res>  {
$TodoDetailsStateCopyWith(TodoDetailsState _, $Res Function(TodoDetailsState) __);
}


/// Adds pattern-matching-related methods to [TodoDetailsState].
extension TodoDetailsStatePatterns on TodoDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TodoDetailsInitial value)?  initial,TResult Function( TodoDetailsLoading value)?  loading,TResult Function( TodoDetailsLoaded value)?  loaded,TResult Function( TodoDetailsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TodoDetailsInitial() when initial != null:
return initial(_that);case TodoDetailsLoading() when loading != null:
return loading(_that);case TodoDetailsLoaded() when loaded != null:
return loaded(_that);case TodoDetailsError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TodoDetailsInitial value)  initial,required TResult Function( TodoDetailsLoading value)  loading,required TResult Function( TodoDetailsLoaded value)  loaded,required TResult Function( TodoDetailsError value)  error,}){
final _that = this;
switch (_that) {
case TodoDetailsInitial():
return initial(_that);case TodoDetailsLoading():
return loading(_that);case TodoDetailsLoaded():
return loaded(_that);case TodoDetailsError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TodoDetailsInitial value)?  initial,TResult? Function( TodoDetailsLoading value)?  loading,TResult? Function( TodoDetailsLoaded value)?  loaded,TResult? Function( TodoDetailsError value)?  error,}){
final _that = this;
switch (_that) {
case TodoDetailsInitial() when initial != null:
return initial(_that);case TodoDetailsLoading() when loading != null:
return loading(_that);case TodoDetailsLoaded() when loaded != null:
return loaded(_that);case TodoDetailsError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TodoEntity todo)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TodoDetailsInitial() when initial != null:
return initial();case TodoDetailsLoading() when loading != null:
return loading();case TodoDetailsLoaded() when loaded != null:
return loaded(_that.todo);case TodoDetailsError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TodoEntity todo)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case TodoDetailsInitial():
return initial();case TodoDetailsLoading():
return loading();case TodoDetailsLoaded():
return loaded(_that.todo);case TodoDetailsError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TodoEntity todo)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case TodoDetailsInitial() when initial != null:
return initial();case TodoDetailsLoading() when loading != null:
return loading();case TodoDetailsLoaded() when loaded != null:
return loaded(_that.todo);case TodoDetailsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TodoDetailsInitial implements TodoDetailsState {
  const TodoDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoDetailsState.initial()';
}


}




/// @nodoc


class TodoDetailsLoading implements TodoDetailsState {
  const TodoDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoDetailsState.loading()';
}


}




/// @nodoc


class TodoDetailsLoaded implements TodoDetailsState {
  const TodoDetailsLoaded(this.todo);
  

 final  TodoEntity todo;

/// Create a copy of TodoDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoDetailsLoadedCopyWith<TodoDetailsLoaded> get copyWith => _$TodoDetailsLoadedCopyWithImpl<TodoDetailsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailsLoaded&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoDetailsState.loaded(todo: $todo)';
}


}

/// @nodoc
abstract mixin class $TodoDetailsLoadedCopyWith<$Res> implements $TodoDetailsStateCopyWith<$Res> {
  factory $TodoDetailsLoadedCopyWith(TodoDetailsLoaded value, $Res Function(TodoDetailsLoaded) _then) = _$TodoDetailsLoadedCopyWithImpl;
@useResult
$Res call({
 TodoEntity todo
});




}
/// @nodoc
class _$TodoDetailsLoadedCopyWithImpl<$Res>
    implements $TodoDetailsLoadedCopyWith<$Res> {
  _$TodoDetailsLoadedCopyWithImpl(this._self, this._then);

  final TodoDetailsLoaded _self;
  final $Res Function(TodoDetailsLoaded) _then;

/// Create a copy of TodoDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(TodoDetailsLoaded(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as TodoEntity,
  ));
}


}

/// @nodoc


class TodoDetailsError implements TodoDetailsState {
  const TodoDetailsError(this.message);
  

 final  String message;

/// Create a copy of TodoDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoDetailsErrorCopyWith<TodoDetailsError> get copyWith => _$TodoDetailsErrorCopyWithImpl<TodoDetailsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TodoDetailsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TodoDetailsErrorCopyWith<$Res> implements $TodoDetailsStateCopyWith<$Res> {
  factory $TodoDetailsErrorCopyWith(TodoDetailsError value, $Res Function(TodoDetailsError) _then) = _$TodoDetailsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TodoDetailsErrorCopyWithImpl<$Res>
    implements $TodoDetailsErrorCopyWith<$Res> {
  _$TodoDetailsErrorCopyWithImpl(this._self, this._then);

  final TodoDetailsError _self;
  final $Res Function(TodoDetailsError) _then;

/// Create a copy of TodoDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TodoDetailsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
