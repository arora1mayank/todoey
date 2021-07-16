import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tiles.dart';
import 'task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              removeTask: () {
                taskData.taskRemove(taskData.taskList[index]);
              },
              initialState: taskData.taskList[index].isDone,
              title: taskData.taskList[index].taskTitle,
              checkBoxState: (bool state) {
                taskData.checkTask(taskData.taskList[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
