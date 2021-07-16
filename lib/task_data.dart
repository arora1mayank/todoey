import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(taskTitle: 'Buy Milk'),
    Task(taskTitle: 'Buy Egg'),
    Task(taskTitle: 'Buy Bread'),
  ];

  UnmodifiableListView get taskList {
    return UnmodifiableListView(_taskList);
  }

  int get taskCount {
    return _taskList.length;
  }

  void addTask(String title) {
    final task = Task(taskTitle: title);
    _taskList.add(task);
    notifyListeners();
  }

  void checkTask(Task task) {
    task.toggleState();
    notifyListeners();
  }

  void taskRemove(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
