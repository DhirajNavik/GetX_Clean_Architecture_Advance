import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/config/routes/routes_path.dart';
import 'package:getxtest/features/todo/presentation/view_model/todo/todo_view_model.dart';

class TodoListItem extends GetView<TodoViewModel> {
  final int index;
  const TodoListItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final rxTodo = controller.getTodo(index);
    return GestureDetector(
      behavior: HitTestBehavior.opaque, // ✅ correct syntax
      onTap: () => Get.toNamed(
        RoutesPath.todoDetailsPage.path,
        arguments: rxTodo.value.id,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text(rxTodo.value.title),
        trailing: GetX<TodoViewModel>(
          builder: (value) {
            return Checkbox(
              value: rxTodo.value.isCompleted, // ✅ fresh value from RxList
              onChanged: (_) => controller.updateTodo(rxTodo.value.id),
            );
          },
        ),
      ),
    );
  }
}
