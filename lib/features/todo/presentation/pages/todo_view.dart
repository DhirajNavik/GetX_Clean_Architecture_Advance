import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/features/todo/presentation/components/todo_body.dart';
import 'package:getxtest/features/todo/presentation/view_model/todo/todo_view_model.dart';

class TodoView extends GetView<TodoViewModel> {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: GetX<TodoViewModel>(
        builder: (value) => value.state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: () {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: value.todoLists.length,
              itemBuilder: (context, index) {
                return TodoListItem(entity: value.todoLists[index]);
              },
            );
          },
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Error: $message')],
            ),
          ),
        ),
      ),
    );
  }
}
