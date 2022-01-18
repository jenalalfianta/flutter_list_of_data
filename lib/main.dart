import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: quoteList(),
    ));

class quoteList extends StatefulWidget {
  const quoteList({Key? key}) : super(key: key);

  @override
  _quoteListState createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {
  List<String> quotes = [
    'Allah hadir di antara seseorang dan hatinya - Quran 8:24',
    'Karena sesungguhnya bersama kesulitan ada kemudahan - Quran 94:5',
    'Allah tidak membebani suatu jiwa melebihi apa yang dapat ditanggungnya - Quran 2:286',
    'Maka janganlah putus asa, jangan pula putus asa, karena kamu lebih unggul jika kamu beriman - QS. Al-Imran 3:139'
  ];

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
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
