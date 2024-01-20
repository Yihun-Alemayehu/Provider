// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/tasks_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: value.tasks[index].name,
                isChecked: value.tasks[index].isDone,
                checkBoxCallBack: (checkBoxState) {
                  value.tasks[index].toggleDone();
                });
          },
        );
      },
    );
  }
}
