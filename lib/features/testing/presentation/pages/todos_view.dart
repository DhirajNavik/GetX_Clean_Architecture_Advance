// todo_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/features/testing/presentation/view_model/todo_view_model.dart';
import '../../../../config/injectable/injectable.dart';

class TodosView extends GetView<TodoViewModel> {
  TodosView({super.key}) {
    print("First");
    Get.put(serviceLocator<TodoViewModel>());
  }

  @override
  Widget build(BuildContext context) {
    print("Second");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        actions: [
          IconButton(
            onPressed: controller.fetchTodos,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Obx(() {
        return controller.state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (todos) {
            if (todos.isEmpty) {
              return const Center(child: Text('No todos found'));
            }
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return CheckboxListTile(
                  title: Text(todo.title),
                  value: todo.isCompleted,
                  onChanged: null, // read-only for now
                );
              },
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: $message'),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: controller.fetchTodos,
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
