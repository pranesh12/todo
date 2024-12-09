import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/todo.dart';

class Todo extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: "Go to shop"),
    Task(title: "Walk for 30 miniute"),
    Task(title: "Do your work"),
  ];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void toggleTask(int idx) {
    _tasks[idx].isCompleted = !_tasks[idx].isCompleted;
    notifyListeners();
  }

  void removeTask(int idx) {
    _tasks.removeAt(idx);
    notifyListeners();
  }
}
