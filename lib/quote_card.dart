import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  QuoteCard({
    this.quote,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.teal,
      elevation: 15.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  quote.author,
                  style: TextStyle(fontSize: 15.0, color: Colors.grey[600]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
