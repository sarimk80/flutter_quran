import 'package:flutter/material.dart';

class Quran extends StatefulWidget {
  @override
  _QuranState createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quran"),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Center(child: Text("Quran")),
    );
  }
}
