import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  const QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.blue,
                //backgroundColor: Colors.grey,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                //backgroundColor: Colors.grey,
              ),
            ),
            const SizedBox(height: 6.0),
            TextButton.icon(
                onPressed: delete,
                icon: const Icon(Icons.delete),
                label: const Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}