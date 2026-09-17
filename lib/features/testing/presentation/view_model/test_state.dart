part of 'test_view_model.dart';

@freezed
abstract class TestState with _$TestState {
  const factory TestState.initial() = TestInitial;
  const factory TestState.loading() = TestLoading;
  const factory TestState.loaded(List<TodoEntity> todos) = TestLoaded;
  const factory TestState.error(String message) = TestError;
}
