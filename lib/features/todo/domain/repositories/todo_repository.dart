import 'package:fpdart/fpdart.dart';
import 'package:getxtest/core/usecase/failures.dart';
import 'package:getxtest/features/todo/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<TodoEntity>>> fetchTodos();
  Future<Either<Failure, TodoEntity>> fetchTodoById(int id);
}
