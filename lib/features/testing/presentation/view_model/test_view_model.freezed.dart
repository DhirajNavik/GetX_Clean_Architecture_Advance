// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TestState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestState()';
}


}

/// @nodoc
class $TestStateCopyWith<$Res>  {
$TestStateCopyWith(TestState _, $Res Function(TestState) __);
}


/// Adds pattern-matching-related methods to [TestState].
extension TestStatePatterns on TestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TestInitial value)?  initial,TResult Function( TestLoading value)?  loading,TResult Function( TestLoaded value)?  loaded,TResult Function( TestError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TestInitial() when initial != null:
return initial(_that);case TestLoading() when loading != null:
return loading(_that);case TestLoaded() when loaded != null:
return loaded(_that);case TestError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TestInitial value)  initial,required TResult Function( TestLoading value)  loading,required TResult Function( TestLoaded value)  loaded,required TResult Function( TestError value)  error,}){
final _that = this;
switch (_that) {
case TestInitial():
return initial(_that);case TestLoading():
return loading(_that);case TestLoaded():
return loaded(_that);case TestError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TestInitial value)?  initial,TResult? Function( TestLoading value)?  loading,TResult? Function( TestLoaded value)?  loaded,TResult? Function( TestError value)?  error,}){
final _that = this;
switch (_that) {
case TestInitial() when initial != null:
return initial(_that);case TestLoading() when loading != null:
return loading(_that);case TestLoaded() when loaded != null:
return loaded(_that);case TestError() when error != null:
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
case TestInitial() when initial != null:
return initial();case TestLoading() when loading != null:
return loading();case TestLoaded() when loaded != null:
return loaded(_that.todos);case TestError() when error != null:
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
case TestInitial():
return initial();case TestLoading():
return loading();case TestLoaded():
return loaded(_that.todos);case TestError():
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
case TestInitial() when initial != null:
return initial();case TestLoading() when loading != null:
return loading();case TestLoaded() when loaded != null:
return loaded(_that.todos);case TestError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TestInitial with DiagnosticableTreeMixin implements TestState {
  const TestInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestState.initial()';
}


}




/// @nodoc


class TestLoading with DiagnosticableTreeMixin implements TestState {
  const TestLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestState.loading()';
}


}




/// @nodoc


class TestLoaded with DiagnosticableTreeMixin implements TestState {
  const TestLoaded( List<TodoEntity> todos): _todos = todos;
  

 final  List<TodoEntity> _todos;
 List<TodoEntity> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestLoadedCopyWith<TestLoaded> get copyWith => _$TestLoadedCopyWithImpl<TestLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestState.loaded'))
    ..add(DiagnosticsProperty('todos', todos));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestLoaded&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestState.loaded(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TestLoadedCopyWith<$Res> implements $TestStateCopyWith<$Res> {
  factory $TestLoadedCopyWith(TestLoaded value, $Res Function(TestLoaded) _then) = _$TestLoadedCopyWithImpl;
@useResult
$Res call({
 List<TodoEntity> todos
});




}
/// @nodoc
class _$TestLoadedCopyWithImpl<$Res>
    implements $TestLoadedCopyWith<$Res> {
  _$TestLoadedCopyWithImpl(this._self, this._then);

  final TestLoaded _self;
  final $Res Function(TestLoaded) _then;

/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(TestLoaded(
null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoEntity>,
  ));
}


}

/// @nodoc


class TestError with DiagnosticableTreeMixin implements TestState {
  const TestError(this.message);
  

 final  String message;

/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestErrorCopyWith<TestError> get copyWith => _$TestErrorCopyWithImpl<TestError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TestState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TestState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TestErrorCopyWith<$Res> implements $TestStateCopyWith<$Res> {
  factory $TestErrorCopyWith(TestError value, $Res Function(TestError) _then) = _$TestErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TestErrorCopyWithImpl<$Res>
    implements $TestErrorCopyWith<$Res> {
  _$TestErrorCopyWithImpl(this._self, this._then);

  final TestError _self;
  final $Res Function(TestError) _then;

/// Create a copy of TestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TestError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
