import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PastaRooma'),
      ),
      body: Container(
        child: Center(
          child: Text("Hello PastaRooma!"),
        ),
      ),
    );
  }
}
