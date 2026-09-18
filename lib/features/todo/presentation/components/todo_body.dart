import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/config/routes/routes_path.dart';
import 'package:getxtest/features/todo/domain/entities/todo_entity.dart';
import 'package:getxtest/features/todo/presentation/view_model/todo/todo_view_model.dart';

class TodoListItem extends GetView<TodoViewModel> {
  final Rx<TodoEntity> entity;
  const TodoListItem({required this.entity, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Get.toNamed(
        RoutesPath.todoDetailsPage.path,
        arguments: entity.value.id,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        title: Text(entity.value.title),
        trailing: GetX<TodoViewModel>(
          builder: (value) {
            return Checkbox(
              value: entity.value.isCompleted,
              onChanged: (_) => controller.updateTodo(entity.value.id),
            );
          },
        ),
      ),
    );
  }
}
