import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
      home: quoteList(),
    ));

class quoteList extends StatefulWidget {
  const quoteList({Key? key}) : super(key: key);

  @override
  _quoteListState createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {
  List<Quotes> quotes = [
    Quotes(author: 'JENAL', text: 'percobaan 1'),
    Quotes(author: 'JENAL', text: 'percobaan 2'),
    Quotes(author: 'JENAL', text: 'percobaan 3'),
    Quotes(author: 'JENAL', text: 'percobaan 4'),
  ];

  Widget quotetemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.shade800,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade900,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => quotetemplate(quote)).toList(),
      ),
    );
  }
}
