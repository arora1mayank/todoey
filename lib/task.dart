import 'package:flutter/cupertino.dart';

class Task extends ChangeNotifier {
  bool isDone = false;
  String taskTitle;

  Task({this.isDone = false, this.taskTitle});

  void toggleState() {
    isDone = !isDone;
  }
}
