import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:to_do_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Do HomeWork'),
    Task(name: 'Buy Groceries'),
    Task(name: 'Call Mum'),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newTaskTittle){
    final task=Task(name: newTaskTittle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();

}
}

