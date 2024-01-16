// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final String name;
  bool isDone;

  Task({
    required this.name,
    this.isDone = false,
  });

  void toggleDone(){
    isDone = !isDone;
  }
}
