// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?)? checkBoxCallBack;
  final Function() longPressCallBack;

  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxCallBack,
    required this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, value, child) {
      return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.blueAccent,
          value: isChecked,
          onChanged: checkBoxCallBack,
        ),
        onLongPress: longPressCallBack,
      );
    });
  }
}
