import 'package:flutter/material.dart';
import 'package:todoey/models/task_model.dart';

typedef TaskAddedCallBack = void Function(List<Task> updatedTasks);
class AddNewTask extends StatefulWidget {
  final TaskAddedCallBack onTaskAdded;
  final List<Task> tasks;
  const AddNewTask({super.key, required this.tasks, required this.onTaskAdded});

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'add Task',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controller,
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blueAccent,
              minWidth: MediaQuery.of(context).size.width,
              // style: TextButton.styleFrom(
              //   backgroundColor: Colors.blueAccent,
              // ),
              onPressed: () {
                setState(() {
                  widget.tasks.add(Task(name: _controller.text));
                  widget.onTaskAdded(widget.tasks);
                });
                Navigator.of(context).pop();
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
