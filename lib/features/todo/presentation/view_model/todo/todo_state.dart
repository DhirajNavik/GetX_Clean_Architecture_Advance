part of 'todo_view_model.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.initial() = TodoInitial;
  const factory TodoState.loading() = TodoLoading;
  const factory TodoState.loaded(List<TodoEntity> todos) = TodoLoaded;
  const factory TodoState.error(String message) = TodoError;
}
