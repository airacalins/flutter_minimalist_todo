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
        title: const Text('Minimalist App'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed(RouteManager.createTodoScreen),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          separatorBuilder: (context, index) => Container(
            height: 1,
            color: Colors.grey,
          ),
          itemCount: _tasks.length,
          itemBuilder: ((context, index) => Container(
                child: ListTile(
                  title: Text(_tasks[index].name),
                  subtitle: Text(
                    DateFormat('MMM dd, yyyy').format(_tasks[index].date),
                    style: Theme.of(context).textTheme.caption,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      _tasks[index].isDone ? Icons.check_circle : Icons.circle_outlined,
                      color: Colors.black87,
                      size: 20,
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
