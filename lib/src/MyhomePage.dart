import 'package:flutter/material.dart';
import 'package:flutter_quran/src/hadith/HadithPage.dart';
import 'package:flutter_quran/src/namaz_timing/NamazPage.dart';
import 'package:flutter_quran/src/quran/QuranPage.dart';
import 'offline_quran/chapters/Chapters_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Image.asset('assests/images/leading.png'), onPressed: null),
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(25),
              elevation: 20,
              borderOnForeground: true,
              color: Color(0xffecf0f1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChapterPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Offline Holy Quran",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(20),
                        iconSize: 60,
                        icon: Image.asset('assests/images/quran.png'),
                        onPressed: null,
                        alignment: Alignment.center,
                      ),
                      Text(
                        "قران مجید",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(25),
              elevation: 20,
              borderOnForeground: true,
              color: Color(0xffecf0f1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quran()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Holy Quran",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(20),
                        iconSize: 60,
                        icon: Image.asset('assests/images/quran.png'),
                        onPressed: null,
                        alignment: Alignment.center,
                      ),
                      Text(
                        "قران مجید",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(25),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 20,
              color: Color(0xffecf0f1),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HadithPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Hadith",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(20),
                        iconSize: 60,
                        icon: Image.asset('assests/images/salat.png'),
                        onPressed: null,
                        alignment: Alignment.center,
                      ),
                      Text(
                        "حدیث",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(25),
              elevation: 20,
              color: Color(0xffecf0f1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Namaz()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Namaz Timing",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(20),
                        iconSize: 60,
                        icon: Image.asset('assests/images/namaz.png'),
                        onPressed: null,
                        alignment: Alignment.center,
                      ),
                      Text(
                        "ناماز",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 6,
        child: Icon(Icons.search),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
