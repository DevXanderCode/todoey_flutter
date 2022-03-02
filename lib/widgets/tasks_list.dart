import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
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
            isChecked: tasks[index].isDone,
            taskTitle: tasks[index].name,
            checkboxCallback: (bool value) => setState(() {
                  tasks[index].toggleDone();
                }));
      },
      itemCount: tasks.length,
    );
  }
}
