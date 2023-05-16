import 'package:flutter/material.dart';

/*
  runApp() is a method in Flutter that takes a Widget as its argument and
  starts the Flutter application with the given Widget as the root of the
  widget tree.

 */
void main() => runApp(MaterialApp(
  home: Home()
));

// void main() => runApp(MaterialApp(
//   home: Scaffold(
//     appBar: AppBar(
//       title: const Text('Hello Hackaholic'),
//       centerTitle: true,
//       backgroundColor: Colors.red.shade600,  // press ctrl+q list colors
//     ),
//     body: Center(
//       child: Text(
//         "Hello Coco",
//         style: TextStyle(
//           fontSize: 20.0,
//           fontStyle: FontStyle.italic,
//           fontWeight: FontWeight.bold,
//           color: Colors.cyan[600],
//         ),
//       ),
//     ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: () {print("on pressed is pressed");},
//       backgroundColor: Colors.green[600],
//       child: const Text("Click"),
//     ),
//   ),
// ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Hackaholic'),
        centerTitle: true,
        backgroundColor: Colors.red.shade600,  // press ctrl+q list colors
      ),
      body: const Center(
        // child: Text(
        //   "Hello Coco",
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontStyle: FontStyle.italic,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.cyan[600],
        //   ),
        // ), // Text Widget

        // child: Image(
        //   image: NetworkImage("https://d.newsweek.com/en/full/2096815/astronaut-spaceman-do-spacewalk.webp?w=737&f=36e52af42c45bb6d950eb43b5a61e1cd"),
        // ),   // image Widget

        child: Image(
          image: AssetImage("images/space-1.jpg"),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {print("on pressed is pressed");},
        backgroundColor: Colors.green[600],
        child: const Text("Click"),
      ),
    );
  }
}


