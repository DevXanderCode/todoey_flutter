import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatelessWidget {
  late final List<Task> tasks;
  final Function checkboxCallback;

  TasksList({required this.tasks, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (bool value) {
            checkboxCallback(index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
