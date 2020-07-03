import 'package:flutter/material.dart';
import 'package:quotes/webview.dart';

class Motivation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
      ),
      body: Webview(url: 'https:\\www.google.com'),
    );
  }
}
