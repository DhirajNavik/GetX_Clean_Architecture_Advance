import 'package:getxtest/core/dio/network_requester.dart';
import 'package:getxtest/core/extensions/parser_extensions.dart';
import 'package:getxtest/core/utils/app_urls.dart';
import 'package:getxtest/features/todo/data/datasource/todo_datasource.dart';
import 'package:getxtest/features/todo/data/models/todo_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TodoDatasource)
class TodoRemoteImpl implements TodoDatasource {
  final NetworkRequester _network;
  const TodoRemoteImpl(this._network);

  @override
  Future<List<TodoModel>> getAllTodos() async {
    final response = await _network.get(AppUrls.getAllTodo);
    return (response as List<dynamic>).parseData(TodoModel.fromJson);
  }

  @override
  Future<TodoModel> getTodoById(int params) async {
    final response = await _network.get(AppUrls.getTodo(params));
    return TodoModel.fromJson(response);
  }
}
