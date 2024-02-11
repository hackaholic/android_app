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
      title: "List View Demo",
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
        title: const Text('List View'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: const DisplayList(),
    );
  }
}

class DisplayList extends StatefulWidget {
  const DisplayList({super.key});

  @override
  State<DisplayList> createState() => _DisplayListState();
}

class _DisplayListState extends State<DisplayList> {
  bool _counter = false;

  void _toggleState() {
    setState(() => _counter = !_counter);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Phone'),
            onTap: () =>
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('I am phone'),
                ))),
        ListTile(
          leading: const Icon(Icons.map),
          title: const Text('Map'),
          onLongPress: () => ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              leading: const Icon(Icons.cake),
              content: const Text('Hello, I am Material Banner'),
              actions: [
                const TextButton(
                  onPressed: null,
                  child: Text('Press Me'),
                ),
                TextButton(
                  onPressed: _toggleState,
                  child: const Text('Dismiss Me'),
                ),
              ],
            ),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.photo_album_outlined),
          title: Text('Album'),
        ),
      ],
    );
  }
}
