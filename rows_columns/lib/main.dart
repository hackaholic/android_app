import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Hackaholic"),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                focusColor: Colors.orange.withOpacity(0.3),
                icon:  const Icon(Icons.email),
                onPressed: (){},
                tooltip: "Send Email",
                iconSize: 50,
                color: Colors.amber,
              ),
              const Text("Email"),
            ],
          ),
          TextButton(
            onPressed: () {print("I am pressed");},
            child: const Text("Click me"),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(20),
              child: const Text("Container 2"),
            ),
          ),
        ],
      )
    );
  }
}
