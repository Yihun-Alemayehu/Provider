// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?)? checkBoxCallBack;

  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxCallBack,
  });

  @override
  Widget build(BuildContext context) {
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
        // onChanged: (value) => false,
        onChanged: checkBoxCallBack,
        // (value) {
          
        //   // setState(() {
        //   //   isChecked = !isChecked;
        //   // });
        // },
      ),);
  }
}
