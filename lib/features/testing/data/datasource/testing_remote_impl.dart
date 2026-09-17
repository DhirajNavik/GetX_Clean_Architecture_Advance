import 'package:getxtest/core/dio/network_requester.dart';
import 'package:getxtest/core/extensions/map_parser_extension.dart';
import 'package:getxtest/core/utils/app_urls.dart';
import 'package:getxtest/features/testing/data/datasource/testing_datasource.dart';
import 'package:getxtest/features/testing/data/models/todo_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TestingDatasource)
class TestingRemoteImpl implements TestingDatasource {
  final NetworkRequester _network;
  const TestingRemoteImpl(this._network);

  @override
  Future<List<TodoModel>> getAllTodos() async {
    final response = await _network.get(AppUrls.getAllTodo);
    return (response as  List<dynamic> ).parseData(TodoModel.fromJson);
  }

  @override
  Future<List<TodoModel>> getTodos(int? params) {
    throw UnimplementedError();
  }
}
