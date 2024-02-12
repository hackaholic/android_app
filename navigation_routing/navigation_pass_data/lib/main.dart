import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pass data Upon routing',
      theme: ThemeData.dark(),
      home: const MyToDoList(),
    );
  }
}

class MyToDoList extends StatelessWidget {
  const MyToDoList({super.key});

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text('ToDo $index'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ToDoScreen(data: index)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemCount: 30,
        itemBuilder: _itemBuilder,
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class ToDoScreen extends StatelessWidget {
  final int data;
  const ToDoScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo List $data'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(' I am ToDo List $data: This needs to be done'),
      ),
    );
  }
}
