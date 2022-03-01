import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size(double.infinity, 56.0),
                      backgroundColor: Colors.lightBlueAccent),
                  onPressed: null,
                  child: Text('Add'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
