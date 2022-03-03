import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  // late String taskName = '';
  final Function addTaskFunc;

  AddTaskScreen({required this.addTaskFunc});

  @override
  Widget build(BuildContext context) {
    String taskName = '';
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (String value) {
                taskName = value;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 56.0),
                  backgroundColor: Colors.lightBlueAccent,
                ),
                onPressed: () {
                  addTaskFunc(taskName);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
