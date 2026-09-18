import 'package:get/get.dart';
import 'package:getxtest/config/routes/routes_path.dart';
import 'package:getxtest/features/todo/presentation/bindings/todo_bindings.dart';
import 'package:getxtest/features/todo/presentation/pages/todo_details_view.dart';
import 'package:getxtest/features/todo/presentation/pages/todo_view.dart';

class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: RoutesPath.todoPage.path,
      page: () => TodoView(),
      binding: TodoBindings(),
    ),
    GetPage(
      name: RoutesPath.todoDetailsPage.path,
      page: () => TodoDetailsView(),
      binding: TodoDetailsBindings(),
    ),
  ];
}
