import 'package:flutter/foundation.dart';
import 'package:todoey/models/task_model.dart';

class TaskData extends ChangeNotifier {
  
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
    Task(name: 'buy pc'),
  ];
}