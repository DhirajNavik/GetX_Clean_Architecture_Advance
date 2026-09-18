import 'package:fpdart/fpdart.dart';
import 'package:getxtest/core/usecase/failures.dart';
import 'package:getxtest/core/usecase/usecase.dart';
import 'package:getxtest/features/todo/domain/entities/todo_entity.dart';
import 'package:getxtest/features/todo/domain/repositories/todo_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
final class FetchTodoByIdUseCase implements UseCase<TodoEntity, int> {
  final TodoRepository _repository;

  const FetchTodoByIdUseCase(this._repository);

  @override
  Future<Either<Failure, TodoEntity>> call(int params) {
    return _repository.fetchTodoById(params);
  }
}
