import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Webview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
          bottomNavigationBar:
              FloatingActionButton(onPressed: () => Navigator.pop(context)),
          url: 'https:\\www.google.com'),
    );
  }
}
