import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getxtest/core/usecase/usecase.dart';
import 'package:getxtest/features/testing/domain/entities/todo_entity.dart';
import 'package:getxtest/features/testing/domain/usecases/fetch_todos_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_state.dart';
part 'test_view_model.freezed.dart';

@injectable
class TestViewModel extends GetxController {
  final FetchTodosUsecase _todosUsecase;

  TestViewModel(this._todosUsecase);

  final Rx<TestState> state = TestState.initial().obs;

  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    state.value = const TestState.loading();

    final result = await _todosUsecase(NoParams());

    result.fold(
      (failure) {
        debugPrint(failure.message);
        state.value = TestState.error(failure.message);
      },
      (todos) {
        state.value = TestState.loaded(todos);
      },
    );
  }
}
