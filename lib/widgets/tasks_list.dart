import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  final Function checkboxCallback;

  TasksList({required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (bool value) {
                checkboxCallback(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
