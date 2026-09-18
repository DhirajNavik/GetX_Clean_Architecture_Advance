// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TodoInitial value)?  initial,TResult Function( TodoLoading value)?  loading,TResult Function( TodoLoaded value)?  loaded,TResult Function( TodoError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TodoInitial() when initial != null:
return initial(_that);case TodoLoading() when loading != null:
return loading(_that);case TodoLoaded() when loaded != null:
return loaded(_that);case TodoError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TodoInitial value)  initial,required TResult Function( TodoLoading value)  loading,required TResult Function( TodoLoaded value)  loaded,required TResult Function( TodoError value)  error,}){
final _that = this;
switch (_that) {
case TodoInitial():
return initial(_that);case TodoLoading():
return loading(_that);case TodoLoaded():
return loaded(_that);case TodoError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TodoInitial value)?  initial,TResult? Function( TodoLoading value)?  loading,TResult? Function( TodoLoaded value)?  loaded,TResult? Function( TodoError value)?  error,}){
final _that = this;
switch (_that) {
case TodoInitial() when initial != null:
return initial(_that);case TodoLoading() when loading != null:
return loading(_that);case TodoLoaded() when loaded != null:
return loaded(_that);case TodoError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<TodoEntity> todos)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TodoInitial() when initial != null:
return initial();case TodoLoading() when loading != null:
return loading();case TodoLoaded() when loaded != null:
return loaded(_that.todos);case TodoError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<TodoEntity> todos)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case TodoInitial():
return initial();case TodoLoading():
return loading();case TodoLoaded():
return loaded(_that.todos);case TodoError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<TodoEntity> todos)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case TodoInitial() when initial != null:
return initial();case TodoLoading() when loading != null:
return loading();case TodoLoaded() when loaded != null:
return loaded(_that.todos);case TodoError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TodoInitial with DiagnosticableTreeMixin implements TodoState {
  const TodoInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.initial()';
}


}




/// @nodoc


class TodoLoading with DiagnosticableTreeMixin implements TodoState {
  const TodoLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.loading()';
}


}




/// @nodoc


class TodoLoaded with DiagnosticableTreeMixin implements TodoState {
  const TodoLoaded( List<TodoEntity> todos): _todos = todos;
  

 final  List<TodoEntity> _todos;
 List<TodoEntity> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoLoadedCopyWith<TodoLoaded> get copyWith => _$TodoLoadedCopyWithImpl<TodoLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.loaded'))
    ..add(DiagnosticsProperty('todos', todos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoLoaded&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.loaded(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodoLoadedCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoLoadedCopyWith(TodoLoaded value, $Res Function(TodoLoaded) _then) = _$TodoLoadedCopyWithImpl;
@useResult
$Res call({
 List<TodoEntity> todos
});




}
/// @nodoc
class _$TodoLoadedCopyWithImpl<$Res>
    implements $TodoLoadedCopyWith<$Res> {
  _$TodoLoadedCopyWithImpl(this._self, this._then);

  final TodoLoaded _self;
  final $Res Function(TodoLoaded) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(TodoLoaded(
null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoEntity>,
  ));
}


}

/// @nodoc


class TodoError with DiagnosticableTreeMixin implements TodoState {
  const TodoError(this.message);
  

 final  String message;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoErrorCopyWith<TodoError> get copyWith => _$TodoErrorCopyWithImpl<TodoError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TodoState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TodoState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TodoErrorCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoErrorCopyWith(TodoError value, $Res Function(TodoError) _then) = _$TodoErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TodoErrorCopyWithImpl<$Res>
    implements $TodoErrorCopyWith<$Res> {
  _$TodoErrorCopyWithImpl(this._self, this._then);

  final TodoError _self;
  final $Res Function(TodoError) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TodoError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
