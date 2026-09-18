import 'package:fpdart/fpdart.dart';
import 'package:getxtest/core/dio/exception.dart';
import 'package:getxtest/core/usecase/failures.dart';
import 'package:getxtest/features/testing/data/datasource/todo_datasource.dart';
import 'package:getxtest/features/testing/domain/entities/todo_entity.dart';
import 'package:getxtest/features/testing/domain/repositories/todo_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  final TodoDatasource _dataSource;
  const TodoRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<TodoEntity>>> fetchTodos() async {
    try {
      final result = await _dataSource.getAllTodos();
      return Right(result.map((e) => e.toEntity()).toList());
    } on APIException catch (err) {
      return Left(ServerFailure('Unexpected error occurred. ${err.message}'));
    } catch (err) {
      return Left(
        NetworkFailure('Unexpected error occurred. ${err.toString()}'),
      );
    }
  }

  @override
  Future<Either<Failure, TodoEntity>> fetchTodoById(int? id) async {
    try {
      final result = await _dataSource.getTodoById(id);
      return Right(result.toEntity());
    } on APIException catch (err) {
      return Left(ServerFailure('Unexpected error occurred. ${err.message}'));
    } catch (err) {
      return Left(
        NetworkFailure('Unexpected error occurred. ${err.toString()}'),
      );
    }
  }
}
