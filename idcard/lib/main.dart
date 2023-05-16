import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: HackoId(),
));

class HackoId extends StatefulWidget {
  const HackoId({Key? key}) : super(key: key);

  @override
  State<HackoId> createState() => _HackoIdState();
}

class _HackoIdState extends State<HackoId> {

  int hacklevel = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Hello Hacko"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            hacklevel++;
          });
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/ninja.jpeg"),
                radius: 40.0,
              ),
            ),
            // Divider(
            //   height: 60.0,
            //   thickness: 0.5,
            //   color: Colors.orange[800],
            // ),
            Container(
              height: 0.1, // Adjust the height to make the line thinner or thicker
              color: Colors.grey[800],
              margin: const EdgeInsets.symmetric(vertical: 20.0),
            ),
            const Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height:5.0),
            const Text(
              "Kumar Shubham",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              "Current Hack Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height:5.0),
            Text(
              '$hacklevel',
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.orange,
                ),
                SizedBox(width:10.0),
                Text(
                  "hackaholic@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}






