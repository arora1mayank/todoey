import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool initialState;
  final String title;
  final Function checkBoxState;
  final Function removeTask;
  TaskTile(
      {this.initialState, this.title, this.checkBoxState, this.removeTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: removeTask,
        title: Text(
          title,
          style: TextStyle(
            decoration: initialState ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: initialState,
          onChanged: checkBoxState,
        ));
  }
}
