import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getxtest/core/usecase/usecase.dart';
import 'package:getxtest/features/todo/domain/entities/todo_entity.dart';
import 'package:getxtest/features/todo/domain/usecases/fetch_todos_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.dart';
part 'todo_view_model.freezed.dart';

@injectable
class TodoViewModel extends GetxController {
  final FetchTodosUseCase _todosUsecase;

  final RxList<Rx<TodoEntity>> todoLists = <Rx<TodoEntity>>[].obs;
  Rx<TodoEntity> getTodo(int index) => todoLists[index];

  final Rx<TodoState> _state = TodoState.initial().obs;
  TodoState get state => _state.value;

  TodoViewModel(this._todosUsecase);

  void emit(TodoState update) => _state.value = update;

  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    emit(const TodoState.loading());

    final result = await _todosUsecase(NoParams());

    result.fold(
      (failure) {
        debugPrint(failure.message);
        emit(TodoState.error(failure.message));
      },
      (todos) {
        todoLists.assignAll(todos.map((e) => e.obs).toList());
        emit(const TodoState.loaded());
      },
    );
  }

  void updateTodo(int id) {
    final index = todoLists.indexWhere((t) => t.value.id == id);
    if (index == -1) return;
    todoLists[index].value = todoLists[index].value.copyWith(
      isCompleted: !todoLists[index].value.isCompleted,
    );
  }
}
