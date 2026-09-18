import 'package:fpdart/fpdart.dart';
import 'package:getxtest/core/usecase/failures.dart';
import 'package:getxtest/core/usecase/usecase.dart';
import 'package:getxtest/features/todo/domain/entities/todo_entity.dart';
import 'package:getxtest/features/todo/domain/repositories/todo_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
final class FetchTodosUseCase implements UseCase<List<TodoEntity>, NoParams> {
  final TodoRepository _repository;

  const FetchTodosUseCase(this._repository);

  @override
  Future<Either<Failure, List<TodoEntity>>> call(NoParams p) {
    return _repository.fetchTodos();
  }
}
