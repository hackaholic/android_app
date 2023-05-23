import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote("To live is the rarest thing in the world. Most people exist, that is all.", "Oliver Wild"),
    Quote("That it will never come again is what makes life so sweet.", "Emily Dickinson"),
    Quote("It is never too late to be what you might have been.", "George Eliot")
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(
        quote: quote,
        delete: () {
          setState(() {
            quotes.remove(quote);
          });
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuoteList'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
    )
    );
  }
}





