import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatelessWidget {
  List<Task> tasks = [
    Task(name: 'Work on Maintenance'),
    Task(name: 'Start Aladdin App'),
    Task(name: 'Eat breakfast')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone, taskTitle: tasks[index].name);
      },
      itemCount: tasks.length,
    );
  }
}
