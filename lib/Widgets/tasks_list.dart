// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todoey/Widgets/tasks_tile.dart';
import 'package:todoey/models/task_model.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name, isChecked: widget.tasks[index].isDone,
            checkBoxCallBack: (checkBoxState){
              setState(() {
                widget.tasks[index].toggleDone();
              });
            }
            );

      },
    );
  }
}
