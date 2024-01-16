import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Buy milk'),
      trailing: Checkbox(
        value: false,
        onChanged: (value) => true,
      ),
    );
  }
}