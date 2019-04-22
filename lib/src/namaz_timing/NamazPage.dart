import 'package:flutter/material.dart';

class Namaz extends StatefulWidget {
  @override
  _NamazState createState() => _NamazState();
}

class _NamazState extends State<Namaz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Namaz"),
      ),
      body: Center(
        child: Text("Namaz"),
      ),
    );
  }
}
