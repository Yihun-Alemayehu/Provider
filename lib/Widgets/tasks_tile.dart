// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  late String tileTitle;
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
          tileTitle,
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
