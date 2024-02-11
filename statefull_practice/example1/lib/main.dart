import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'The parent widget manages the widget’s state',
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _toggle = false;

  void _handleToggle(bool value) {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TapBox(toggle: _toggle, onToggle: _handleToggle);
  }
}

class TapBox extends StatelessWidget {
  final bool toggle;
  final void Function(bool) onToggle;
  const TapBox({super.key, required this.toggle, required this.onToggle});

  void _handleTap() {
    onToggle(!toggle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('StateFull demo')),
          backgroundColor: Colors.blue,
        ),
        body: GestureDetector(
          onTap: _handleTap,
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: toggle ? Colors.lightBlue : Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text('Hello World!'),
              ),
            ),
          ),
        ));
  }
}
