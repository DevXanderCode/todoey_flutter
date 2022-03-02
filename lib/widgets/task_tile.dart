import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void onChange(bool value) => setState(() {
        isChecked = value;
      });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'My First Task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        isChecked,
        onChange,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox(this.checkBoxState, this.onChange);
  final bool checkBoxState;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: (bool? value) {
        onChange(value);
        // setState(() {
        //   isChecked = value!;
        // });
      },
    );
  }
}
