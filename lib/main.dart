import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: ListOfData(),
  ));
}

class ListOfData extends StatefulWidget {
  const ListOfData({super.key});

  @override
  State<ListOfData> createState() => _ListOfDataState();
}

class _ListOfDataState extends State<ListOfData> {
  List<Quote> testWords = [
    Quote("主要只eck按鍵", "檢查的連接埠就能進行檢查"),
    Quote("主要只eck按鍵", "檢查的連接埠就能進行檢查"),
    Quote("主要只eck按鍵", "檢查的連接埠就能進行檢查"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListOfData"),
        centerTitle: true,
      ),
      body: Column(
        children: testWords
            .map((testWord) => QuoteCard(
                testWord: testWord,
                delete: () {
                  setState(() {
                    testWords.remove(testWord);
                  });
                }))
            .toList(),
      ),
    );
  }
}
