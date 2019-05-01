import 'package:flutter/material.dart';
import 'package:flutter_quran/src/offline_quran/bloc/Chapter_bloc.dart';
import 'package:flutter_quran/src/quran/model/Chapters.dart';
import 'package:flutter_quran/src/offline_quran/Quran_page.dart';

class ChapterPage extends StatefulWidget {
  @override
  _ChapterPageState createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  ChapterBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = ChapterBloc(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Offline Quran"),
        ),
        body: StreamBuilder(
            stream: _bloc.output,
            builder:
                (BuildContext context, AsyncSnapshot<List<Chapters>> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView(
                    children: snapshot.data.map(_buildItem).toList());
              }
            }),
        floatingActionButton: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () {},
          child: Text(
            "Resume",
            style: TextStyle(color: Colors.black),
          ),
          color: Color(0xff12E4D6),
        ));
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
                      builder: (context) => Quran_page(
                            id: chap.id,
                            name: chap.name_arabic,
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
