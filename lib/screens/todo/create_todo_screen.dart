import 'package:flutter/material.dart';
import 'package:minimalist_todo/models/task/task.dart';
import 'package:minimalist_todo/widgets/form_fields/form_text_field.dart';

class CreateTodoScreen extends StatelessWidget {
  CreateTodoScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  var _task = Task(
    id: '',
    name: '',
    date: DateTime.now(),
    isDone: false,
  );

  String? _onTaskNameValidator(value) {
    if (value.isEmpty) {
      return 'Please type your task.';
    }
    return null;
  }

  void _onTaskNameSaved(value) {
    _task = Task(
      id: _task.id,
      name: value,
      date: _task.date,
      isDone: _task.isDone,
    );
  }

  void _onCreateNewTask() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Todo'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  FormTextField(
                    hintText: 'What do you want to do?',
                    labelText: 'Task',
                    prefixIcon: Icon(
                      Icons.drive_file_rename_outline,
                      color: primaryColor,
                    ),
                    onFieldSubmitted: _onCreateNewTask,
                    onSaved: (value) => _onTaskNameSaved(value),
                    validator: (value) => _onTaskNameValidator(value),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () => _onCreateNewTask,
                      child: const Text('ADD'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
