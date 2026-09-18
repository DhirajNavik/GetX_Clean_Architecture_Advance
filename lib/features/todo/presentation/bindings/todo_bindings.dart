import 'package:get/get.dart';
import 'package:getxtest/config/injectable/injectable.dart';
import 'package:getxtest/features/todo/presentation/view_model/todo/todo_view_model.dart';
import 'package:getxtest/features/todo/presentation/view_model/todo_details/todo_details_view_model.dart';

class TodoBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(serviceLocator<TodoViewModel>());
  }
}


class TodoDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(serviceLocator<TodoDetailsViewModel>());
  }
}
