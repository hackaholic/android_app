import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid List',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Grid List'),
            backgroundColor: Colors.deepPurple,
          ),
          body: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: List.generate(30, (index) {
              return Center(
                child: Text('Item $index'),
              );
            }),
          )),
    );
  }
}
