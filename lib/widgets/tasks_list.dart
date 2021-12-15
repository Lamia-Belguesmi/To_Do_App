import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallBack: (bool checkboxState) {
                  taskData.updateTask(task);
                },
              longPressCallback: (){
                  taskData.deleteTask(task);

              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
