import 'package:flutter/material.dart';
import 'package:flutter_quran/src/verses/VersesPage.dart';
import 'package:flutter_quran/src/quran/bloc/QuranBloc.dart';
import 'package:flutter_quran/src/quran/model/Chapters.dart';
import 'package:flutter_quran/src/quran/search_delegate/SearchBar.dart';

class Quran extends StatefulWidget {
  @override
  _QuranState createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  final _bloc = HomePagebloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _bloc.output,
        initialData: List<Chapters>(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Chapters>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Container(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: Text("Quran"),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      showSearch(
                          context: context, delegate: SearchBar(snapshot.data));
                    })
              ],
            ),
            body: ListView(
              children: snapshot.data.map(_buildItem).toList(),
            ),
          );
        });
  }

  Widget _buildItem(Chapters chap) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.5)))),
          child: ListTile(
            title: Text('${chap.name_simple}'),
            subtitle: Text('${chap.revelation_place}'),
            trailing: Text(
              '${chap.name_arabic}',
            ),
            leading: Text('${chap.chapter_number}'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Verses(
                            id: chap.id,
                            name: chap.name_simple,
                          )));
            },
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
