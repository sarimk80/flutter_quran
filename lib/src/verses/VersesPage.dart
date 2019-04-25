import 'package:flutter/material.dart';
import 'package:flutter_quran/src/verses/ArabicPage.dart';
import 'package:flutter_quran/src/verses/EnglishPage.dart';
import 'package:flutter_quran/src/verses/UrduPage.dart';

class Verses extends StatefulWidget {
  final int id;
  final String name;

  Verses({Key key, this.id, this.name}) : super(key: key);

  @override
  _VersesState createState() => _VersesState();
}

class _VersesState extends State<Verses> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: Text(widget.name),
              bottom: TabBar(tabs: [
                Tab(
                  text: "Arabic",
                ),
                Tab(
                  text: "Urdu",
                ),
                Tab(
                  text: "English",
                )
              ]),
            ),
            body: TabBarView(children: [
              ArabicPage(
                id: widget.id,
              ),
              UrduPage(
                id: widget.id,
              ),
              EnglishPage(
                id: widget.id,
              ),
            ]),
          )),
    );
  }
}
