import 'package:flutter/material.dart';

import 'package:quotes/quote_card.dart';
import 'package:quotes/quote_list.dart';
import 'package:quotes/webview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SingleChildScrollView(
          child: Column(
            children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Webview())),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Quotes'),
              SizedBox(
                width: 1.0,
              ),
              Icon(Icons.add_circle_outline)
            ],
          )),
    );
  }
}
