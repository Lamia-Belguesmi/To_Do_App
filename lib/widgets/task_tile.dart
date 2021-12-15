import 'package:flutter/material.dart';
import 'tasks_list.dart';

class TasksTile extends StatelessWidget {
  TasksTile({required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallBack,
    required this.longPressCallback});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,

      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20,
          color: Color(0xDA070702),
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallBack(newValue);
        },
      ),
    );
  }
}
