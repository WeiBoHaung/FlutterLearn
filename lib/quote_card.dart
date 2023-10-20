import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote testWord;
  final Function delete;
  const QuoteCard({Key? key, required this.testWord, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              testWord.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              testWord.author,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 8.0,
            ),
            ElevatedButton.icon(
                onPressed: delete(),
                icon: Icon(Icons.delete),
                label: Text('delete quote'))
          ],
        ),
      ),
    );
  }
}

