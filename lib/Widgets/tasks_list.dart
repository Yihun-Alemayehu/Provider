// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/tasks_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context, listen: false).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle:
                Provider.of<TaskData>(context, listen: false).tasks[index].name,
            isChecked: Provider.of<TaskData>(context, listen: false)
                .tasks[index]
                .isDone,
            checkBoxCallBack: (checkBoxState) {
              Provider.of<TaskData>(context, listen: false)
                  .tasks[index]
                  .toggleDone();
            });
      },
    );
  }
}
