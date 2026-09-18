import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getxtest/core/usecase/usecase.dart';
import 'package:getxtest/features/testing/domain/entities/todo_entity.dart';
import 'package:getxtest/features/testing/domain/usecases/fetch_todos_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.dart';
part 'todo_view_model.freezed.dart';

@injectable
class TodoViewModel extends GetxController {
  final FetchTodosUsecase _todosUsecase;
  late final Rx<TodoState> _state = TodoState.initial().obs;
  TodoState get state => _state.value;

  TodoViewModel(this._todosUsecase);

  void emit(TodoState update) {
    _state.value = update.obs.value;
  }

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
        emit(TodoState.loaded(todos));
      },
    );
  }
}
