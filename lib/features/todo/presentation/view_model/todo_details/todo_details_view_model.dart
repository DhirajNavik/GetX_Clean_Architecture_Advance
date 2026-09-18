import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:getxtest/features/todo/domain/entities/todo_entity.dart';
import 'package:getxtest/features/todo/domain/usecases/fetch_todo_by_id_usecase.dart';
import 'package:injectable/injectable.dart';

part 'todo_details_state.dart';
part 'todo_details_view_model.freezed.dart';

@injectable
class TodoDetailsViewModel extends GetxController {
  final FetchTodoByIdUseCase _usecase;
  final Rx<TodoDetailsState> _state = TodoDetailsState.initial().obs;

  TodoDetailsViewModel(this._usecase);

  TodoDetailsState get state => _state.value;

  void emit(TodoDetailsState update) => _state.value = update;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    if (args is int) {
      fetchTodoByID(args);
    } else {
      emit(const TodoDetailsState.error('No todo ID provided.'));
    }
  }

  Future<void> fetchTodoByID(int id) async {
    emit(const TodoDetailsState.loading());

    final result = await _usecase(id);

    result.fold(
      (failure) {
        debugPrint(failure.message);
        emit(TodoDetailsState.error(failure.message));
      },
      (todo) {
        emit(TodoDetailsState.loaded(todo));
      },
    );
  }
}
