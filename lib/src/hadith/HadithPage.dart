import 'package:flutter/material.dart';

class Hadith extends StatefulWidget {
  @override
  _HadithState createState() => _HadithState();
}

class _HadithState extends State<Hadith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hadith"),
      ),
      body: Center(
        child: Text("Hadith"),
      ),
    );
  }
}
