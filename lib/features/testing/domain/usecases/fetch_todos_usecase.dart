import 'package:fpdart/fpdart.dart';
import 'package:getxtest/core/usecase/failures.dart';
import 'package:getxtest/core/usecase/usecase.dart';
import 'package:getxtest/features/testing/domain/entities/todo_entity.dart';
import 'package:getxtest/features/testing/domain/repositories/todo_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class FetchTodosUsecase implements UseCase<List<TodoEntity>, NoParams> {
  final TodoRepository _repository;

  const FetchTodosUsecase(this._repository);

  @override
  Future<Either<Failure, List<TodoEntity>>> call(NoParams p) {
    return _repository.fetchTodos();
  }
}
