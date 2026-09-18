import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/features/todo/presentation/view_model/todo_details/todo_details_view_model.dart';

class TodoDetailsView extends GetView<TodoDetailsViewModel> {
  const TodoDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo Details')),
      body: Obx(() {
        return controller.state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (todo) => Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 12),
                Text('Todo ID: ${todo.id}'),
                Text('User ID: ${todo.userId}'),
                const SizedBox(height: 12),
                Chip(
                  label: Text(todo.isCompleted ? 'Completed' : 'Pending'),
                  backgroundColor: todo.isCompleted
                      ? Colors.green.shade100
                      : Colors.orange.shade100,
                ),
              ],
            ),
          ),
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: $message'),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () =>
                      controller.fetchTodoByID(Get.arguments as int),
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
