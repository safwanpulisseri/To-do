import 'package:flutter/material.dart';
import 'package:todo/screens/add_page.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Todo App',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.green,
          onPressed: () {
            navigateToAddPage();
          },
          label: Text('Add Todo')),
    );
  }

  void navigateToAddPage() {
    final route = MaterialPageRoute(
      builder: (context) => AddTodoPage(),
    );
    Navigator.push(context, route);
  }
}
