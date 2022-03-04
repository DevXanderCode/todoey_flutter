import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Work on Maintenance'),
    Task(name: 'Start Aladdin App'),
    Task(name: 'Eat breakfast')
  ];

  List<Task> get tasks => _tasks;

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    final Task newTask = Task(name: taskTitle);
    _tasks.add(newTask);

    notifyListeners();
  }
}
