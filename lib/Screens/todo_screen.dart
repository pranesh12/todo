import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final todo = Provider.of<Todo>(context);

    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text("To do app"),
        Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: _titleController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Plase give input";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(labelText: "Title"),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final finalTask = _titleController.text.trim();
                        if (finalTask.isNotEmpty) {
                          todo.addTask(finalTask);
                          _titleController.clear();
                        }
                      }
                    },
                    child: const Text("Add Task"))
              ],
            )),
        Expanded(
          child: ListView.builder(
              itemCount: todo.tasks.length,
              itemBuilder: (context, idx) {
                return ListTile(
                    title: Text(
                      todo.tasks[idx].title,
                      style: todo.tasks[idx].isCompleted
                          ? const TextStyle(
                              decoration: TextDecoration.lineThrough)
                          : const TextStyle(decoration: TextDecoration.none),
                    ),
                    leading: Checkbox(
                        value: todo.tasks[idx].isCompleted,
                        onChanged: (value) {
                          todo.toggleTask(idx);
                        }),
                    trailing: IconButton(
                      onPressed: () {
                        todo.removeTask(idx);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ));
              }),
        ),
      ],
    ));
  }
}
