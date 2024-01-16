import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Buy milk',
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: TaskCheckBox(
          checkBox: isChecked,
          checkBoxCallBack: checkBoxCallBack,
        ));
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBox;
  final void Function(bool?)? checkBoxCallBack;
  const TaskCheckBox(
      {super.key, required this.checkBox, required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueAccent,
      value: checkBox,
      onChanged: checkBoxCallBack,
      // (value) {

      //   // setState(() {
      //   //   isChecked = !isChecked;
      //   // });
      // },
    );
  }
}
