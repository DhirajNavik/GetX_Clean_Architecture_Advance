import 'package:getxtest/features/todo/data/models/todo_model.dart';

abstract class TodoDatasource {
  Future<List<TodoModel>> getAllTodos();
  Future<TodoModel> getTodoById(int params);
}
