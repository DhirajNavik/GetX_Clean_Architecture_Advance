part of 'todo_details_view_model.dart';

@freezed
abstract class TodoDetailsState with _$TodoDetailsState {
  const factory TodoDetailsState.initial() = TodoDetailsInitial;
  const factory TodoDetailsState.loading() = TodoDetailsLoading;
  const factory TodoDetailsState.loaded(TodoEntity todo) = TodoDetailsLoaded;
  const factory TodoDetailsState.error(String message) = TodoDetailsError;
}

