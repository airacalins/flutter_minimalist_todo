import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:minimalist_todo/models/task/task.dart';
import 'package:minimalist_todo/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Task> _tasks = [
    Task(
      id: '1',
      name: 'Learn C#',
      date: DateTime.now(),
      isDone: false,
    ),
    Task(
      id: '1',
      name: 'Learn React',
      date: DateTime.now(),
      isDone: true,
    ),
    Task(
      id: '1',
      name: 'Reducer',
      date: DateTime.now(),
      isDone: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Minimalist Todo'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(RouteManager.createTodoScreen),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: _tasks.length,
          itemBuilder: ((context, index) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                ),
                elevation: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        _tasks[index].isDone ? Icons.check_circle : Icons.circle_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 20,
                      ),
                    ),
                    Text(_tasks[index].name),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
