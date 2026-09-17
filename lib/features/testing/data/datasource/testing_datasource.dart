import 'package:getxtest/features/testing/data/models/todo_model.dart';

abstract class TestingDatasource {
  Future<List<TodoModel>> getAllTodos();
  Future<List<TodoModel>> getTodos(int? params);
}
