import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Gesture Demo'),
        ),
        body: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('I am Snkackbar'),
              duration: Duration(seconds: 1),
            ));
          },
          child: Center(
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(200, 216, 53, 58),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(child: Text('Tap me')),
            ),
          ),
        ));
  }
}
