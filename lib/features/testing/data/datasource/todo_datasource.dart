import 'package:getxtest/features/testing/data/models/todo_model.dart';

abstract class TodoDatasource {
  Future<List<TodoModel>> getAllTodos();
  Future<TodoModel> getTodoById(int? params);
}
