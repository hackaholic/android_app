import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'List View separated',
      home: ListViewSeparated(),
    );
  }
}

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({super.key});

  Widget _itembuilder(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 100,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 7, 90),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text('I am Container $index'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View separated'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemBuilder: _itembuilder,
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
