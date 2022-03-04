import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Work on Maintenance'),
    Task(name: 'Start Aladdin App'),
    Task(name: 'Eat breakfast')
  ];
}
