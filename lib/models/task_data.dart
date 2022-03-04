import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Work on Maintenance'),
    Task(name: 'Start Aladdin App'),
    Task(name: 'Eat breakfast')
  ];

  int get taskCount {
    return tasks.length;
  }

  void AddTask(String taskTitle) {
    tasks.add(Task(name: taskTitle));

    notifyListeners();
  }
}
